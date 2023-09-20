# Git Conflict
When we merge two branch and `Branch-1` and `Branch-2` have same name file like `File1` and `File1` and `File1 of Branch-2` data are not similar then `Git Conflict` occur. Git will merge branches

## Solve Git Conflict
Goto file and open file reorder lines as per your need then commit the changes.

# Git Conflict Scenario
## File-1 content
Hi my name is imran

## File-2 content
I am good

# Git Non Conflict Scenario
## File-1 content
Hi my name is imran

## File-2 content
Hi my name is imran
I am good boy

This will not occur conflict because there are same content in both file `Hi my name is imran` so git will know that same content available in both files and another content `I am good boy` if after `Hi my name is imran` So, Git will merge and not give conflict error.
