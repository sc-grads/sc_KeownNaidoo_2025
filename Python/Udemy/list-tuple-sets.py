l = ["Bob", "RoIf", "Anne"]
t = ("Bob", "RoIf", "Anne")
s = {"Bob", "RoIf", "Anne"}

friends = {"Bob", "Rolf", "Anne"}
abroad = {"Bob", "Anne"}

local_friends = friends.difference(abroad)
print(local_friends)
