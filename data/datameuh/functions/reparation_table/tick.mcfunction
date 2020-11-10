execute as @e[type=armor_stand,nbt={HandItems:[{id:"minecraft:bow"}, {}]}] unless data entity @s HandItems[{tag:{Damage: 0}}] if score @p repair_point matches 15.. run scoreboard players set remove_point repair_point 15
execute as @e[type=armor_stand,nbt={HandItems:[{id:"minecraft:bow"}, {}]}] unless data entity @s HandItems[{tag:{Damage: 0}}] at @s if score @p repair_point matches 15.. run function datameuh:reparation_table/reset
execute as @e[type=area_effect_cloud,tag=summon_crafting_table, limit=1] at @s run function datameuh:reparation_table/summon
execute as @e[type=armor_stand,tag=repair_table_armor_stand] at @s unless block ~ ~0.25 ~ fletching_table run kill @s

# génération automatique