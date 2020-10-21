# type = tick, id = datameuh:fireball_stick/lvl1/tick

# à la position de 1 joueur qui n'a pas deja un blaze rod dans sa main qui ne sneak pas et qui a le cooldown à 0 si il n'a pas deja un villageois (pour éviter les bugs) lancer la fonction datameuh:fireball_stick/lvl1/summon
execute at @a[scores={detect2=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] unless entity @e[type=fireball,tag=firespell,limit=1,distance=..4] run function datameuh:fireball_stick/lvl1/summon

# à la position de 1 joueur qui a le blaze rod dans la main qui a deja lancer un boule de feu à coter de lui l'ampêcher d'en créer un nouvelle pour éviter les lags 
execute as @a[scores={detect2=0..1,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] at @s if entity @e[type=fireball,tag=firespell,limit=1,distance=..4] run title @s actionbar {"text":"merci de tirer votre première boule de feu pour en lancer une autre","color": "red"}

# à la position de 1 joueur qui a le blaze rod dans la main dire au dessus de sa hotbar que son sort est prêt
execute as @a[scores={cooldownlvl1=0,detect2=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] at @s if entity @e[tag=firespell,type=fireball,distance=..4] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]

# jouer des particules de feu
execute as @a[scores={cooldownlvl1=1..3}] at @s run particle flame ~ ~1 ~ 0.0 0.0 0.0 0.06 1 normal
execute as @a[scores={cooldownlvl1=1..3}] at @s run particle minecraft:lava ^ ^ ^3 0.0 0.0 0.0 0.5 2 normal

# si il n'a plus son bâton dans la main tuer le villageois donc appeler la fonction datameuh:fireball_stick/lvl1/kill
execute as @a[scores={detect2=0,cooldownlvl1=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] at @s if entity @e[type=fireball,tag=firespell,limit=1,distance=..4] run function datameuh:fireball_stick/lvl1/kill
execute at @a[scores={detect2=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] run function datameuh:fireball_stick/lvl1/kill
execute at @a[scores={cooldownlvl1=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] run function datameuh:fireball_stick/lvl1/kill

# tp le villagois au joueur
tp @e[type=minecraft:villager,tag=pnj1] @a[limit=1,sort=nearest,scores={detect2=1..}]
# lui retirer les colission (équipe créer dans datameuh:load)
team join collision @e[tag=pnj1]
# rendre le villageois invisible
effect give @e[tag=pnj1] invisibility 1000000 255 true

# si le joueur utilise le sort appeler la fonction datameuh:fireball_stick/lvl1/reset
execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},scores={detect1=1..},predicate=!datameuh:sneak] if entity @s run function datameuh:fireball_stick/lvl1/reset
# dire le cooldown au dessus de la hotbar
title @a[scores={cooldownlvl1=1..3},predicate=!datameuh:sneak] actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@a[scores={cooldownlvl1=1..3},limit=1]","objective":"cooldownlvl1"},"color": "red"}]
# dire que le sort est prêt
title @a[scores={cooldownlvl1=0,detect2=1},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] actionbar [{"text": "Temps de recharge : ","color": "green"},{"text":"Prêt","color": "red"}]


# si il n'az pas le villafeois le faire apparaitre (pour fixer le bug car on ne pouver pas utiliser 2 fois le sort sans changer de sclot à chaque fois)
execute at @a[scores={detect2=1..,cooldownlvl1=0},limit=1,nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}},predicate=!datameuh:sneak] unless entity @e[tag=pnj1,distance=..5] run summon minecraft:villager ~ ~4 ~ {Tags:["pnj1"],Profession:0,Career:1,CareerLevel:42,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockback_resistance",Base:"1f"},{Name:"generic.movement_speed",Base:"0f"},{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[]},ActiveEffects:[{Id:14,Amplifier:200,Duration:200000000,ShowParticles:0b}]}

# retirer le bug qui active les autres sort automatiquement
execute as @a[scores={detect2=1..}] run scoreboard players set @s detect4 0
execute as @a[scores={detect2=1..}] run scoreboard players set @s detect6 0
execute as @a[scores={detect2=1..}] run scoreboard players set @s detect10 0