##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

data merge entity @s {CanPickUpLoot: false}
kill @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"new_villager_picker":1b}}}]