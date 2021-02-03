##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################


give @s paper{"import_trades":1b, display:{Name:'[{"text":"Paper of importing trades", "italic": false}]'}}
give @s paper{"trading_items":1b, display:{Name:'[{"text":"Paper of destroying trades", "italic": false}]'}}
give @s minecraft:paper{display:{Name:'[{"text":"Paper of trade creating", "italic": false}]',Lore:['[{"text":"Warning!","color":"red","bold":true},{"text":" This feature will clear ALL trading early created and remove the villager A.I so create a new villager if you need to use this feature","color":"red","bold":false}]']},"custom_trade":1b} 1
scoreboard players set @s trading_items 0
scoreboard players enable @s trading_items