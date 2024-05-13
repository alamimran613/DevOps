# Import Random module
import random

# Declare Variable
vaccine = ["Covacin", "Sputnic", "Moderna", "AstraZeneca", "PFizer"]

# Shuffle vaccine variable data and print
random.shuffle(vaccine)
print(vaccine)

# Select any one by random from vaccine variable and print using lucky variable
lucky = random.choice(vaccine)
print(lucky)

# For loop and nested loop
for vac in vaccine:
    print(f"Testing Vaccine {vac}")
    if vac == lucky:
        print("######################")
        print(f"{lucky} Test, Successfully")
        break
    print("Test Failed")
    