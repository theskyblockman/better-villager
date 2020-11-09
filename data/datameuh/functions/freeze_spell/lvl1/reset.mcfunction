execute at @s at @e[distance=..5,scores={freeze=0},type=!item,type=!item_frame,type=!experience_orb,type=!falling_block] run summon armor_stand ~ ~ ~ {Tags:["freeze"],NoGravity:1b,Invisible:1b,Marker:1b}
execute at @s run playsound minecraft:block.glass.break player @a[distance=..10] ~ ~ ~ 10 1
execute at @e[tag=freeze] run effect give @e[distance=..1] minecraft:slowness 1 255 true
execute at @e[tag=freeze] run summon falling_block ~ ~ ~ {Tags:["ice_fall"],BlockState:{Name:"ice"},NoGravity:true,DropItem:false,Time:-100}
execute at @e[tag=freeze] run summon falling_block ~ ~1 ~ {Tags:["ice_fall"],BlockState:{Name:"ice"},NoGravity:true,DropItem:false,Time:-100}
scoreboard players add @e[tag=freeze] lifetime 1
execute at @e[tag=freeze,scores={lifetime=100..}] run kill @e[tag=ice_fall,limit=2]
execute at @e[tag=freeze,scores={lifetime=100..}] run playsound minecraft:block.glass.break player @a[distance=..10] ~ ~ ~ 10 1
kill @e[tag=freeze,scores={lifetime=100..}]
scoreboard players set @a freeze 0
say slt