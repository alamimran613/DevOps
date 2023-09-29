##################### Basic Setup #####################

## Git Install
sudo apt-get install git -y

## Git Config user add
git config --global user.name "Imran Alam"
git config --global user.email "technosnag@gmail.com"

## Check Git User
git config --list

##################### Commit, Push and Pull From GitHub #####################

## Check status of files
git status

## Add files from working space -> Staging Area
git add .

## Commit file to Local Repo/Branch
git commit -m "Your commit message" 

## Check All Commit Details - User, Email, Date & Time
git log
git log -1          #Check Last commit details
git log -2          #Check 2 Latest commit details
git log --oneline   #Check all commit in one line as collapse mode
git log --grep "modify java file" # Grep/Filter commit by commit message

## Check details by commit id - Commited File and what's inside code
git show <commit id>

## Push Files to GitHub Repository
git push -u origin <Branch Name>
git push -u origin master

## Pull Files from GitHub - (If using for another user then - git init, configure user, connect to github)
git pull origin <Branch Name>
git pull origin master

##################### Remote Management #####################

## Connect with remote repository
git remote add origin <Repository URL>

## Push codes to remote repository - (-u = user, master = branch name)
git push -u origin <Branch Name>
git push -u origin master

## Check Connected GitHub Repository
git remote -v

## Remove Connected GitHub Repository
git remote remove origin

##################### File Management #####################

## Git Ignore - (First Create and Commit .gitignore file)
## Here .css and .java files will not show while git status on working area and will not be commit
## These changes will be effected from Working Directory
cat > .gitignore
*.css
*.java

## Move File from staging area to working directory
git reset

## Remove Files from Working Area and Staging Area
git reset --hard

## Delete untracked file
git clean -n (This will show which files will be removed, When confirm then use below command)
git clean -f (Force Fully - This will not ask for confirmation)