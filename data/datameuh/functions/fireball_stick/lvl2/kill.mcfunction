tp @e[tag=pnj2,distance=..5,type=minecraft:villager] ~ ~4 ~
kill @e[tag=pnj2,distance=..5,type=minecraft:villager]
scoreboard players set @a[scores={detect3=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}] detect3 0