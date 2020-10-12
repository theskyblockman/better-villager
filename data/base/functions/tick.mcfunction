# fireball spell
  # lvl 1

execute as @a[scores={detect2=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] at @s run function base:fireball_stick/lvl1/summon
execute as @a[scores={detect2=1..,cooldownlvl1=1..}] if entity @s at @s run function base:fireball_stick/lvl1/kill
execute at @a[scores={detect2=1..,cooldownlvl1=0}, limit=1] run tp @e[tag=pnj1,type=villager,distance=..50] ~ ~1 ~ 
execute as @a[scores={detect2=1..,detect1=1..}] if entity @s run function base:fireball_stick/lvl1/reset
team join collision @e[tag=pnj1]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run function base:fireball_stick/lvl1/kill
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run tp @e[tag=pnj1] ~ ~40 ~
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run kill @e[tag=pnj1]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run scoreboard players set @s detect2 0
execute as @a[scores={cooldownlvl1=1..3},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] if entity @s run title @s actionbar ["",{"text":"cooldown : ","color": "green"},{"score":{"name":"@s","objective":"cooldownlvl1"},"color": "red"}]

  #lvl 2

# regeneration spell

execute as @a[scores={detect3=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] at @s run function base:fireball_stick/lvl2/summon
execute as @a[scores={detect3=1..,cooldownlvl1=1..}] if entity @s at @s run function base:fireball_stick/lvl2/kill
execute at @a[scores={detect3=1..,cooldownlvl1=0}, limit=1] run tp @e[tag=pnj2,type=villager,distance=..50] ~ ~1 ~ 
execute as @a[scores={detect3=1..,detect4=1..}] if entity @s run function base:fireball_stick/lvl2/reset
team join collision @e[tag=pnj2]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] run function base:fireball_stick/lvl2/kill
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] run tp @e[tag=pnj2] ~ ~40 ~
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] run kill @e[tag=pnj2]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] run scoreboard players set @s detect3 0
execute as @a[scores={cooldownlvl1=1..3},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] if entity @s run title @s actionbar ["",{"text":"cooldown : ","color": "green"},{"score":{"name":"@s","objective":"cooldownlvl1"},"color": "red"}]