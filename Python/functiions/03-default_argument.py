# Default argument function

def greetings(msg="Morning"):
    print(f"Good {msg}")
    print("This is default function")


greetings("Evening")  # if we do not pass message then it will take "Morning" from function
greetings()
