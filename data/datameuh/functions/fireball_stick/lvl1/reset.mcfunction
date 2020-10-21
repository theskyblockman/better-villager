# type = manuelle, id = datameuh:fireball_stick/lvl1/reset

# mettre le cooldown à 3
scoreboard players set @s cooldownlvl1 3
# supprimer l'ancien score de détection
scoreboard players set @s detect1 0
# tuer le villager pour éviter les bugs
kill @e[type=villager,tag=pnj1,distance=..5,limit=1]
# faire apparaitre la boule de feu
execute at @s run summon fireball ^ ^1 ^1.5 {ExplosionPower: 1, Tags: ["firespell"]}