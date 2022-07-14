NAME              HOST  PORT  REQUEST_PATH
http-basic-check        80    /
student_01_4248aa50d1e7@cloudshell:~ (qwiklabs-gcp-01-c0c82d927996)$ gcloud compute instance-groups managed \
>        set-named-ports nginx-group \
>        --named-ports http:80
Updated [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-c0c82d927996/zones/us-central1-a/instanceGroups/nginx-group].
student_01_4248aa50d1e7@cloudshell:~ (qwiklabs-gcp-01-c0c82d927996)$ gcloud compute backend-services create nginx-backend \
>       --protocol HTTP --http-health-checks http-basic-check --global
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-c0c82d927996/global/backendServices/nginx-backend].
NAME           BACKENDS  PROTOCOL
nginx-backend            HTTP
student_01_4248aa50d1e7@cloudshell:~ (qwiklabs-gcp-01-c0c82d927996)$ gcloud compute backend-services add-backend nginx-backend \
>     --instance-group nginx-group \
>     --instance-group-zone us-central1-a \
>     --global
Updated [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-c0c82d927996/global/backendServices/nginx-backend].
student_01_4248aa50d1e7@cloudshell:~ (qwiklabs-gcp-01-c0c82d927996)$ gcloud compute url-maps create web-map \
>     --default-service nginx-backend
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-c0c82d927996/global/urlMaps/web-map].
NAME     DEFAULT_SERVICE
web-map  backendServices/nginx-backend
student_01_4248aa50d1e7@cloudshell:~ (qwiklabs-gcp-01-c0c82d927996)$ gcloud compute target-http-proxies create http-lb-proxy \
>     --url-map web-map
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-c0c82d927996/global/targetHttpProxies/http-lb-proxy].
NAME           URL_MAP
http-lb-proxy  web-map
student_01_4248aa50d1e7@cloudshell:~ (qwiklabs-gcp-01-c0c82d927996)$ gcloud compute forwarding-rules create http-content-rule \
>         --global \
>         --target-http-proxy http-lb-proxy \
>         --ports 80
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-c0c82d927996/global/forwardingRules/http-content-rule].
student_01_4248aa50d1e7@cloudshell:~ (qwiklabs-gcp-01-c0c82d927996)$ gcloud compute forwarding-rules list
NAME               REGION       IP_ADDRESS      IP_PROTOCOL  TARGET
http-content-rule               130.211.39.214  TCP          http-lb-proxy
nginx-lb           us-central1  34.72.221.134   TCP          us-central1/targetPools/nginx-pool