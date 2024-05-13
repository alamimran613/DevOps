# String built-in function/Method
"""
message = "corona virus is very dangerous virus."
print(message)
print(message.capitalize())
Message = message.capitalize()
print(Message)

# dir() function, This will show built in methods

print(dir(""))  # For string
print(dir([]))  # For List
print(dir({}))  # For Dictionary
print(dir(()))  # For Tuple


# Other built-in functions for data validation
print(message.upper())
print(message.lower())
print(message.isupper())  # Check upper case or not, Output will be in True/False
print(message.islower())  # Check lower case or not, Output will be in True/False

# Find the string
print(message.find("virus"))
print(message[7:12])
print(message.find("imran"))  # if not found the string then it will return -1


seq1 = ("192", "168", "40", "90")
print(".".join(seq1))
print("/".join(seq1))
print("-".join(seq1))

# List are mutable that means we can edit them like below example
mountains = ["Everest", "Himalaya", "Sahyadri", "Alps", "K2", "Mt Hood"]
print(mountains)

# Append use to add only one string at a time, If we want to add multiple string then we can write one by one or write a for loop
mountains.append("Imran's Mountain")
print(mountains)

# Example of loop

mountains = ["Everest", "Himalaya", "Sahyadri", "Alps", "K2", "Mt Hood"]
new_mountains = ["Imran's Mountain", "Mt Raider", "Satpuda"]

for mountain in new_mountains:
    mountains.append(mountain)
print(mountains)

# Extend use to add multiple string
mountains.extend(["Mt Raider", "Satpuda"])
print(mountains)

# Inserting string between Lists
mountains.insert(2, "Mount Abu")
print(mountains)

################################ Deleting ################################
mountains.pop()  # This will delete last one
print(mountains)

mountains.pop(2)
print(mountains)
"""

# Working with dictionary, Printing keys
cntr_emp1 = {"Name": "Santa", "Skill": "Devops", "Code": 1004}

print((cntr_emp1.keys()))
print(cntr_emp1.values())
cntr_emp1.clear()
print(cntr_emp1)