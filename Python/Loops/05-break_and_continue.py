# Break Statement, If data found then it will break the loop
"""
for i in "DevOps":
    print(i)
    if i == "O":
        print("Found my data")
        break
print("Out of loop")
"""
# Continue/Skip statement, If data found then that data will be skip and continue the loop
for i in "DevOps":
    if i == "O":
        print("Found my data")
        continue
    print(f"Value of i is {i}")
print("Out of loop")