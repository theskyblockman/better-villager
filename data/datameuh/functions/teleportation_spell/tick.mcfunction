# type = tick, id = datameuh:teleportation_spell/tick

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{spell:"teleport"}}]},scores={carrotonastick=1..,cooldownlvl5=0},predicate=datameuh:sneak] if entity @s at @s positioned ^ ^ ^15 run spreadplayers ~ ~ 0 1.0 false @s
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{spell:"teleport"}}]},scores={carrotonastick=1..,cooldownlvl5=0},predicate=datameuh:sneak] if entity @s at @s positioned ^ ^ ^15 run scoreboard players set @s cooldownlvl5 10
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{spell:"teleport"}}]},scores={carrotonastick=1..,cooldownlvl5=0},predicate=datameuh:sneak] if entity @s run scoreboard players set @s carrotonastick 0
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{spell:"teleport"}}]},scores={carrotonastick=1..,cooldownlvl5=0}] if entity @s run scoreboard players set @s carrotonastick 0
execute as @a[scores={carrotonastick=1..,cooldownlvl5=0},predicate=!datameuh:sneak] if entity @s run scoreboard players set @s carrotonastick 0
execute as @a[scores={carrotonastick=1..,cooldownlvl5=1..}] if entity @s run scoreboard players set @s carrotonastick 0
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{spell:"teleport"}}]},predicate=datameuh:sneak,scores={cooldownlvl5=0}] anchored eyes if entity @s at @s run particle crit ^ ^ ^15 0 0 0 0.03 3 normal @a
execute as @a[scores={cooldownlvl5=1..10},predicate=datameuh:sneak,nbt={Inventory:[{Slot: -106b, tag:{spell:"teleport"}}]}] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@s","objective":"cooldownlvl5"},"color": "red"}]
execute as @a[scores={cooldownlvl5=0},predicate=datameuh:sneak,nbt={Inventory:[{Slot: -106b, tag:{spell:"teleport"}}]}] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"text": "Prêt","color": "red"}]