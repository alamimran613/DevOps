# String's
str1 = "alpha"
str2 = 'beta'
str3 = '''gama string'''
str4 = """delta string"""

# Numbers
num1 = 123
flt1 = 2.0

# List / Array / Collection of multiple datatypes, Enclosed in square brackets. We can edit a list. Mutable
first_list = [str1, "Devops", 47, num1, 1.5]

# Printing a list
print(first_list)


# Tuple / Collection of multi datatype, enclosed with round bracket. We can not edit a tuple. Immutable
first_tuple = (str1, "Devops", 47, num1, 1.5)
print(first_tuple)

# Dictionary / Elements in the dictionary are always in pair(key and value), with curly brackets.
first_dictionary = {"Name": "Imran", "Weight": 75, "Exercises": ["Boxing", "Dancing", "Jogging"]}
print(first_dictionary)

print("Variable first_list is a:", type(first_list))
print("Variable first_touple is a:", type(first_tuple))
print("Variable first_dictionary is a:", type(first_dictionary))

# Boolean
x = True
y = False

print(x)
print(y)

print("Data type of x is", type(x))
print("Data type of y is", type(y))