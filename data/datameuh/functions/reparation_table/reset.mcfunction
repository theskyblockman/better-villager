data modify entity @s HandItems[0].tag.Damage set value 0
playsound minecraft:block.beacon.power_select player @a[distance=..15]
particle minecraft:enchant ~ ~2 ~ 1 0 1 0.11 3000 normal
scoreboard players operation @p repair_point -= remove_point repair_point
scoreboard players reset remove_point repair_point