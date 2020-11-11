import os
import time
running = True
while running:
    os.system("cls")

    item = input("quel est le nom de l'item que vous voulez rajouter ?\n")
    item_name = item
    if item.find("minecraft:") == -1:
        item_name = item
        item = "minecraft:" + item
    else:
        item_name = item[9:]
    item = "\'" + item + "\'"
    tag_choice = input("voulez vous rajouter des tags a cette item ? (Y/N)\n")
    if tag_choice.upper() == "Y":
        tag = input("quels sont les tags que vous voulez rajouter (ex : spell:\"fireball\")\n")
        if tag.startswith("{"):
            tag = tag[1:-1]
            print(tag)
        item = item + ", tag:{" + tag + "}"
    cost = input("combien faudra t'il de points pour pouvoir recycler cette item ?\n")
    try:
        placeholder = int(cost) + 1
        del placeholder
    except:
        print("merci de rentrer un nom valide merci de relancer le script !")
        exit()
    with open("trigger_number.txt", "r") as f:
        content = f.read()



    finishp1 = "execute as @e[type=armor_stand, nbt=" + "{" + "HandItems:[" + "{" + f"id:{item}" + "}" + ", " + "{" + "}" + "]}" + "] unless data entity @s HandItems[" + "{" + "tag:" + "{" + "Damage: 0" + "}" + "}" + "]" + f" if score @p repair_point matches {cost}.. run scoreboard players set remove_point repair_point {cost}\nexecute as @e[type=armor_stand, nbt=" + "{" + "HandItems:[" + "{" + f"id:{item}" + "}" + ", " + "{" + "}" + "]}" + "] unless data entity @s HandItems[" + "{" + "tag:" + "{" + "Damage: 0" + "}" + "}" + "]" + f" if score @p repair_point matches {cost}.. run scoreboard players enable @p " + content

    finishp2 = "execute as @e" + "[" + "type=armor_stand,nbt=" + "{" + "HandItems:" + "[" + "{" + f"id:{item}" + "}" + ", " + "{" + "}" + "]" + "}" + "]" + " unless data entity @s HandItems" + "[" + "{" + "tag:" + "{" + "Damage: 0" + "}" + "}" + "]" + f" at @s if score @p repair_point matches {cost}.. unless score remove_point repair_point matches 1.. run tellraw @p [\"\"," + "{\"text\":\"\\u25c0\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u25b6\",\"color\":\"gold\"},{\"text\":\"\\n\"},{\"text\":\"[table de réparation] \",\"color\":\"gray\"},{\"text\":\"voulez vous réparer votre " + item_name + " ? (note: toutes les states de l'item seront garder)\",\"color\":\"yellow\"},{\"text\":\"\\n\\n\"},{\"text\":\"                      \",\"color\":\"#2EF222\"},{\"text\":\"[\\u2714]\",\"color\":\"#2EF222\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger " + content + "\"}},{\"text\":\"                      \",\"color\":\"yellow\"},{\"text\":\"[\\u2716]\",\"color\":\"#FF0003\"},{\"text\":\"\\n\"},{\"text\":\"\\u25c0\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u25b6\",\"color\":\"gold\"}]"

    finishp1t = "execute if entity @e[scores={" + content + "=1..}] as @e[type=armor_stand,nbt={HandItems:[{id:" + item + "}, {}]}] unless data entity @s HandItems[{tag:{Damage: 0}}] at @s if score @p repair_point matches 1.. run function datameuh:reparation_table/reset\n" \
        "execute if entity @e[scores={" + content + "=1..}] as @e[type=armor_stand,nbt={HandItems:[{id:" + item + "}, {}]}] unless data entity @s HandItems[{tag:{Damage: 0}}] at @s if score @p repair_point matches 1.. run scoreboard players set @s " + content + " 0\n"
    finishp1t2 = "\nscoreboard objectives add {} trigger\n".format(content)

    content = content[:-1] + str(int(content[-1:]) + 1)
    with open("trigger_number.txt", "w") as f:
        f.write(content)

    print("\u001b[31mvoici les commandes :\u001b[0m\n{}\n\n\n\n\n{}\n\n\n\n\n\n{}".format(
        finishp1, finishp2, finishp1t))

    try:
        with open("../datameuh/functions/reparation_table/tick.mcfunction", "a", encoding="utf-8") as f:
            f.write(f"\n{finishp2}\n{finishp1}\n{str(finishp1t)}")
        with open("../datameuh/functions/load.mcfunction", "a", encoding="utf-8") as f:
            f.write(finishp1t2)
    except:
        with open("data/datameuh/functions/reparation_table/tick.mcfunction", "a", encoding="utf-8") as f:
            f.write(f"\n{finishp2}\n{finishp1}\n")
        with open("data/datameuh/functions/load.mcfunction", "a", encoding="utf-8") as f:
            f.write(finishp1t2)
    replay = input("voulez vous ajouter un autre item ? (Y/N)\n")
    if replay.upper() == "Y":
        running = True
    else:
        running = False