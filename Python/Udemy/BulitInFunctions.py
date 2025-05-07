print('A','B','C', sep='-', end=",")

#################################
elements: list[str] = ['A', 'B', 'C']

for i, element in enumerate(elements):
    print(f'{i}: {element}')

###################################

a: float = 200.31288
b: float = 18.12155
c: float = 47.1231284

result: float = a + b + c
rounded: float = round(result, 2)
print(rounded)

##################################
my_range: range = range(0, 15)
print(my_range)
print(list(my_range))

my_range: range = range(0, 10, 2)
print(my_range)
print(list(my_range))

my_range: range = range(0, -5, -1)
print(my_range)
print(list(my_range))

#######################################

text: str = "Hello, world!"

first_three: slice = slice(0, 3)
print(text[first_three])  # Output: Hel

reverse_slice: slice = slice(None, None, -1)
print(text[reverse_slice])  # Output: !dlrow ,olleH

####################################################

wifi_enabled: bool = True
has_electricity: bool = True
has_subscription: bool = True

requirements: list[bool] = [wifi_enabled, has_electricity, has_subscription]

if all(requirements):
    print('Connected to internet!')

######################################################

wifi_enabled: bool = True
has_electricity: bool = False
has_subscription: bool = True

requirements: list[bool] = [wifi_enabled, has_electricity, has_subscription]

if any(requirements):
    print('Connected to internet!')

##########################################################33

number: int = 10
pi: float = 3.14
text: str = 'banana'
my_list: list[int] = [1, 2, 3]

print(isinstance(text, int))

#################################################################