import os

os.system("cls")
nbt = 40
nombre = 39
for i in range(0, 40):
    print("replaceitem entity @s[nbt={SelectedItem:{id:\"minecraft:blaze_rod\", tag:{cooldown: " + str(nbt) + "}}}] weapon.mainhand blaze_rod{cooldown:" + str(nombre) + "}")
    nbt = nbt - 1
    nombre = nombre - 1
