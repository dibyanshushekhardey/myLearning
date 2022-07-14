// command to config the zone to us-east1-b
gcloud config set compute/zone us-east1-b


//create cluster
//there may be some warning ignore them
gcloud container clusters create my-cluster


//get credential (authentication) Credential
gcloud container clusters get-credentials my-cluster


//create and expose deployment of the cluster
kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:2.0  
kubectl expose deployment hello-server --type=LoadBalancer --port 8080


// set up nginx web server
cat << EOF > startup.sh
#! /bin/bash
apt-get update
apt-get install -y nginx
service nginx start
sed -i -- 's/nginx/Google Cloud Platform - '"\$HOSTNAME"'/' /var/www/html/index.nginx-debian.html
EOF


//create instance template
gcloud compute instance-templates create web-server-template \
          --metadata-from-file startup-script=startup.sh \
          --network nucleus-vpc \
          --machine-type g1-small \
          --region us-east1


//Create a managed instance group using the instance template
gcoud compute instance-groups managed create web-server-group \
          --base-instance-name web-server \
          --size 2 \
          --template web-server-template \
          --region us-east1


//Create a firewall rule to allow traffic (80/tcp)
gcloud compute firewall-rules create web-server-firewall \
          --allow tcp:80 \
          --network nucleus-vpc
          

//Create a health check
gcloud compute http-health-checks create http-basic-check
gcloud compute instance-groups managed \
          set-named-ports web-server-group \
          --named-ports http:80 \
          --region us-east1


//Create a backend service and attach the manged instance group
gcloud compute backend-services create web-server-backend \
          --protocol HTTP \
          --http-health-checks http-basic-check \
          --global
gcloud compute backend-services add-backend web-server-backend \
          --instance-group web-server-group \
          --instance-group-region us-east1 \
          --global


//Create a URL map and target HTTP proxy to route requests to your URL map
gcloud compute url-maps create web-server-map \
          --default-service web-server-backend
gcloud compute target-http-proxies create http-lb-proxy \
          --url-map web-server-map


//eate a forwarding rule
gcloud compute forwarding-rules create http-content-rule \
        --global \
        --target-http-proxy http-lb-proxy \
        --ports 80
gcloud compute forwarding-rules list
