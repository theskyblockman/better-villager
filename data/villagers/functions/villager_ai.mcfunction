##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

data merge entity @s {NoAI: 1b}
kill @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"new_villager_ai":1b}}}]