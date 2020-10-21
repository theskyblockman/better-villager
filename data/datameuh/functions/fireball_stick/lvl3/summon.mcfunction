# type = manuelle, id = datameuh:fireball_stick/lvl3/summon

summon minecraft:villager ~ ~4 ~ {Tags:["pnj3"],Profession:0,Career:1,CareerLevel:42,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockback_resistance",Base:"1f"},{Name:"generic.movement_speed",Base:"0f"},{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[]},ActiveEffects:[{Id:14,Amplifier:200,Duration:200000000,ShowParticles:0b}]}
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{spell:"fireball",level:3}}},scores={detect5=0}] detect5 1