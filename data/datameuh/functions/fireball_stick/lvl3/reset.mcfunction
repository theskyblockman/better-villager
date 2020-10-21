# type = manuelle, id = datameuh:fireball_stick/lvl3/reset

# mettre le cooldown à 3
scoreboard players set @s cooldownlvl3 3
# déclarer que la fonction a bien été executer
scoreboard players set @s detect6 0
# tp le villageois
tp @e[type=villager,tag=pnj3,distance=..5,limit=1] ~ ~4 ~
# tuer le villageois
kill @e[type=villager,tag=pnj3,distance=..5,limit=1]
# faire apparaitre 3 boules de feu
execute at @s run summon fireball ^1.5 ^1 ^2 {ExplosionPower: 1, Tags: ["firespell3"]}
execute at @s run summon fireball ^ ^1 ^2 {ExplosionPower: 1, Tags: ["firespell3"]}
execute at @s run summon fireball ^-1.5 ^1 ^2 {ExplosionPower: 1, Tags: ["firespell3"]}