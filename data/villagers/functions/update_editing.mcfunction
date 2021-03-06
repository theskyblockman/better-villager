##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

execute unless block ~ ~3 ~ shulker_box run kill @e[type=item,nbt={Item:{id:"minecraft:shulker_box"}},sort=nearest,limit=1]
execute unless block ~ ~3 ~ end_rod[facing=down] run kill @e[type=item,nbt={Item:{id:"minecraft:end_rod"}},sort=nearest,limit=1]
execute unless block ~ ~3 ~ shulker_box run setblock ~ ~3 ~ shulker_box[facing=up]{Items:[{Slot:8b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... is the first buy.","italic":false}]'}}},{Slot:17b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... is the second buy.","italic":false}]'}}},{Slot:26b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"export data to the villager","italic":false}]'}}}]}
execute unless block ~ ~2 ~ end_rod[facing=down] run setblock ~ ~2 ~ end_rod[facing=down]
execute as @a store result score @s cleared_item run clear @s gray_stained_glass_pane{"will_sell_to":1b}
execute as @a[scores={cleared_item=1..}] at @s at @e[tag=editing_villager, limit=1, sort=nearest] run function villagers:update_editing_shulkers
execute as @a store result score @s cleared_item run clear @s lime_stained_glass_pane{"will_sell_to":1b}
execute as @a[scores={cleared_item=1..}] at @s at @e[tag=editing_villager, limit=1, sort=nearest] run function villagers:export_data
execute as @a[scores={cleared_item=1..}] at @s at @e[tag=editing_villager, limit=1, sort=nearest] run function villagers:update_editing_shulkers