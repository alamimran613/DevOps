import random


def add(args1, args2):
    total = args1 + args2
    return total


def summ(arg1):
    x = 0
    for i in arg1:
        x = x + i
    return x


def vac_feedback(vac, efficacy):
    print(f"{vac} Vaccine is having {efficacy} % efficacy.")
    if (efficacy > 50) and (efficacy <= 75):
        print("Seems not so effective, Needs more trail.")
    elif (efficacy > 75) and (efficacy <= 89):
        print("Can consider this vaccine")
    elif efficacy >= 90:
        print("Sure, Take the shot.")
    else:
        print("Need more trails.")


def order_food(min_order, *args):
    print(f"You have ordered: {min_order}")
    # print(args)
    for item in args:
        print(f"You have ordered: {item}")
    print("Your food will be delivered in 30 minutes.")
    print("Enjoy the party.")


def time_activity(*args, **kwargs):
    """
    Input: Multiple values for minutes, Key=value pari activity
    Output: Return of sum of minutes + random minute spend on a random activity
    """
    # print(args)
    # print(kwargs)
    min = sum(args) + random.randint(0, 60)

    # print(min)
    choice = random.choice(list(kwargs.keys()))
    # print(choice)
    print(f"You have to spend {min} minutes for the activity {kwargs[choice]}.")
