##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################


execute as @a run tellraw @s [{"text": "[", "color": "red"}, {"text": "new villager", "color": "green"}, {"text": "]", "color": "red"}, {"text": " datapack succesfully reloaded", "color": "green"}]
scoreboard objectives add trading_items trigger
execute as @a run scoreboard players enable @s trading_items

scoreboard objectives add mods_items trigger
execute as @a run scoreboard players enable @s mods_items

scoreboard objectives add cleared_item dummy