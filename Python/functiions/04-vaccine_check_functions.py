# First argument vac should be string and efficacy will be integer, write it in order.

def vac_feedback(vac, efficacy):
    print(f"{vac} Vaccine is having {efficacy} % efficacy.")
    if (efficacy > 50) and (efficacy <=75):
        print("Seems not so effective, Needs more trail.")
    elif (efficacy >75) and (efficacy <= 90):
        print("Can consider this vaccine")
    elif (efficacy >= 90):
        print("Sure, Take the shot.")
    else:
        print("Need more trails.")

vac_feedback("Covacin", 45)
vac_feedback("Covishield", 91)
vac_feedback("M2", 60)