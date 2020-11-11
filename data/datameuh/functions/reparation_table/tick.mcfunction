execute as @e[type=area_effect_cloud,tag=summon_crafting_table, limit=1] at @s run function datameuh:reparation_table/summon
execute as @e[type=armor_stand,tag=repair_table_armor_stand] at @s unless block ~ ~0.25 ~ fletching_table run kill @s
execute unless entity @e[type=armor_stand,nbt={HandItems:[{tag:{}}, {}]}] run scoreboard players reset remove_point repair_point

# génération automatique