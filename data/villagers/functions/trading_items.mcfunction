##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

give @s paper{"trading_items":1b}
give @s minecraft:paper{display:{Name:'[{"text":"Paper of trade creating"}]',Lore:['[{"text":"Warning!","color":"red","bold":true},{"text":" This feature will clear ALL tradingearly created so create a new villager if you need to use this feature","color":"red","bold":false}]']},Tags:["custom_trade"]} 1
scoreboard players set @s trading_items 0
scoreboard players enable @s trading_items