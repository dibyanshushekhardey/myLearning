Welcome to Cloud Shell! Type "help" to get started.
Your Cloud Platform project in this session is set to qwiklabs-gcp-01-0000.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
student-00:~ (qwiklabs-gcp-01-0000)$ gcloud compute project-info describe --project qwiklabs-gcp-01-2ee
211c20257
commonInstanceMetadata:
  fingerprint: K0aX6fWm6DM=
  items:
  - key: ssh-keys
    value: student-01-001:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGO2dDxv14egt46lIrVHqJoD3Jw3SBkjHgC9mza2+poSHmduSZ+oo4q247V+y0
9oyooRcLaQZRXU0a6UKOkBnsov8t7DhZrJE7hDfo51Z6B6MMaGRQYB+IZAZ6UtLcC2d1Y9X0Wc2ASdhrtFWXGUekkDoBsf7yKKS3C6752XHVInF840acoqKqVtTLcyKUfL0eu89
7pliZhYsZHyQ1UuzQH0qcVeRWVve8MxsQqbX08qybhwAwEFPtZ40QO9gJH9Q0EBHw5WX6giOSU6Zf16wCVt6kJm6I219eLkt5EGyviJufJ/5IOxoiKrNKeApqHkz1sxNcSKdzPm
uWrh/7i/N7
      student-01-001@qwiklabs.net
  - key: enable-oslogin
    value: 'true'
  - key: google-compute-default-zone
    value: us-central1-a
  - key: google-compute-default-region
    value: us-central1
  kind: compute#metadata
creationTimestamp: '2020-09-25T09:01:29.644-07:00'
defaultNetworkTier: PREMIUM
defaultServiceAccount: 125536979617-compute@developer.gserviceaccount.com
id: '3564879602964998838'
kind: compute#project
name: qwiklabs-gcp-01-0000
quotas:
- limit: 1000.0
  metric: SNAPSHOTS
  usage: 0.0
- limit: 5.0
  metric: NETWORKS
  usage: 1.0
- limit: 100.0
  metric: FIREWALLS
