execute as @a[limit=1,nbt={Inventory:[{Slot: -106b, tag:{spell:"regeneration"}}]},scores={detect11=0,cooldownlvl4=0}] if entity @s at @s run function base:regeneration_spell/summon
execute as @a[limit=1,nbt=!{Inventory:[{Slot: -106b, tag:{spell:"regeneration"}}]},scores={detect11=1..}] if entity @s at @s run function base:regeneration_spell/kill
execute as @e[scores={detect10=1..},nbt={Inventory:[{Slot: -106b, tag:{spell:"regeneration"}}]}] if entity @s at @s run function base:regeneration_spell/reset
execute at @e[tag=pnj4] at @a[sort=nearest,scores={detect11=1..}] run tp @e[type=villager,tag=pnj4] ~ ~1 ~
team join collision @e[tag=pnj4]
execute as @a[scores={cooldownlvl4=1..10}] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@s","objective":"cooldownlvl4"},"color": "red"}]