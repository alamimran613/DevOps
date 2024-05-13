# Keyword arguments

def vac_feedback(vac, efficacy):
    print(f"{vac} Vaccine is having {efficacy} % efficacy.")
    if (efficacy > 50) and (efficacy <=75):
        print("Seems not so effective, Needs more trail.")
    elif (efficacy >75) and (efficacy <= 89):
        print("Can consider this vaccine")
    elif (efficacy >= 90):
        print("Sure, Take the shot.")
    else:
        print("Need more trails.")

# vac_feedback("Covacin", 45)
# vac_feedback("Covishield", 91)
# vac_feedback("M2", 60)

# If we don't pass arguments in order it will through error like this
# vac_feedback(51, "New Vaccine") # This will through error

# Pass arguments with name will not show error, But we have to know argument name

vac_feedback(efficacy=90, vac="TipuSultan")