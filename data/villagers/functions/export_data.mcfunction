##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

data merge entity @e[type=villager,sort=nearest,limit=1] {Offers:{Recipes:[{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:air", Count: 1b}, sell: {id: "minecraft:air", Count: 1}, xp: 0, uses: 0, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:air", Count: 1b}, sell: {id: "minecraft:air", Count: 1}, xp: 0, uses: 0, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:air", Count: 1b}, sell: {id: "minecraft:air", Count: 1}, xp: 0, uses: 0, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:air", Count: 1b}, sell: {id: "minecraft:air", Count: 1}, xp: 0, uses: 0, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:air", Count: 1b}, sell: {id: "minecraft:air", Count: 1}, xp: 0, uses: 0, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:air", Count: 1b}, sell: {id: "minecraft:air", Count: 1}, xp: 0, uses: 0, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:air", Count: 1b}, sell: {id: "minecraft:air", Count: 1}, xp: 0, uses: 0, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:air", Count: 1b}, sell: {id: "minecraft:air", Count: 1}, xp: 0, uses: 0, specialPrice: 0, demand: 0, rewardExp: 0b}]}}
execute if data block ~ ~3 ~ Items[{Slot: 0b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[0].buy set from block ~ ~3 ~ Items[{Slot: 0b}]
execute if data block ~ ~3 ~ Items[{Slot: 1b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[1].buy set from block ~ ~3 ~ Items[{Slot: 1b}]
execute if data block ~ ~3 ~ Items[{Slot: 2b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[2].buy set from block ~ ~3 ~ Items[{Slot: 2b}]
execute if data block ~ ~3 ~ Items[{Slot: 3b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[3].buy set from block ~ ~3 ~ Items[{Slot: 3b}]
execute if data block ~ ~3 ~ Items[{Slot: 4b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[4].buy set from block ~ ~3 ~ Items[{Slot: 4b}]
execute if data block ~ ~3 ~ Items[{Slot: 5b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[5].buy set from block ~ ~3 ~ Items[{Slot: 5b}]
execute if data block ~ ~3 ~ Items[{Slot: 6b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[6].buy set from block ~ ~3 ~ Items[{Slot: 6b}]
execute if data block ~ ~3 ~ Items[{Slot: 7b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[7].buy set from block ~ ~3 ~ Items[{Slot: 7b}]

execute if data block ~ ~3 ~ Items[{Slot: 18b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[0].sell set from block ~ ~3 ~ Items[{Slot: 18b}]
execute if data block ~ ~3 ~ Items[{Slot: 19b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[1].sell set from block ~ ~3 ~ Items[{Slot: 19b}]
execute if data block ~ ~3 ~ Items[{Slot: 20b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[2].sell set from block ~ ~3 ~ Items[{Slot: 20b}]
execute if data block ~ ~3 ~ Items[{Slot: 21b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[3].sell set from block ~ ~3 ~ Items[{Slot: 21b}]
execute if data block ~ ~3 ~ Items[{Slot: 22b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[4].sell set from block ~ ~3 ~ Items[{Slot: 22b}]
execute if data block ~ ~3 ~ Items[{Slot: 23b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[5].sell set from block ~ ~3 ~ Items[{Slot: 23b}]
execute if data block ~ ~3 ~ Items[{Slot: 24b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[6].sell set from block ~ ~3 ~ Items[{Slot: 24b}]
execute if data block ~ ~3 ~ Items[{Slot: 35b}] run data modify entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[7].sell set from block ~ ~3 ~ Items[{Slot: 35b}]
data remove entity @e[type=villager,sort=nearest,limit=1] Offers.Recipes[{sell:{id: "minecraft:air"}}]