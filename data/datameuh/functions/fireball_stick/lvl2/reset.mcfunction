# type = manuelle, id = datameuh:fireball_stick/lvl2/reset

# mettre le cooldown à 3
scoreboard players set @s cooldownlvl2 3
# déclarer que le sort a bien été utiliser
scoreboard players set @s detect4 0

# teleporter le villageois 4 blocks au dessus du joueur pour ne pas voir les particules de mort
tp @e[type=villager,tag=pnj2,distance=..5,limit=1] ~ ~4 ~
# tuer le villageois
kill @e[type=villager,tag=pnj2,distance=..5,limit=1]
# faire apparaitre 2 boules de feu
execute at @s run summon fireball ^1 ^1 ^2 {ExplosionPower: 1, Tags: ["firespell2"]}
execute at @s run summon fireball ^-1 ^1 ^2 {ExplosionPower: 1, Tags: ["firespell2"]}