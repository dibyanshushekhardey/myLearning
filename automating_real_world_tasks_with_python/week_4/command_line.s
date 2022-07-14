student-00-00000000@linux-instance:~$ ls ~/
download_drive_file.sh  example_upload.py
student-00-00000000@linux-instance:~$ sudo chmod +x ~/download_drive_file.sh                                                                                        student-00-00000000@linux-instance:~$ ./download
-bash: ./download: No such file or directory
student-00-00000000@linux-instance:~$
student-00-00000000@linux-instance:~$
student-00-00000000@linux-instance:~$
student-00-00000000@linux-instance:~$
student-00-00000000@linux-instance:~$ ./download_drive_file.sh
wget: option requires an argument -- 'O'
wget: missing URL
Usage: wget [OPTION]... [URL]...

Try `wget --help' for more options.
student-00-00000000@linux-instance:~$ ./download_drive_file.sh 1LePo57dJcgzoK4uiI_48                                                                                S01Etck7w_5f supplier-data.tar.gz
--2020-08-22 14:59:14--  https://docs.google.com/uc?export=download&confirm=5nPl&id=1LeP                                                                                o57dJcgzoK4uiI_48S01Etck7w_5f
Resolving docs.google.com (docs.google.com)... 172.217.212.113, 172.217.212.100, 172.217                                                                                .212.101, ...
Connecting to docs.google.com (docs.google.com)|172.217.212.113|:443... connected.
HTTP request sent, awaiting response... 302 Moved Temporarily
Location: https://doc-00-1k-docs.googleusercontent.com/docs/securesc/lr69if1hd2g2e07tr4d                                                                                n6h166b5n0rnl/csjrdm77k0d9f8go4qs6urpbb00uv17d/1598108325000/14227514949285994461/000318                                                                                99111809801307Z/1LePo57dJcgzoK4uiI_48S01Etck7w_5f?e=download [following]
--2020-08-22 14:59:14--  https://doc-00-1k-docs.googleusercontent.com/docs/securesc/lr69                                                                                if1hd2g2e07tr4dn6h166b5n0rnl/csjrdm77k0d9f8go4qs6urpbb00uv17d/1598108325000/142275149492                                                                                85994461/00031899111809801307Z/1LePo57dJcgzoK4uiI_48S01Etck7w_5f?e=download
Resolving doc-00-1k-docs.googleusercontent.com (doc-00-1k-docs.googleusercontent.com)...                                                                                 172.217.212.132, 2607:f8b0:4001:c03::84
Connecting to doc-00-1k-docs.googleusercontent.com (doc-00-1k-docs.googleusercontent.com                                                                                )|172.217.212.132|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://docs.google.com/nonceSigner?nonce=d7aaj3t7tuf2e&continue=https://doc-0                                                                                0-1k-docs.googleusercontent.com/docs/securesc/lr69if1hd2g2e07tr4dn6h166b5n0rnl/csjrdm77k                                                                                0d9f8go4qs6urpbb00uv17d/1598108325000/14227514949285994461/00031899111809801307Z/1LePo57                                                                                dJcgzoK4uiI_48S01Etck7w_5f?e%3Ddownload&hash=pa02f9uuf4vq1h39l6annapme6bihas5 [following                                                                                ]
--2020-08-22 14:59:14--  https://docs.google.com/nonceSigner?nonce=d7aaj3t7tuf2e&continu                                                                                e=https://doc-00-1k-docs.googleusercontent.com/docs/securesc/lr69if1hd2g2e07tr4dn6h166b5                                                                                n0rnl/csjrdm77k0d9f8go4qs6urpbb00uv17d/1598108325000/14227514949285994461/00031899111809                                                                                801307Z/1LePo57dJcgzoK4uiI_48S01Etck7w_5f?e%3Ddownload&hash=pa02f9uuf4vq1h39l6annapme6bi                                                                                has5
Connecting to docs.google.com (docs.google.com)|172.217.212.113|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://doc-00-1k-docs.googleusercontent.com/docs/securesc/lr69if1hd2g2e07tr4d                                                                                n6h166b5n0rnl/csjrdm77k0d9f8go4qs6urpbb00uv17d/1598108325000/14227514949285994461/000318                                                                                99111809801307Z/1LePo57dJcgzoK4uiI_48S01Etck7w_5f?e=download&nonce=d7aaj3t7tuf2e&user=00                                                                                031899111809801307Z&hash=pat6glt8ah11ls6b2fl7h0vdt1q52rl5 [following]
--2020-08-22 14:59:14--  https://doc-00-1k-docs.googleusercontent.com/docs/securesc/lr69                                                                                if1hd2g2e07tr4dn6h166b5n0rnl/csjrdm77k0d9f8go4qs6urpbb00uv17d/1598108325000/142275149492                                                                                85994461/00031899111809801307Z/1LePo57dJcgzoK4uiI_48S01Etck7w_5f?e=download&nonce=d7aaj3                                                                                t7tuf2e&user=00031899111809801307Z&hash=pat6glt8ah11ls6b2fl7h0vdt1q52rl5
Connecting to doc-00-1k-docs.googleusercontent.com (doc-00-1k-docs.googleusercontent.com                                                                                )|172.217.212.132|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/gzip]
Saving to: ‘supplier-data.tar.gz’

supplier-data.tar.gz      [     <=>                  ]  84.55M  95.5MB/s    in 0.9s

2020-08-22 14:59:15 (95.5 MB/s) - ‘supplier-data.tar.gz’ saved [88653399]

student-00-00000000@linux-instance:~$ tar xf ~/supplier-data.tar.gz
student-00-00000000@linux-instance:~$ ls ~/supplier-data
descriptions  images
student-00-00000000@linux-instance:~$ cat ~/supplier-data/descriptions/007.txt
Mango
300 lbs
Mango contains higher levels of vitamin C than ordinary fruits. Eating mango can also re                                                                                duce cholesterol and triglycerides, and help prevent cardiovascular disease. Due to its                                                                                 high level of vitamins, regular consumption of mango play an important role in improving                                                                                 body function and moisturizing the skin.
student-00-00000000@linux-instance:~$ nano ~/changeImage.py
student-00-00000000@linux-instance:~$ sudo chmod +x ~/changeImage.py
student-00-00000000@linux-instance:~$ ./changeImage.py
student-00-00000000@linux-instance:~$ file ~/supplier-data/images/003.jpeg
/home/student-00-00000000/supplier-data/images/003.jpeg: JPEG image data, JFIF stand                                                                                ard 1.01, aspect ratio, density 1x1, segment length 16, baseline, precision 8, 600x400,                                                                                 frames 3
student-00-00000000@linux-instance:~$ cat ~/example_upload.py
#!/usr/bin/env python3
import requests

# This example shows how a file can be uploaded using
# The Python Requests module

url = "http://localhost/upload/"
with open('/usr/share/apache2/icons/icon.sheet.png', 'rb') as opened:
    r = requests.post(url, files={'file': opened})
student-00-00000000@linux-instance:~$ sudo chmod +x ~/example_upload.py
student-00-00000000@linux-instance:~$ ./example_upload.py
student-00-00000000@linux-instance:~$ nano ~/supplier_image_upload.py
student-00-00000000@linux-instance:~$ sudo chmod +x ~/supplier_image_upload.py
student-00-00000000@linux-instance:~$ ./supplier_image_upload.py
student-00-00000000@linux-instance:~$ nano ~/run.py
student-00-00000000@linux-instance:~$ sudo chmod +x ~/run.py
student-00-00000000@linux-instance:~$ ./run.py
{'description': 'Lemon is rich in vitamin C, which can improve immunity, accelerate wound healing and prevent colds. In the long r                                      un, it can lower the chance of developing cancer. Lemon juice helps reduce the burden on the digestive system and promotes the rel                                      ease of toxins from the body.', 'weight': 300, 'name': 'Lemon', 'image_name': '006.jpeg'}
http://localhost/fruits/
201
{'description': 'Grapes have up to 30% of sugar. A large amount of fruit acid in grapes helps digestion. Eating proper amount of g                                      rapes can strengthen the spleen and stomach. Grapes also contain the minerals calcium, potassium, phosphorus, iron, glucose, fruct                                      ose, protein, tartaric acid, and various vitamins, which have strong nutritional functions and improve the function of the human b                                      ody.', 'weight': 200, 'name': 'Grape', 'image_name': '004.jpeg'}
http://localhost/fruits/
201
{'description': 'Kiwifruit contains rich vitamin C, which can strengthen the immune system and supplement the nutrients consumed b                                      y the brain. Its perfect ratio of low sodium and high potassium can replenish the energy lost by working long hours.', 'weight': 2                                      50, 'name': 'Kiwifruit', 'image_name': '005.jpeg'}
http://localhost/fruits/
201
{'description': 'Avocado contains large amount of oleic acid, a type of monounsaturated fat that can replace saturated fat in the                                       diet, which is very effective in reducing cholesterol levels. Avocado is also high in fiber. Its soluble fiber can remove excess c                                      holesterol from the body, while its insoluble fiber helps keep the digestive system functioning and prevent constipation.', 'weigh                                      t': 200, 'name': 'Avocado', 'image_name': '002.jpeg'}
http://localhost/fruits/
201
{'description': 'Apple is one of the most nutritious and healthiest fruits. It is very rich in antioxidants and dietary fiber. Mod                                      erate consumption can not only increase satiety, but also help promote bowel movements. Apple also contains minerals such as calci                                      um and magnesium, which can help prevent and delay bone loss and maintain bone health. It is good for young and old.', 'weight': 5                                      00, 'name': 'Apple', 'image_name': '001.jpeg'}
http://localhost/fruits/
201
{'description': 'Strawberries are rich in carotene and vitamin A, which can alleviate night blindness, maintain the health of epit                                      helial tissues, nourish the liver, and promote body growth and development. Strawberries contains large amount of dietary fiber as                                       well, which can promote gastrointestinal motility and food digestion in the gastrointestinal tract.', 'weight': 240, 'name': 'Str                                      awberry', 'image_name': '009.jpeg'}
http://localhost/fruits/
201
{'description': 'Plums are rich in sugar, vitamins, fruit acids, amino acids and other nutrients. With high nutritional value, Plu                                      ms have outstanding health-care functions, which includes refreshing and nourishing liver, relieving depression and poisoning, and                                       clearing dampness and heat of the human body.', 'weight': 150, 'name': 'Plum', 'image_name': '008.jpeg'}
http://localhost/fruits/
201
{'description': 'Mango contains higher levels of vitamin C than ordinary fruits. Eating mango can also reduce cholesterol and trig                                      lycerides, and help prevent cardiovascular disease. Due to its high level of vitamins, regular consumption of mango play an import                                      ant role in improving body function and moisturizing the skin.', 'weight': 300, 'name': 'Mango', 'image_name': '007.jpeg'}
http://localhost/fruits/
201
{'description': 'Blackberries have high nutritional value and are excellent fruit for health. It’s rich in nutrients, various amin                                      o acids and trace elements necessary for the human body. They are good at promoting blood coagulation, delaying aging, improving i                                      mmunity and reducing blood pressure and blood lipids. Blackberries can be consumed directly as fruit or made into jam and fruit wi                                      ne.', 'weight': 150, 'name': 'Blackberry', 'image_name': '003.jpeg'}
http://localhost/fruits/
201
{'description': 'Watermelon is good for relieving heat, eliminating annoyance and quenching thirst. It contains a lot of water, wh                                      ich is good for relieving the symptoms of acute fever immediately. The sugar and salt contained in watermelon can diuretic and eli                                      minate kidney inflammation. Watermelon also contains substances that can lower blood pressure.', 'weight': 500, 'name': 'Watermelo                                      n', 'image_name': '010.jpeg'}
http://localhost/fruits/
201
student-00-00000000@linux-instance:~$ nano ~/reports.py
student-00-00000000@linux-instance:~$ nano ~/report_email.py
student-00-00000000@linux-instance:~$ nano ~/emails.py
student-00-00000000@linux-instance:~$ nano ~/report_email.py
student-00-00000000@linux-instance:~$ sudo chmod +x ~/report_email.py
student-00-00000000@linux-instance:~$ ./report_email.py
Lemon 300 lbs
['name: Lemon']
['weight: 300 lbs']
Grape 200 lbs
['name: Lemon', 'name: Grape']
['weight: 300 lbs', 'weight: 200 lbs']
Kiwifruit 250 lbs
['name: Lemon', 'name: Grape', 'name: Kiwifruit']
['weight: 300 lbs', 'weight: 200 lbs', 'weight: 250 lbs']
Avocado 200 lbs
['name: Lemon', 'name: Grape', 'name: Kiwifruit', 'name: Avocado']
['weight: 300 lbs', 'weight: 200 lbs', 'weight: 250 lbs', 'weight: 200 lbs']
Apple 500 lbs
['name: Lemon', 'name: Grape', 'name: Kiwifruit', 'name: Avocado', 'name: Apple']
['weight: 300 lbs', 'weight: 200 lbs', 'weight: 250 lbs', 'weight: 200 lbs', 'weight: 500 lbs']
Strawberry 240 lbs
['name: Lemon', 'name: Grape', 'name: Kiwifruit', 'name: Avocado', 'name: Apple', 'name: Strawberry']
['weight: 300 lbs', 'weight: 200 lbs', 'weight: 250 lbs', 'weight: 200 lbs', 'weight: 500 lbs', 'weight: 240 lbs']
Plum 150 lbs
['name: Lemon', 'name: Grape', 'name: Kiwifruit', 'name: Avocado', 'name: Apple', 'name: Strawberry', 'name: Plum']
['weight: 300 lbs', 'weight: 200 lbs', 'weight: 250 lbs', 'weight: 200 lbs', 'weight: 500 lbs', 'weight: 240 lbs', 'weight: 150 lb                                      s']
Mango 300 lbs
['name: Lemon', 'name: Grape', 'name: Kiwifruit', 'name: Avocado', 'name: Apple', 'name: Strawberry', 'name: Plum', 'name: Mango']
['weight: 300 lbs', 'weight: 200 lbs', 'weight: 250 lbs', 'weight: 200 lbs', 'weight: 500 lbs', 'weight: 240 lbs', 'weight: 150 lb                                      s', 'weight: 300 lbs']
Blackberry 150 lbs
['name: Lemon', 'name: Grape', 'name: Kiwifruit', 'name: Avocado', 'name: Apple', 'name: Strawberry', 'name: Plum', 'name: Mango',                                       'name: Blackberry']
['weight: 300 lbs', 'weight: 200 lbs', 'weight: 250 lbs', 'weight: 200 lbs', 'weight: 500 lbs', 'weight: 240 lbs', 'weight: 150 lb                                      s', 'weight: 300 lbs', 'weight: 150 lbs']
Watermelon 500 lbs
['name: Lemon', 'name: Grape', 'name: Kiwifruit', 'name: Avocado', 'name: Apple', 'name: Strawberry', 'name: Plum', 'name: Mango',                                       'name: Blackberry', 'name: Watermelon']
['weight: 300 lbs', 'weight: 200 lbs', 'weight: 250 lbs', 'weight: 200 lbs', 'weight: 500 lbs', 'weight: 240 lbs', 'weight: 150 lb                                      s', 'weight: 300 lbs', 'weight: 150 lbs', 'weight: 500 lbs']
student-00-00000000@linux-instance:~$ nano ~/health_check.py
You have mail in /var/mail/student-00-00000000
student-00-00000000@linux-instance:~$ sudo chmod +x ~/health_check.py
student-00-00000000@linux-instance:~$ ./health_check.py
student-00-00000000@linux-instance:~$ sudo apt install stress
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following NEW packages will be installed:
  stress
0 upgraded, 1 newly installed, 0 to remove and 7 not upgraded.
Need to get 21.3 kB of archives.
After this operation, 50.2 kB of additional disk space will be used.
Get:1 http://deb.debian.org/debian stretch/main amd64 stress amd64 1.0.4-2 [21.3 kB]
Fetched 21.3 kB in 0s (406 kB/s)
Selecting previously unselected package stress.
(Reading database ... 54149 files and directories currently installed.)
Preparing to unpack .../stress_1.0.4-2_amd64.deb ...
Unpacking stress (1.0.4-2) ...
Processing triggers for man-db (2.7.6.1-2) ...
Setting up stress (1.0.4-2) ...
student-00-00000000@linux-instance:~$ stress --cpu 8
stress: info: [25627] dispatching hogs: 8 cpu, 0 io, 0 vm, 0 hdd
