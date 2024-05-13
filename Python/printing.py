name = "sars_covid_2"
disease = "covid19"

print("The name of virus is", name)

# Print variable anywhere using {}
print("The name of the virus is {}".format(name))

print("{} is the name of the virus".format(name))

# Multi variable print statement outside and inside
print("{} is the name of Virus and the disease will be {}".format(name, disease))

print(f"The name of the virus is {name} and disease will be {disease}")

# Concatenation
print("The disease name is", disease + " and the virus name is", name)
