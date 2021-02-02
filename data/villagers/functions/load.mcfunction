##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

# execute as @a run give @s paper{"new_villager_silent":1b, display:{Name:'[{"text":"Paper of Silent", "italic": false}]'}} 1
# execute as @a run give @s paper{"new_villager_ai":1b, display:{Name:'[{"text":"Paper of A.I", "italic": false}]'}} 1
# execute as @a run give @s paper{"new_villager_picker":1b, display:{Name:'[{"text":"Paper of picking", "italic": false}]'}} 1
execute as @a run tellraw @s [{"text": "[", "color": "red"}, {"text": "new villager", "color": "green"}, {"text": "]", "color": "red"}, {"text": " datapack succesfully reloaded", "color": "green"}]
scoreboard objectives add trading_items trigger
execute as @a run scoreboard players enable @s trading_items

scoreboard objectives add mods_items trigger
execute as @a run scoreboard players enable @s mods_items