# Logical Operators

# or - any condition is true then it return true else false
# and - Both comparison should be true for true else false, Both condition should be true then it will true else false

a = 40
b = 60

x = 2
y = 3

out = (a < b) or (x > y)
print(out)

out = (a < b) and (x < y)
print(out)

out = (b > a) and (y > x)
print(out)

out = not (x < y) # x is less than y is True but use of not will make it false. not operator make it negated it.
print(out)