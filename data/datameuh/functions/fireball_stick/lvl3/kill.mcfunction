tp @e[tag=pnj3,distance=..5,type=minecraft:villager] ~ ~4 ~
kill @e[tag=pnj3,distance=..5,type=minecraft:villager]
scoreboard players set @a[scores={detect5=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}}] detect5 0