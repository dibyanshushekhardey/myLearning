studenta@cloudshell:~ (qwiklabs-gcp-02-617d68e34601)$ gcloud config set compute/zone us-central1-a
Updated property [compute/zone].
studenta@cloudshell:~ (qwiklabs-studentstudent_02_0eb6estudenta@cloudshell:~ (qwiklabs-gc
p-02-617d68e34601)$ gcloud container clusters create my-cluster
WARNING: Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of 
recommended authentication methods,see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
WARNING: Currently VPC-native is not the default mode during cluster creation. In the future, this will become the default mode and ca
n be disabled using `--no-enable-ip-alias` flag. Use `--[no-]enable-ip-alias` flag to suppress this warning.
WARNING: Newly created clusters and node-pools will have node auto-upgrade enabled by default. This can be disabled using the `--no-en
able-autoupgrade` flag.
Welcome to Cloud Shell! Type "help" to get started.
Your Cloud Platform project in this session is set to qwiklabs-gcp-02-617d68e34601.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
studenta@cloudshell:~ (qwiklabs-gcp-02-617d68e34601)$ gcloud config set compute/zone us-central1-a
Updated property [compute/zone].
studenta@cloudshell:~ (qwiklabs-studentstudent_02_0eb6estudenta@cloudshell:~ (qwiklabs-gc
p-02-617d68e34601)$ gcloud container clusters create my-cluster
WARNING: Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of 
recommended authentication methods,see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
WARNING: Currently VPC-native is not the default mode during cluster creation. In the future, this will become the default mode and ca
n be disabled using `--no-enable-ip-alias` flag. Use `--[no-]enable-ip-alias` flag to suppress this warning.
WARNING: Newly created clusters and node-pools will have node auto-upgrade enabled by default. This can be disabled using the `--no-en
able-autoupgrade` flag.
WARNING: Starting with version 1.18, clusters will have shielded GKE nodes by default.
WARNING: Your Pod address range (`--cluster-ipv4-cidr`) can accommodate at most 1008node(s).
Creating cluster my-cluster in us-central1-a... Cluster is being health-checked (mas
ter is healthy)...done.
Created [https://container.googleapis.com/v1/projects/qwiklabs-gcp-02-617d68e34601/zones/us-central1-a/clusters/my-cluster].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-central1-a/my-cluster?
project=qwiklabs-gcp-02-617d68e34601
kubeconfig entry generated for my-cluster.
NAME        LOCATION       MASTER_VERSION  MASTER_IP     MACHINE_TYPE   NODE_VERSION    NUM_NODES  STATUS
my-cluster  us-central1-a  1.15.12-gke.20  35.222.92.44  n1-standard-1  1.15.12-gke.20  3          RUNNING
studenta@cloudshell:~ (qwiklabs-gcp-02-617d68e34601)$ gcloud container clusters get-credentials my-cluster
Fetching cluster endpoint and auth data.
