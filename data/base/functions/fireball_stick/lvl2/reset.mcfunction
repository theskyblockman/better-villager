scoreboard players set @s cooldownlvl2 3
scoreboard players set @s detect4 0
kill @e[type=villager,tag=pnj2,distance=..5,limit=1]
execute at @s run summon fireball ~ ~1 ~2 {ExplosionPower: 1, Tags: ["firespell2"]}
execute at @s run summon fireball ~ ~1 ~-2 {ExplosionPower: 1, Tags: ["firespell2"]}
execute at @s run summon fireball ~2 ~1 ~ {ExplosionPower: 1, Tags: ["firespell2"]}
execute at @s run summon fireball ~-2 ~1 ~ {ExplosionPower: 1, Tags: ["firespell2"]}