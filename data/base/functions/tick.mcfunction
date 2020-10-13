execute at @a[scores={detect2=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run function base:fireball_stick/lvl1/summon
execute at @a[scores={detect2=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run function base:fireball_stick/lvl1/kill
execute at @a[scores={cooldownlvl1=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] run function base:fireball_stick/lvl1/kill
tp @e[type=minecraft:villager,tag=pnj1] @a[limit=1,sort=nearest,scores={detect2=1..}]
team join collision @e[tag=pnj1]
effect give @e[tag=pnj1] invisibility 1000000 255 true
# fireball spell
  # lvl 1 detect3=dummy detect4=damage_dealth  @a[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}
execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},scores={detect1=1..}] if entity @s run function base:fireball_stick/lvl1/reset
title @a[scores={cooldownlvl1=1..3}] actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@a[scores={cooldownlvl1=1..3},limit=1]","objective":"cooldownlvl1"},"color": "red"}]

  #lvl 2 detect3=dummy detect4=damage_dealth  @a[nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}




# regeneration

#test
