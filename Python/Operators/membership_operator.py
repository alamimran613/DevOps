# Membership operator
# We can check that variable first_tuple has value/string exists or not

#Variable Declare
first_tuple = ("IOT", "DevOps", 47, 89, 1.5)

# Searching String "DevOps" that exist
ans = "DevOps" in first_tuple
print(ans)

# Searching in reverse mode
ans = "DevOps" not in first_tuple
print(ans)

# Searching number that does not exist
ans = 55 not in first_tuple
print(ans)