import os
import time

os.system("cls")

item = input("quel est le nom de l'item que vous voulez rajouter ?\n")
if item.find("minecraft:") == -1:
    item = "minecraft:" + item
print(item)
cost = input("combien faudra t'il de points pour pouvoir recycler cette item ?\n")
try:
    placeholder = int(cost) + 1
    del placeholder
except:
    print("merci de rentrer un nom valider merci de relancer le script !")
finishp1 = "execute as @e[type=armor_stand, nbt=" + "{" + "HandItems:[" + "{" + f"id:\"{item}\"" + "}" + ", " + "{" + "}" + "]}" + "] unless data entity @s HandItems[" + "{" + "tag:" + "{" + "Damage: 0" + "}" + "}" + "]" + f" if score @p repair_point matches {cost}.. run scoreboard players set remove_point repair_point {cost}"
finishp2 = "execute as @e" + "[" + "type=armor_stand,nbt=" + "{" + "HandItems:" + "[" + "{" + f"id:\"{item}\"" + "}" + ", " + "{" + "}" + "]" + "}" + "]" + " unless data entity @s HandItems"+ "[" + "{" + "tag:" + "{" + "Damage: 0" + "}" + "}" + "]" + f" at @s if score @p repair_point matches {cost}.. run function datameuh:reparation_table/reset"
print("\u001b[31mvoici les commandes :\u001b[0m\n{}\n\n\n\n\n{}".format(
    finishp1, finishp2))

try:
    with open("../datameuh/functions/reparation_table/tick.mcfunction", "a") as f:
        f.write(f"\n{finishp1}\n{finishp2}")
except:
    with open("data/datameuh/functions/reparation_table/tick.mcfunction", "a") as f:
        f.write(f"\n{finishp1}\n{finishp2}")

time.sleep(15)