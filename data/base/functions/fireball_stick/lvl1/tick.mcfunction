execute at @a[scores={detect2=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] unless entity @e[type=fireball,tag=firespell,limit=1,distance=..4] run function base:fireball_stick/lvl1/summon

execute as @a[scores={detect2=0..1,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] at @s if entity @e[type=fireball,tag=firespell,limit=1,distance=..4] run title @s actionbar {"text":"merci de tirer votre première boule de feu pour en lancer une autre","color": "red"}

execute as @a[scores={cooldownlvl1=0,detect2=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] at @s if entity @e[tag=firespell,type=fireball,distance=..4] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]

execute as @a[scores={cooldownlvl1=1..3}] at @s run particle flame ^-0.23 ^0.9 ^0.9 0 0 0 0.06 1 normal

execute as @a[scores={detect2=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] at @s if entity @e[type=fireball,tag=firespell,limit=1,distance=..4] run function base:fireball_stick/lvl1/kill
execute at @a[scores={detect2=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run function base:fireball_stick/lvl1/kill
execute at @a[scores={cooldownlvl1=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run function base:fireball_stick/lvl1/kill
tp @e[type=minecraft:villager,tag=pnj1] @a[limit=1,sort=nearest,scores={detect2=1..}]
team join collision @e[tag=pnj1]
effect give @e[tag=pnj1] invisibility 1000000 255 true
# fireball spell
  # lvl 1 detect3=dummy detect4=damage_dealth  @a[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}
execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},scores={detect1=1..}] if entity @s run function base:fireball_stick/lvl1/reset
title @a[scores={cooldownlvl1=1..3}] actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@a[scores={cooldownlvl1=1..3},limit=1]","objective":"cooldownlvl1"},"color": "red"}]
title @a[scores={cooldownlvl1=0,detect2=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]

  #lvl 2 detect3=dummy detect4=damage_dealth  @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}




# regeneration