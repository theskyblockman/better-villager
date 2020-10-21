# type = manuelle, id = datameuh:fireball_stick/lvl2/reset

scoreboard players set @s cooldownlvl2 3
scoreboard players set @s detect4 0
kill @e[type=villager,tag=pnj2,distance=..5,limit=1]
execute at @s run summon fireball ^1 ^1 ^2 {ExplosionPower: 1, Tags: ["firespell2"]}
execute at @s run summon fireball ^-1 ^1 ^2 {ExplosionPower: 1, Tags: ["firespell2"]}