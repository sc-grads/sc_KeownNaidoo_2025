print("\n ////////////////////////////////////////////////////\n")
print("\t Expressions ")
print("\n ////////////////////////////////////////////////////\n")

def get_pay(rate, hours):
    return rate * hours

rate = 20

try:
    hr = int(input("Enter your hours worked: "))
    pay = get_pay(rate, hr)
    print("Total pay: R", pay)
except ValueError:
    print("Error!!!!!!!!!!!!!")
    pay = -1



print("\n")
print("\n ////////////////////////////////////////////////////\n")
print("\t Collecting User Input")
print("\n ////////////////////////////////////////////////////\n")
userInput= input("what is your name : ")
print(userInput)

print("\n")
print("\n ////////////////////////////////////////////////////\n")
print("\t If Statements")
print("\n ////////////////////////////////////////////////////\n")

if userInput == "Keown":
    print("He is 100 years old")
else:
    print("Not Keown, this is an Imposter")
if pay<0:
    print("Error")
elif pay < 100:
    print("Very litte")
elif pay >= 100 & pay <500:
    print ("medium")
elif pay >500:
    print("Very Big")
else :
    print("wrong value")
