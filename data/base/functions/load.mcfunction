tellraw @a [{"text": "[datameuh]","color": "red"},{"text": " le datapack à bien été reload","color": "green"}]
scoreboard objectives add detect2 dummy
scoreboard objectives add detect3 dummy
scoreboard objectives add detect5 dummy

scoreboard objectives add cooldownlvl1 dummy
scoreboard objectives add cooldownlvl2 dummy
scoreboard objectives add cooldownlvl3 dummy

scoreboard objectives add detect1 minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add detect4 minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add detect6 minecraft.custom:minecraft.talked_to_villager

scoreboard objectives add milkbucket minecraft.used:minecraft.milk_bucket

scoreboard players set @a detect1 0
scoreboard players set @a detect2 0
scoreboard players set @a detect3 0
scoreboard players set @a detect4 0
scoreboard players set @a detect5 0
scoreboard players set @a detect6 0

scoreboard players set @a cooldownlvl1 0
scoreboard players set @a cooldownlvl2 0
scoreboard players set @a cooldownlvl3 0

team add collision
team modify collision collisionRule never

scoreboard players set 1 cooldownlvl1 1
scoreboard players set 1 cooldownlvl2 1
scoreboard players set 1 cooldownlvl3 1