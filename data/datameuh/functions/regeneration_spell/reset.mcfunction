# type = manuelle, id = datameuh:regeneration_spell/reset

scoreboard players set @s cooldownlvl4 7
scoreboard players set @s detect10 0
kill @e[type=villager,tag=pnj4,distance=..5,limit=1]
execute at @s run summon area_effect_cloud ~ ~ ~ {Potion: "minecraft:strong_regeneration", Particle: "minecraft:entity_effect",Duration:60}
playsound ambient.underwater.exit player @a[distance=..5] ~ ~ ~ 10