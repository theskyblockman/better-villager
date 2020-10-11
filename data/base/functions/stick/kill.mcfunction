tp @e[tag=pnj,distance=..5,type=minecraft:villager] ~ ~40 ~
kill @e[tag=pnj,distance=..50,type=minecraft:villager]
# ,nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball"}}}
scoreboard players set @a[scores={detect2=1..,cooldown=1..}] detect2 0