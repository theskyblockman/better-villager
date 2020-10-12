tp @e[tag=pnj2,distance=..5,type=minecraft:villager] ~ ~40 ~
kill @e[tag=pnj2,distance=..50,type=minecraft:villager]
# ,nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:2}}}
scoreboard players set @a[scores={detect3=1..,cooldownlvl1=1..},limit=1,sort=random] detect3 0