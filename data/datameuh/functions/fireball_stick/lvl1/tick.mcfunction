# type = tick, id = datameuh:fireball_stick/lvl1/tick

execute at @a[scores={detect2=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] unless entity @e[type=fireball,tag=firespell,limit=1,distance=..4] run function datameuh:fireball_stick/lvl1/summon

execute as @a[scores={detect2=0..1,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] at @s if entity @e[type=fireball,tag=firespell,limit=1,distance=..4] run title @s actionbar {"text":"merci de tirer votre première boule de feu pour en lancer une autre","color": "red"}

execute as @a[scores={cooldownlvl1=0,detect2=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] at @s if entity @e[tag=firespell,type=fireball,distance=..4] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]

execute as @a[scores={cooldownlvl1=1..3}] at @s run particle flame ~ ~1 ~ 0.0 0.0 0.0 0.06 1 normal
execute as @a[scores={cooldownlvl1=1..3}] at @s run particle minecraft:lava ^ ^ ^3 0.0 0.0 0.0 0.5 2 normal

execute as @a[scores={detect2=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] at @s if entity @e[type=fireball,tag=firespell,limit=1,distance=..4] run function datameuh:fireball_stick/lvl1/kill
execute at @a[scores={detect2=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] run function datameuh:fireball_stick/lvl1/kill
execute at @a[scores={cooldownlvl1=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] run function datameuh:fireball_stick/lvl1/kill
tp @e[type=minecraft:villager,tag=pnj1] @a[limit=1,sort=nearest,scores={detect2=1..}]
team join collision @e[tag=pnj1]
effect give @e[tag=pnj1] invisibility 1000000 255 true
# fireball spell
  # lvl 1 detect3=dummy detect4=damage_dealth  @a[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}
execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},scores={detect1=1..},predicate=!datameuh:sneak] if entity @s run function datameuh:fireball_stick/lvl1/reset
title @a[scores={cooldownlvl1=1..3},predicate=!datameuh:sneak] actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@a[scores={cooldownlvl1=1..3},limit=1]","objective":"cooldownlvl1"},"color": "red"}]
title @a[scores={cooldownlvl1=0,detect2=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]


execute at @a[scores={detect2=1..,cooldownlvl1=0},limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] unless entity @e[tag=pnj1,distance=..5] run summon minecraft:villager ~ ~4 ~ {Tags:["pnj1"],Profession:0,Career:1,CareerLevel:42,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockback_resistance",Base:"1f"},{Name:"generic.movement_speed",Base:"0f"},{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[]},ActiveEffects:[{Id:14,Amplifier:200,Duration:200000000,ShowParticles:0b}]}
  #lvl 2 detect3=dummy detect4=damage_dealth  @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}

execute as @a[scores={detect2=1..}] run scoreboard players set @s detect4 0
execute as @a[scores={detect2=1..}] run scoreboard players set @s detect6 0
execute as @a[scores={detect2=1..}] run scoreboard players set @s detect10 0

# regenerationee