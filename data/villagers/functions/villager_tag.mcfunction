tag @s add new_villager
kill @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"new_villager_key":1b}}}, limit=1]
data merge entity @s {NoAI: 1b}