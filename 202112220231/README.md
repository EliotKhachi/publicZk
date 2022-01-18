# Git: Helpful Commands
|   Command                                                  |   Use
|   -                                                                    |   -
|   git remote add origin git@...                   |  Add a remote to your local repo (connect to GitLab or GitHub)
|   git add --all                                                |   Add all changes (including deleted files) to the staging phase of the commit. Can also use '.' instead of '--all'.
|   git commit -m "commit message"       |  Make the commit official
|   git push -u origin main                            |  Send the commit up to your remote repo, only need to "-u origin main" the first time
|   git checkout -b branch_name                | Create a new branch and checkout
|   git branch -M master_main                    | Rename branch master to main
|   git branch -D branch_name                   | Force delete the local branch (do after GH PR and merge)
|   git branch -a                                              | Show all the local and remote branches
|   git pull --prune origin                               | Remove remote branch (after it is deleted on GH)
## Tags
#git
