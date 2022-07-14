student-00-d32ed26e9829@linux-instance:~$ cd ~/food-scripts
student-00-d32ed26e9829@linux-instance:~/food-scripts$ ls
favorite_foods.log  food_count.py  food_question.py
student-00-d32ed26e9829@linux-instance:~/food-scripts$ cat favorite_foods.log
pie
burgers
pizza
pie
tacos
fried chicken
spaghetti
rice
cake
broccoli
cake
cereal
salad
avocados
burgers
rice
rice
salad
ice cream
avocados
pie
pizza
fish
fried chicken
rice
strawberries
broccoli
bananas
salad
pizza
tacos
spaghetti
burgers
spaghetti
spaghetti
watermelon
avocados
strawberries
avocados
burgers
spaghetti
salad
pie
fried chicken
rice
fish
fried chicken
ice cream
fried chicken
pizza
salad
avocados
rice
pie
pie
tacos
fish
rice
salad
bananas
burgers
salad
rice
tacos
fried chicken
pizza
bananas
rice
bananas
rice
cereal
pizza
ice cream
strawberries
cereal
fried chicken
rice
burgers
bananas
broccoli
rice
burgers
avocados
tacos
fish
broccoli
fried chicken
pizza
burgers
cake
tacos
pie
burgers
ice cream
broccoli
watermelon
fried chicken
pie
burgers
ice cream
student-00-d32ed26e9829@linux-instance:~/food-scripts$ cat food_count.py
#!/usr/bin/env python3

# Dictionary to keep track of food likes
counter = {}

# Open up the favorite foods log and add it to the dictionary
with open("favorite_foods.log", "r") as f:
    for i in f:
        i = i[:-1]
        if i not in counter:
            counter[i] = 1
        else:
            counter[i] += 1

# Sorts the liked foods in descending order
sort_foods = sorted(counter.items(), key = lambda x : x[1], reverse = True)

# Prints out the liked foods
for i in range(len(sort_foods)):
    print("{}, {}".format(sort_foods[i][0], sort_foods[i][1]))
student-00-d32ed26e9829@linux-instance:~/food-scripts$ ./food_question.py
Traceback (most recent call last):
  File "./food_question.py", line 10, in <module>
    if item not in counter:
NameError: name 'item' is not defined
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git status
On branch master
nothing to commit, working tree clean
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git log
commit 21cf376832fa6eace35c0bf9e4bae4a3400452e9
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:09:39 2020 +0530

    Rename item variable to food_item.

commit b8d00e33237b24ea1480c363edd972cf4b49eedf
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:08:35 2020 +0530

    Added file food_question.py that returns how many others in the list like that same food.

commit 8d5a3189b88d273ef08286e5074b5e38d616da21
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:07:15 2020 +0530

    Added file food_count.py that returns a list of each food and the number of times each food appears in favorite_foods.log file.

commit 0a202e03e0356d2b5c323e51905d3d06e5e2d0ed
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:06:21 2020 +0530

    Added file favorite_foods.log that contains list of foods.
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git config user.name "dibyanshushekhardey"
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git config user.email "dibyanshushekhardey@gmail.com"
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git branch improve-output
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git checkout improve-output
Switched to branch 'improve-output'
student-00-d32ed26e9829@linux-instance:~/food-scripts$ nano food_count.py
student-00-d32ed26e9829@linux-instance:~/food-scripts$ ./food_count.py
Favourite foods, from most popular to least popular
rice, 12
burgers, 10
fried chicken, 9
pie, 8
salad, 7
pizza, 7
avocados, 6
tacos, 6
broccoli, 5
bananas, 5
ice cream, 5
spaghetti, 5
fish, 4
cereal, 3
strawberries, 3
cake, 3
watermelon, 2
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git status
On branch improve-output
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   food_count.py

no changes added to commit (use "git add" and/or "git commit -a")
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git add food_count.py
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git commit -m "Adding a line in the output describing the utility of food_count                                  .py script"
[improve-output 7cc0a1f] Adding a line in the output describing the utility of food_count.py script
 1 file changed, 2 insertions(+)
student-00-d32ed26e9829@linux-instance:~/food-scripts$ ./food_question.py
Traceback (most recent call last):
  File "./food_question.py", line 10, in <module>
    if item not in counter:
NameError: name 'item' is not defined
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git log
commit 7cc0a1f87be944270dafdfae08b5defb8c8131e8
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 13:13:18 2020 +0000

    Adding a line in the output describing the utility of food_count.py script

commit 21cf376832fa6eace35c0bf9e4bae4a3400452e9
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:09:39 2020 +0530

    Rename item variable to food_item.

commit b8d00e33237b24ea1480c363edd972cf4b49eedf
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:08:35 2020 +0530

    Added file food_question.py that returns how many others in the list like that same food.

commit 8d5a3189b88d273ef08286e5074b5e38d616da21
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:07:15 2020 +0530

    Added file food_count.py that returns a list of each food and the number of times each food appears in favorite_foods.log file.

commit 0a202e03e0356d2b5c323e51905d3d06e5e2d0ed
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:06:21 2020 +0530

    Added file favorite_foods.log that contains list of foods.
(END)
    Added file food_question.py that returns how many others in the list like that same food.

commit 8d5a3189b88d273ef08286e5074b5e38d616da21
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:07:15 2020 +0530

    Added file food_count.py that returns a list of each food and the number of times each food appears in favorite_foods.log file.

commit 0a202e03e0356d2b5c323e51905d3d06e5e2d0ed
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:06:21 2020 +0530

    Added file favorite_foods.log that contains list of foods.
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git revert 21cf376832fa6eace35c0bf9e4bae4a3400452e9
[improve-output 805ca88] Revert "Rename item variable to food_item." New commit added. This reverts commit 21cf376832fa6eace35c0bf9e4b                                  ae4a3400452e9.
 1 file changed, 1 insertion(+), 1 deletion(-)
student-00-d32ed26e9829@linux-instance:~/food-scripts$ ./food_question.py
Select your favorite food below:
strawberries
pizza
bananas
avocados
salad
ice cream
broccoli
cake
spaghetti
burgers
watermelon
fried chicken
rice
fish
pie
tacos
cereal
Which of the foods above is your favorite? rice
12 of your friends like rice as well!
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git checkout master
Switched to branch 'master'
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git merge improve-output
Already up-to-date.
student-00-d32ed26e9829@linux-instance:~/food-scripts$ ./food_question.py
Select your favorite food below:
fried chicken
avocados
fish
rice
burgers
pizza
broccoli
pie
strawberries
spaghetti
watermelon
tacos
cereal
ice cream
bananas
cake
salad
Which of the foods above is your favorite? cereal
3 of your friends like cereal as well!
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git status
On branch improve-output
nothing to commit, working tree clean
student-00-d32ed26e9829@linux-instance:~/food-scripts$ git log
commit 805ca88ce33ff2f123f6ff917c30f96ea982ccfb
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 13:15:21 2020 +0000

    Revert "Rename item variable to food_item."
    New commit added.
    This reverts commit 21cf376832fa6eace35c0bf9e4bae4a3400452e9.

commit 7cc0a1f87be944270dafdfae08b5defb8c8131e8
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 13:13:18 2020 +0000

    Adding a line in the output describing the utility of food_count.py script

commit 21cf376832fa6eace35c0bf9e4bae4a3400452e9
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:09:39 2020 +0530
:
    Revert "Rename item variable to food_item."
    New commit added.
    This reverts commit 21cf376832fa6eace35c0bf9e4bae4a3400452e9.

commit 7cc0a1f87be944270dafdfae08b5defb8c8131e8
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 13:13:18 2020 +0000

    Adding a line in the output describing the utility of food_count.py script

commit 21cf376832fa6eace35c0bf9e4bae4a3400452e9
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:09:39 2020 +0530

    Rename item variable to food_item.

commit b8d00e33237b24ea1480c363edd972cf4b49eedf
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:08:35 2020 +0530

    Added file food_question.py that returns how many others in the list like that same food.

commit 8d5a3189b88d273ef08286e5074b5e38d616da21
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:07:15 2020 +0530

    Added file food_count.py that returns a list of each food and the number of times each food appears in favorite_foods.log file.

commit 0a202e03e0356d2b5c323e51905d3d06e5e2d0ed
Author: Alex Cooper <alex_cooper@gmail.com>
Date:   Wed Jan 8 14:06:21 2020 +0530

    Added file favorite_foods.log that contains list of foods.
~
~
~
~
~
~
~
~
~
~
student-00-d32ed26e9829@linux-instance:~/food-scripts$
