# Variable Length Argument, **kwargs (keyword arguments)
import random


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


time_activity(10, 20, 10, hobby="Dance", sport="Boxing", fun="Driving", work="DevOps")
