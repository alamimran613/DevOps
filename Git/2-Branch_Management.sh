## List all Branch
git branch

## Create Git Branch
git branch <Branch Name>
git branch test_branch

## Change Branch
git checkout <Branch Name>
git checkout test_branch

## Delete Branch
git branch -d test_branch

# Note: This command is used to delete a branch named test_branch, but it does so in a safe manner. It will only delete the branch if it has already been fully merged into the current branch. If there are unmerged changes in test_branch, Git will prevent you from deleting it with this command and will give you an error message. This safety check is designed to prevent accidental data loss.

## Delete Branch
git branch -D test_branch

# Note: This command is used to forcefully delete a branch named test_branch, regardless of whether it has been fully merged or not. It's useful when you want to delete a branch, even if it contains unmerged changes. Be cautious when using this command because it can result in the loss of unmerged work.

## Merge Branch
git merge <Branch Name>
git merge test_branch

# Note: We use pulling machanism to merge branch. If we want to merge test_branch with master branch then stay in master branch then use above command. This will also merge commit details. "git log" for check Ex - If we want to merge Branch B with Branch A then stay in branch A and use command "git merge B". This will use pulling machanism so we pull branch code

