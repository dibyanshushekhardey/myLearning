Welcome to Cloud Shell! Type "help" to get started.
Your Cloud Platform project in this session is set to qwiklabs-gcp-00-00000.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
student0000@cloudshell:~ (qwiklabs-gcp-00-00000)$ gcloud compute instances create gcelab2 --machine-type n1-standar
d-2 --zone us-central1-c
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-00-00000/zones/us-central1-c/instances/gcelab2].
NAME     ZONE           MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP     STATUS
gcelab2  us-central1-c  n1-standard-2               10.128.0.6   104.154.84.243  RUNNING
student0000@cloudshell:~ (qwiklabs-gcp-00-00000)$ gcloud compute ssh gcelab2 --zone us-central1-c
Warning: Permanently added 'compute.4414498570191906410' (ECDSA) to the list of known hosts.
Linux gcelab2 4.19.0-10-cloud-amd64 #1 SMP Debian 4.19.132-1 (2020-07-24) x86_64
The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.
Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Creating directory '/home/student-00-00000001'.
student-00-00000001@gcelab2:~$ gcloud compute ssh gcelab2 --zone us-central1-c
WARNING: The private SSH key file for gcloud does not exist.
WARNING: The public SSH key file for gcloud does not exist.
WARNING: You do not have an SSH key for gcloud.
WARNING: SSH keygen will be executed to generate a key.
This tool needs to create the directory
[/home/student-00-00000001/.ssh] before being able to generate SSH
 keys.
Do you want to continue (Y/n)?  Y
Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/student-00-00000001/.ssh/google_compute_engine.
Your public key has been saved in /home/student-00-00000001/.ssh/google_compute_engine.pub.
The key fingerprint is:
