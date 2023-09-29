## Stash working file
git stash

## See stash item list
git stash list

# Note: Lastest stash file serial number is 0 and then other

## copy file from stash to working space
git stash apply <stash id>
git stash apply stash@{0}

## Clear stash files
git stash clear



# Note: Once data move to stash and when we copy our data from stash then stash item will be copied not moved so we have to clear stash of that file.