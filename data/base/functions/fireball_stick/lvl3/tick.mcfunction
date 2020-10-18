execute at @a[scores={detect5=0,cooldownlvl3=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}},predicate=!base:sneak] unless entity @e[type=fireball,tag=firespell3,limit=1,distance=..4] run function base:fireball_stick/lvl3/summon

execute as @a[scores={detect5=0..1,cooldownlvl3=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}},predicate=!base:sneak] at @s if entity @e[type=fireball,tag=firespell3,limit=1,distance=..4] run title @s actionbar {"text":"merci de tirer votre première boule de feu pour en lancer une autre","color": "red"}

execute as @a[scores={cooldownlvl3=0,detect5=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}},predicate=!base:sneak] at @s if entity @e[tag=firespell3,type=fireball,distance=..4] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]

execute as @a[scores={cooldownlvl3=1..3}] at @s run particle flame ~ ~1 ~ 0 0 0 0.06 1 normal
execute as @a[scores={cooldownlvl3=1..3}] at @s run particle minecraft:lava ^ ^ ^3 0 0 0 0.5 2 normal

execute as @a[scores={detect5=0,cooldownlvl3=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}},predicate=!base:sneak] at @s if entity @e[type=fireball,tag=firespell3,limit=1,distance=..4] run function base:fireball_stick/lvl3/kill
execute at @a[scores={detect5=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}},predicate=!base:sneak] run function base:fireball_stick/lvl3/kill
execute at @a[scores={cooldownlvl3=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}},predicate=!base:sneak] run function base:fireball_stick/lvl3/kill
tp @e[type=minecraft:villager,tag=pnj3] @a[limit=1,sort=nearest,scores={detect5=1..}]
team join collision @e[tag=pnj3]
effect give @e[tag=pnj3] invisibility 1000000 255 true
# fireball spell
  # lvl 1 detect3=dummy detect4=damage_dealth  @a[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}}
execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}},scores={detect6=1..},predicate=!base:sneak] if entity @s run function base:fireball_stick/lvl3/reset
title @a[scores={cooldownlvl3=1..3},predicate=!base:sneak] actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@a[scores={cooldownlvl3=1..3},limit=1]","objective":"cooldownlvl3"},"color": "red"}]
title @a[scores={cooldownlvl3=0,detect5=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}},predicate=!base:sneak] actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]

  #lvl 2 detect3=dummy detect4=damage_dealth  @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}




# regeneration