scoreboard players set @s cooldownlvl1 3
scoreboard players set @s detect1 0
kill @e[type=villager,tag=pnj1,distance=..5,limit=1]
execute at @s run summon fireball ^ ^1 ^1 {ExplosionPower: 1}