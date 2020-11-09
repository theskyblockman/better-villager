# type = tick, id = datameuh:tick

execute as @a[scores={milkbucket=1..}] run tellraw @s [{"text":"tu aimes le lait ? tu en aura "},{"text":"ici","bold":true,"underlined":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://www.twitch.tv/boitameu"},"hoverEvent":{"action":"show_text","contents":"la chaine de boitameu"}}]
execute as @a[scores={milkbucket=1..}] run scoreboard players set @s milkbucket 0

execute if entity @a[scores={killer=1..},limit=1] run function datameuh:kill