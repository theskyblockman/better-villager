execute at @a[scores={detect3=0,cooldownlvl2=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] unless entity @e[type=fireball,tag=firespell2,limit=1,distance=..4] run function base:fireball_stick/lvl2/summon

execute as @a[scores={detect3=0..1,cooldownlvl2=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] at @s if entity @e[type=fireball,tag=firespell2,limit=1,distance=..4] run title @s actionbar {"text":"Merci de tirer votre première boule de feu avant d'en lancer une nouvelle.","color": "red"}

execute as @a[scores={cooldownlvl2=0,detect3=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] at @s if entity @e[tag=firespell2,type=fireball,distance=..4] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]

execute as @a[scores={cooldownlvl2=1..3}] at @s run particle flame ~ ~1 ~ 0.0 0.0 0.0 0.06 1 normal
execute as @a[scores={cooldownlvl2=1..3}] at @s run particle minecraft:lava ^ ^ ^3 0 0 0 0.5 2 normal

execute as @a[scores={detect3=0,cooldownlvl2=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] at @s if entity @e[type=fireball,tag=firespell2,limit=1,distance=..4] run function base:fireball_stick/lvl2/kill
execute at @a[scores={detect3=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] run function base:fireball_stick/lvl2/kill
execute at @a[scores={cooldownlvl2=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] run function base:fireball_stick/lvl2/kill
tp @e[type=minecraft:villager,tag=pnj2] @a[limit=1,sort=nearest,scores={detect3=1..}]
team join collision @e[tag=pnj2]
effect give @e[tag=pnj2] invisibility 1000000 255 true
# fireball spell
  # lvl 1 detect3=dummy detect4=damage_dealth  @a[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}
execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}},scores={detect4=1..}] if entity @s run function base:fireball_stick/lvl2/reset
title @a[scores={cooldownlvl2=1..3}] actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@a[scores={cooldownlvl2=1..3},limit=1]","objective":"cooldownlvl2"},"color": "red"}]
title @a[scores={cooldownlvl2=0,detect3=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]

  #lvl 2 detect3=dummy detect4=damage_dealth  @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}




# regeneration