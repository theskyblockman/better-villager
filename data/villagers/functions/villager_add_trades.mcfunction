##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

kill @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"custom_trade":1b}}}]
data merge entity @s {Offers:{Recipes:[]}}
data merge entity @s {NoAI: 1b}
execute align xz run tp @s ~.5 ~ ~.5
setblock ~ ~2 ~ end_rod[facing=down]
setblock ~ ~3 ~ shulker_box[facing=up]{Items:[{Slot:8b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"export data to the villager","italic":false}]'}}},{Slot:9b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... will be sell to...","italic":false}]'}}},{Slot:10b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... will be sell to...","italic":false}]'}}},{Slot:11b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... will be sell to...","italic":false}]'}}},{Slot:12b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... will be sell to...","italic":false}]'}}},{Slot:13b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... will be sell to...","italic":false}]'}}},{Slot:14b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... will be sell to...","italic":false}]'}}},{Slot:15b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... will be sell to...","italic":false}]'}}},{Slot:16b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... will be sell to...","italic":false}]'}}},{Slot:17b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"export data to the villager","italic":false}]'}}},{Slot:26b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"export data to the villager","italic":false}]'}}}]}
tag @s add editing_villager
give @p paper{display:{Name:'[{"text":"Paper of stoping editing"}]'}, "stop_edit":1b}