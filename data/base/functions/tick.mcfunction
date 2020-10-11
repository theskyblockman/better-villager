execute as @a[scores={detect2=0,cooldown=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball"}}}] at @s run function base:stick/summon
# nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball"}}}
execute as @a[scores={detect2=1..,cooldown=1..}] if entity @s at @s run function base:stick/kill
execute at @a[scores={detect2=1..,cooldown=0}, limit=1] run tp @e[tag=pnj,type=villager] ~ ~1 ~ 
execute as @a[scores={detect2=1..,detect1=1..}] if entity @s run function base:stick/reset
team join collision @e[tag=pnj]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball"}}}] run function base:stick/kill
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball"}}}] run kill @e[tag=pnj]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball"}}}] run scoreboard players set @s detect2 0
execute as @a[scores={cooldown=1..3},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball"}}}] if entity @s run title @s actionbar ["",{"text":"Cooldown : ","color": "green"},{"score":{"name":"@s","objective":"cooldown"},"color": "red"}]