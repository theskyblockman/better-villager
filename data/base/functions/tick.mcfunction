# fireball spell
  # lvl 1

execute as @a[scores={detect2=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] at @s run function base:fireball_stick/lvl1/summon
execute as @a[scores={detect2=1..,cooldownlvl1=1..}] if entity @s at @s run function base:fireball_stick/lvl1/kill
execute at @a[scores={detect2=1..,cooldownlvl1=0}, limit=1] run tp @e[tag=pnj,type=villager,distance=..50] ~ ~1 ~ 
execute as @a[scores={detect2=1..,detect1=1..}] if entity @s run function base:fireball_stick/lvl1/reset
team join collision @e[tag=pnj]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run function base:fireball_stick/lvl1/kill
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run tp @e[tag=pnj] ~ ~40 ~
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run kill @e[tag=pnj]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run scoreboard players set @s detect2 0
execute as @a[scores={cooldownlvl1=1..3},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] if entity @s run title @s actionbar ["",{"text":"cooldown : ","color": "green"},{"score":{"name":"@s","objective":"cooldownlvl1"},"color": "red"}]

  #lvl 2

# regeneration spell

