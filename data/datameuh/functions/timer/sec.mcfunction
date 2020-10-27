# type = schedule, temps = 1s, id = datameuh:timer/sec

scoreboard players operation @a[scores={cooldownlvl1=1..3}] cooldownlvl1 -= 1 cooldownlvl1
scoreboard players operation @a[scores={cooldownlvl2=1..3}] cooldownlvl2 -= 1 cooldownlvl1
scoreboard players operation @a[scores={cooldownlvl3=1..3}] cooldownlvl3 -= 1 cooldownlvl1
scoreboard players operation @a[scores={cooldownlvl4=1..10}] cooldownlvl4 -= 1 cooldownlvl1
scoreboard players operation @a[scores={cooldownlvl5=1..10}] cooldownlvl5 -= 1 cooldownlvl1
scoreboard players operation @a[scores={cooldownlvl6=1..5}] cooldownlvl6 -= 1 cooldownlvl1
schedule function datameuh:timer/sec 1s