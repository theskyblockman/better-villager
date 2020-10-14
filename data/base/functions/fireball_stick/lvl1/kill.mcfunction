tp @e[tag=pnj1,distance=..5,type=minecraft:villager] ~ ~4 ~
kill @e[tag=pnj1,distance=..5,type=minecraft:villager]
scoreboard players set @a[scores={detect2=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] detect2 0