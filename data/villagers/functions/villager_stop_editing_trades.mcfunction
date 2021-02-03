##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

tag @s remove editing_villager
kill @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"stop_edit":1b}}}]
fill ~ ~2 ~ ~ ~3 ~ air
data merge entity @s {NoAI: 0b}