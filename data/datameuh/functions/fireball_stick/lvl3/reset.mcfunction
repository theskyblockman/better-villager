# type = manuelle, id = datameuh:fireball_stick/lvl3/reset

scoreboard players set @s cooldownlvl3 3
scoreboard players set @s detect6 0
kill @e[type=villager,tag=pnj3,distance=..5,limit=1]
execute at @s run summon fireball ^1.5 ^1 ^2 {ExplosionPower: 1, Tags: ["firespell3"]}
execute at @s run summon fireball ^ ^1 ^2 {ExplosionPower: 1, Tags: ["firespell3"]}
execute at @s run summon fireball ^-1.5 ^1 ^2 {ExplosionPower: 1, Tags: ["firespell3"]}