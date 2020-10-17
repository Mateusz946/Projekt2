print('Hello')
def dodaj(x, y):
    return x+y
def odejmij(x, y):
    return x-y
def mnożenie(x,y):
    return x*y
def dzielenie(x,y):
    return x/y
print("Wybierz operacje liczbowa")
print("1.Dodawanie")
print("2.Odejmowanie")
print("3.Mnozenie")
print("4.Dzielenie")
choice = input("Ktorą operacje chcesz wykonac? Wybierz (1/2/3/4):\n ")
num1 = float(input("Podaj pierwszą wartość: "))
num2 = float(input("Podaj drugą wartość: "))
if choice =="1":
    print(num1,"+",num2,"=", dodaj(num1,num2))
elif choice =="2":
    print(num1,"-", num2,"=",odejmij(num1,num2))
elif choice =="3":
    print(num1,"*",num2,"=", mnożenie(num1,num2))
elif choice =="4":
    print(num1,"/",num2,"=", dzielenie(num1,num2))
else:
    print("Niepoprawna wartość")
input("Dziękuję")