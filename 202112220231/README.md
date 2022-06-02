# Git: Helpful Commands

## Terms
* HEAD - the currently active or checked-out barnch  
* local branch - branch that is being worked on your machine  
* remote branch - branch on gitlab/github that gets synchronized 


**Command | Use**

## Creating Repo, Pushing, and Committing
* git init | initialize the git repository (run commmand inside appropriate directory since .git files will be made here)  
* git remote add origin git@... |  Add a remote to your local repo (connect to GitLab or GitHub)  
* git add . | Add all changes (including deleted files) to the staging phase of the commit. Can also use '.' instead of '--all'.  
* git commit -m "commit message" |  Make the commit official  
* git push -u origin | Send the commit up to your remote repo, only need to "-u origin main" the first time  

## Branches
* git branch \<branch-name\>  | Create a new branch coming off the HEAD at its current revision  
* git branch \<branch-name\> \<revision hash (hexadecimal)\> | Create a new branch coming off HEAD at specified revision  
* git checkout \<branch-name\> | Checkout a different branch  
* git switch \<branch-name\> | Checkout a different branch (safer than checkout)  
* git checkout -b \<branch-name\> | Create a new branch at HEAD and checkout at that branch  
* git branch -M master main | Rename branch master to main  
* git branch -M main | Rename the *HEAD* branch to main  
* git branch -D branch | Force delete the local branch (do after GH PR and merge) 
* git branch -a | Show all the local and remote branches

**Merging**  
* git switch \<branch-name\> | Switch to the branch that you want receiving the changes  
* git merge \<branch-name\> | Merge the branch specified into the current or HEAD branch  


## Tags
#git
