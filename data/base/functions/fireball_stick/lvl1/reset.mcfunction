scoreboard players set @s cooldownlvl1 3
scoreboard players set @s detect1 0
tp @e[type=villager,tag=pnj,distance=..5] ~ ~40 ~
execute at @s run summon fireball ^ ^1 ^1 {ExplosionPower: 1}