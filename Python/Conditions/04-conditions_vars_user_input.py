# This script will implement our knowledge on conditions and different datatypes.

print("IT Organisation has various skills set")
print("Find out your match")
print("Enter capitalised value")

# Declare Lists data type in variable
DevOps = ["Jenkins", "Ansible", "Bash", "Python", "Puppet", "Docker", "Kubernetes", "Terraform"]

# Declare Tuple data type in variable
Development = ("Nodejs", "Angularjs", "Java", ".net", "Python")

# Declare Contract Employee as Dictionary Data Type
cntr_emp1 = {"Name": "Santa", "Skill": "Blockchain", "Code": 1024}
cntr_emp2 = {"Name": "Rocky", "Skill": "AI", "Code": 1218}

# Taking user Input in usr_skill var
usr_skill = input("Enter your desired skill: ")
# print(usr_skill)

# Check in the database if we have the skill
if usr_skill in DevOps:
    print(f"We have {usr_skill} in DevOps Team")
elif usr_skill in Development:
    print(f"We have {usr_skill} in Development Team")

# Compare using values of dictionary, Dictionary means key and value pair
elif (usr_skill in cntr_emp1.values()) or (usr_skill in cntr_emp2.values()):
    print(f"We have contract employee with skill named {usr_skill}")
else:
    print("Skill not found")
