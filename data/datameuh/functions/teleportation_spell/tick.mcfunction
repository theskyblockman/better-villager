# type = tick, id = datameuh:teleportation_spell/tick

execute if entity @a[nbt={SelectedItem:{tag:{spell:"teleport"}}},scores={carrotonastick=1..},predicate=!datameuh:sneak] run say used
execute as @a[nbt={SelectedItem:{tag:{spell:"teleport"}}},scores={carrotonastick=1..},predicate=!datameuh:sneak] if entity @s run scoreboard players set @s carrotonastick 0
execute as @a[nbt={SelectedItem:{tag:{spell:"teleport"}}},scores={carrotonastick=1..},predicate=datameuh:sneak] if entity @s run scoreboard players set @s carrotonastick 0