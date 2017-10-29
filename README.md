## This is the newTest for future Github
* Set up the repository, e.g. **cd Desktop**

* Check the files within the repository using **ls**

* Start with git clone the repository, **git clone https://github.com/ChanningC12/newTest.git**

* Check the status, **git status**

* Work on the file and once finish, use **git add 'filename'** or **git add -A** to add changes by filename

* Use **git commit -m "message"** to commit the change locally

* Sync with Github using **git push**

* Use **git pull** to see if the file is up to date

*Other: **esc: sq** when you commit without a message*

## Enterprise version
* Git is a version control application tracks all the changes you've made
* Github is the server that supports the Git

* master branch is the primary branch, each individual might have their own branch, typically individual works on their own branch and push to Github under individual branch. Pull request is used to merge to the master branch, reviewer needs to approve the request

* **git checkout -b [name of the branch]** to create a new branch
* **git checkout [name of the branch]** to switch to the branch you want
* **git push origin [name of the branch]** to push the branch to Github
* **git branch** will show you which branch you are at currently
* **git merge [name of the branch you want merge from]** to merge the updated version, and the one you've updated will not be affected

* **git add .** will add all the files to be commited
* **git commit -m "message"** will commit your current changes on your local repository

* useful like <Github for beginners>(http://readwrite.com/2013/09/30/understanding-github-a-journey-for-beginners-part-1/) *