# type = load, id = datameuh:load

tellraw @a [{"text": "[datameuh]","color": "red"},{"text": " le datapack à bien été reload","color": "green"}]
scoreboard objectives add detect2 dummy
scoreboard objectives add detect3 dummy
scoreboard objectives add detect5 dummy
scoreboard objectives add detect11 dummy

scoreboard objectives add cooldownlvl1 dummy
scoreboard objectives add cooldownlvl2 dummy
scoreboard objectives add cooldownlvl3 dummy
scoreboard objectives add cooldownlvl4 dummy
scoreboard objectives add cooldownlvl5 dummy
scoreboard objectives add cooldownlvl6 dummy

scoreboard objectives add detect1 minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add detect4 minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add detect6 minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add detect10 minecraft.custom:minecraft.talked_to_villager

scoreboard objectives add milkbucket minecraft.used:minecraft.milk_bucket

scoreboard objectives add carrotonastick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add carrotonastick2 minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add killer minecraft.custom:minecraft.player_kills
scoreboard objectives add killed minecraft.custom:minecraft.deaths

scoreboard objectives add freeze minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add lifetime dummy

scoreboard objectives add repair_point dummy [{"text":"r","color":"red"},{"text":"e","color":"#ec3f50"},{"text":"p","color":"#db3e61"},{"text":"a","color":"#c93f73"},{"text":"i","color":"#b83f84"},{"text":"r ","color":"#a73f95"},{"text":"p","color":"#953fa7"},{"text":"o","color":"#843fb8"},{"text":"i","color":"#733fc9"},{"text":"n","color":"#613fdb"},{"text":"t","color":"#503fec"},{"text":"s","color":"blue"}]

scoreboard players set @a detect1 0
scoreboard players set @a detect2 0
scoreboard players set @a detect3 0
scoreboard players set @a detect4 0
scoreboard players set @a detect5 0
scoreboard players set @a detect6 0
scoreboard players set @a detect10 0
scoreboard players set @a detect11 0

scoreboard players set @a cooldownlvl1 0
scoreboard players set @a cooldownlvl2 0
scoreboard players set @a cooldownlvl3 0
scoreboard players set @a cooldownlvl4 0
scoreboard players set @a cooldownlvl5 0
scoreboard players set @a cooldownlvl6 0

team add collision
team modify collision collisionRule never

scoreboard players set 1 cooldownlvl1 1
gamerule showDeathMessages false

# génération auto
scoreboard objectives add trigger_0 trigger

scoreboard objectives add trigger_0 trigger

scoreboard objectives add trigger_1 trigger

scoreboard objectives add trigger_0 trigger

scoreboard objectives add trigger_1 trigger

scoreboard objectives add trigger_0 trigger
