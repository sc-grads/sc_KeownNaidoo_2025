print("\n ////////////////////////////////////////////////////\n")
print("\t Expressions ")
print("\n ////////////////////////////////////////////////////\n")
try:
    hr = input("Enter your hours worked: ")
    rate = 20
    pay = int(hr) * rate
    print("Total pay R", pay) 
except:
    hr = -1
    
if hr == -1:
    print("Error!!!!!!!!!!!!!")
    pay = -1
else:
    rate = 20
    pay = int(hr) * rate
    print("Total pay R", pay) 


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
