##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

kill @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"import_trades":1b}}}]
data merge entity @s {NoAI: 1b}
execute align xz run tp @s ~.5 ~ ~.5

setblock ~ ~3 ~ shulker_box[facing=up]{Items:[{Slot:0b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:1b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:2b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:3b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:4b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:5b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:6b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:7b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:8b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... is the first buy.","italic":false}]'}}},{Slot:9b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:10b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:11b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:12b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:13b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:14b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:15b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:16b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:17b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"... is the second buy.","italic":false}]'}}},{Slot:18b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:19b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:20b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:21b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:22b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:23b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:24b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:25b,id:"minecraft:bedrock",Count:1b,tag:{placeholder:1b}},{Slot:26b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{will_sell_to:1b,display:{Name:'[{"text":"export data to the villager","italic":false}]'}}}]}
data modify block ~ ~3 ~ Items[{Slot:0b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[0].buy
data modify block ~ ~3 ~ Items[{Slot:1b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[1].buy
data modify block ~ ~3 ~ Items[{Slot:2b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[2].buy
data modify block ~ ~3 ~ Items[{Slot:3b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[3].buy
data modify block ~ ~3 ~ Items[{Slot:4b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[4].buy
data modify block ~ ~3 ~ Items[{Slot:5b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[5].buy
data modify block ~ ~3 ~ Items[{Slot:6b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[6].buy
data modify block ~ ~3 ~ Items[{Slot:7b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[7].buy

data modify block ~ ~3 ~ Items[{Slot:9b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[0].buyB
data modify block ~ ~3 ~ Items[{Slot:10b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[1].buyB
data modify block ~ ~3 ~ Items[{Slot:11b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[2].buyB
data modify block ~ ~3 ~ Items[{Slot:12b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[3].buyB
data modify block ~ ~3 ~ Items[{Slot:13b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[4].buyB
data modify block ~ ~3 ~ Items[{Slot:14b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[5].buyB
data modify block ~ ~3 ~ Items[{Slot:15b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[6].buyB
data modify block ~ ~3 ~ Items[{Slot:16b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[7].buyB

data modify block ~ ~3 ~ Items[{Slot:18b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[0].sell
data modify block ~ ~3 ~ Items[{Slot:19b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[1].sell
data modify block ~ ~3 ~ Items[{Slot:20b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[2].sell
data modify block ~ ~3 ~ Items[{Slot:21b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[3].sell
data modify block ~ ~3 ~ Items[{Slot:22b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[4].sell
data modify block ~ ~3 ~ Items[{Slot:23b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[5].sell
data modify block ~ ~3 ~ Items[{Slot:24b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[6].sell
data modify block ~ ~3 ~ Items[{Slot:25b}] merge from entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[7].sell

data remove block ~ ~3 ~ Items[{id:"minecraft:bedrock", tag:{placeholder:1b}}]
tag @s add editing_villager
give @p paper{display:{Name:'[{"text":"Paper of stoping editing", "italic":false}]'}, "stop_edit":1b}