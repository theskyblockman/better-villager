# type = tick, id = datameuh:fireball_stick/lvl2/tick

execute at @a[scores={detect3=0,cooldownlvl2=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},predicate=!datameuh:sneak] unless entity @e[type=fireball,tag=firespell2,limit=1,distance=..4] run function datameuh:fireball_stick/lvl2/summon

execute as @a[scores={detect3=0..1,cooldownlvl2=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},predicate=!datameuh:sneak] at @s if entity @e[type=fireball,tag=firespell2,limit=1,distance=..4] run title @s actionbar {"text":"Merci de tirer votre première boule de feu avant d'en lancer une nouvelle.","color": "red"}

execute as @a[scores={cooldownlvl2=0,detect3=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},predicate=!datameuh:sneak] at @s if entity @e[tag=firespell2,type=fireball,distance=..4] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]

execute as @a[scores={cooldownlvl2=1..3},predicate=!datameuh:sneak] at @s run particle flame ~ ~1 ~ 0.0 0.0 0.0 0.06 1 normal
execute as @a[scores={cooldownlvl2=1..3},predicate=!datameuh:sneak] at @s run particle minecraft:lava ^ ^ ^3 0 0 0 0.5 2 normal

execute as @a[scores={detect3=0,cooldownlvl2=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},predicate=!datameuh:sneak] at @s if entity @e[type=fireball,tag=firespell2,limit=1,distance=..4] run function datameuh:fireball_stick/lvl2/kill
execute at @a[scores={detect3=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},predicate=!datameuh:sneak] run function datameuh:fireball_stick/lvl2/kill
execute at @a[scores={cooldownlvl2=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},predicate=!datameuh:sneak] run function datameuh:fireball_stick/lvl2/kill
tp @e[type=minecraft:villager,tag=pnj2] @a[limit=1,sort=nearest,scores={detect3=1..}]
team join collision @e[tag=pnj2]
effect give @e[tag=pnj2] invisibility 1000000 255 true
# fireball spell
  # lvl 1 detect3=dummy detect4=damage_dealth  @a[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}
execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},scores={detect4=1..},predicate=!datameuh:sneak] if entity @s run function datameuh:fireball_stick/lvl2/reset
title @a[scores={cooldownlvl2=1..3}] actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@a[scores={cooldownlvl2=1..3},limit=1]","objective":"cooldownlvl2"},"color": "red"}]
title @a[scores={cooldownlvl2=0,detect3=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},predicate=!datameuh:sneak] actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]


execute at @a[scores={detect3=1..,cooldownlvl2=0},limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},predicate=!datameuh:sneak] unless entity @e[tag=pnj2,distance=..5] run summon minecraft:villager ~ ~4 ~ {Tags:["pnj2"],Profession:0,Career:1,CareerLevel:42,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockback_resistance",Base:"1f"},{Name:"generic.movement_speed",Base:"0f"},{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[]},ActiveEffects:[{Id:14,Amplifier:200,Duration:200000000,ShowParticles:0b}]}
  #lvl 2 detect3=dummy detect4=damage_dealth  @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}


execute as @a[scores={detect3=1..}] run scoreboard players set @s detect1 0
execute as @a[scores={detect3=1..}] run scoreboard players set @s detect6 0
execute as @a[scores={detect3=1..}] run scoreboard players set @s detect10 0

# regeneration