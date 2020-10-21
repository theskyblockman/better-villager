# type = manuelle, id = datameuh:fireball_stick/lvl1/kill

# tp tout les villager à la position du joueur qui tiens l'item à 4 blocks de haut pour ne pas voir les particules
tp @e[tag=pnj1,distance=..5,type=minecraft:villager] ~ ~4 ~
# tuer le villager au dessus du joueur  
kill @e[tag=pnj1,distance=..5,type=minecraft:villager]
# déclarer que l'entité est éliminer dans un score
scoreboard players set @a[scores={detect2=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:1}}}] detect2 0