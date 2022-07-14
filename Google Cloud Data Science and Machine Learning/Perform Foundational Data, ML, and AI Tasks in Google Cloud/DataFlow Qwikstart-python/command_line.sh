List of commands necessary for this lab

gcloud auth list

gcloud config list project

// Create bucket, give it a unique name(not your id as the bucket is public)
//Location type - Region
// Location - us-central1
//create


//install pip and cloud dataflow SDK

// check python version
python3 --version

//install pip
pip3 --version

//check pip version
sudo ipip3 install -U pip

//If you do not have virtualenv version 13.1.0 or newer, install it by running the following command
sudo pip3 install --upgrade virtualenv

//create a virtual environment
virtualenv -p python3.7 env

//activate virtual environment
source env/bin/activate

// install the latest version of Apache Beam for Python
// ignore some warnings
pip install apache-beam[gcp]

//run wordcount.py
python -m apache_beam.examples.wordcount --output OUTPUT_FILE

// list the files
ls

copy the name of the OUTPUT_FILE and use the cat command to show it in shell
cat <file_name>

// run the example pipeline remotely
// set the bucket environment variable
BUCKET=gs://<bucket name provided earlier>

// run the wordcount.py remotely
python -m apache_beam.examples.wordcount --project $DEVSHELL_PROJECT_ID \
  --runner DataflowRunner \
  --staging_location $BUCKET/staging \
  --temp_location $BUCKET/temp \
  --output $BUCKET/results/output \
  --region us-central1

// wait for this output message - JOB_MESSAGE_DETAILED: Workers have started successfully.

// check that the job succeeded
//Open the navigation menu and select Dataflow from the list of services:
//You should see your wordcount job with a status of Running at first.
//Click on the name to watch the process. When all the boxes are checked off, you can continue watching the logs in Cloud Shell.
//The process is complete when the status is Succeeded
