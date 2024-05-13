planet1 = "Closest to sun"
print(planet1)

# Slicing from left to right
print(planet1[0])
print(planet1[1])
print(planet1[2])

print("Slicing from right to left")
# Slicing from right to left
print(planet1[-1])
print(planet1[-2])

# Slicing a string, Get a substring from string
print(planet1[1:4])
print(planet1[:])
print(planet1[:7])
print(planet1[8:])

# Defining Tuple in devops variable for slicing
devops = ("Linux", "Vagrant", "Bash Scripting", "AWS", "Jenkins", "Python", "Ansible")

print(devops[0])
print(devops[4])
print(devops[-1])
print(devops[1:5])
print(devops[3:])

print(devops[2:5])
print(devops[2:5][0][5:11])
print(devops[2:5][0][5:11][-1])

# Defining Lists in devops variable for slicing
devops = ["Linux", "Vagrant", "Bash Scripting", "AWS", "Jenkins", "Python", "Ansible"]

print(devops[0])
print(devops[4])
print(devops[-1])
print(devops[1:5])
print(devops[3:])

print(devops[2:5])
print(devops[2:5][0][5:11])
print(devops[2:5][0][5:11][-1])

# Defining Dictionary and slicing
print("############# Dictionary Example with Tuple, List ###############")
skills = {"DevOps": ("AWS", "Jenkins", "Python"), "Development": ["java","NodeJs", ".net"]}
print(skills)
print(skills["DevOps"])
print(skills["Development"])

print(skills["DevOps"])