#!/usr/bin/python3
import os

userlist = ["alpha", "beta", "gamma"]

print("Adding users to system")
print("##############################################")

# Loop for add user from userlist

for user in userlist:
    exitcode = os.system("id {}".format(user))
    if exitcode != 0:
        print("User does not exists. Adding it".format(user))
        print("##############################################")
        print()
        os.system("useradd {}".format(user))
    else:
        print("user already exists, Skipping It")
        print("##############################################")
        print()

# Condition to check if group exists or not, Add if not exists
exitcode = os.system("grep science /etc/group")
if exitcode !=0:
    print("Group Does not exists. Adding it")
    print("################################################")
    print()
    os.system("groupadd science")
else:
    print("Group already exists, Skipping it")
    print("################################################")
    print()

for user in userlist:
    print("Adding user {} in the science group".format(user))
    print("################################################")
    print()
    os.system("usermod -G science {}".format(user))

print("Adding Directory")
print("################################################")
print()

if os.path.isdir("/opt/science_dir"):
    print("Directory already exists, Skipping it")
else:
    os.mkdir("/opt/science_dir")

print("Assigning permission and ownership to the user of directory science_dir")
print("################################################")
print()

os.system("chown :science /opt/science_dir")
os.system("chmod 770 /opt/science_dir")
