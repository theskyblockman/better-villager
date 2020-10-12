tellraw @a [{"text": "[datameuh]","color": "red"},{"text": " le datapack à bien été reload","color": "green"}]
scoreboard objectives add detect2 dummy
scoreboard objectives add cooldownlvl1 dummy
scoreboard objectives add detect1 minecraft.custom:minecraft.damage_dealt
scoreboard players set @a detect1 0
scoreboard players set @a detect2 0
team add collision
team modify collision collisionRule never
scoreboard players set 1 cooldownlvl1 1