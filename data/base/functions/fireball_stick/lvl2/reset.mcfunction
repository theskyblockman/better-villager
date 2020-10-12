scoreboard players set @s cooldownlvl1 3
scoreboard players set @s detect4 0
tp @e[type=villager,tag=pnj2,distance=..5] ~ ~40 ~
execute at @s align y run summon fireball ^ ^1 ^1.9 {ExplosionPower: 1}
execute at @s align y run summon fireball ^ ^1 ^-1.9 {ExplosionPower: 1}
execute at @s align y run summon fireball ^1.9 ^1 ^ {ExplosionPower: 1}
execute at @s align y run summon fireball ^-1.9 ^1 ^ {ExplosionPower: 1}