#deal with recursions
scoreboard players remove #spawnRecursions value 1


#=====
#ACTUAL SPAWN CODE
#(everything else is for recursion)

#are we in water?
scoreboard players set #inWater value 0
execute if block ~ ~ ~ water run scoreboard players set #inWater value 1

#single
execute if score #inWater value matches 0 unless score @s editArg1 matches 5 run summon item ~ ~ ~ {Tags:["checkValid","stay","setMe","stardust","stardustYellow","shootable","groupA"],Age:-32768,NoGravity:1b,Item:{id:"minecraft:yellow_wool",count:1,components:{"minecraft:custom_name":'{"translate":"gp.game.stardust","color":"yellow","italic":false}',"minecraft:custom_model_data":1111111,"minecraft:hide_additional_tooltip":{}}}}
#multi
execute if score #inWater value matches 0 if score @s editArg1 matches 5 run summon item ~ ~ ~ {Tags:["checkValid","stay","setMe","stardust","stardustYellow","shootable","multipack","groupA"],Age:-32768,NoGravity:1b,Item:{id:"minecraft:yellow_wool",count:5,components:{"minecraft:custom_name":'{"translate":"gp.game.stardust","color":"yellow","italic":false}',"minecraft:custom_model_data":1111112,"minecraft:hide_additional_tooltip":{}}}}

#when underwater, item rides an area effect cloud to stop it from moving
#single (underwater)
execute if score #inWater value matches 1 unless score @s editArg1 matches 5 run summon area_effect_cloud ~ ~ ~ {Duration:200000,Tags:["checkValid","stay","itemHolder","groupA"],Passengers:[{id:"minecraft:item",NoGravity:1b,Age:-32768,Tags:["checkValid","stay","setMe","stardust","stardustYellow","shootable","groupA"],Item:{id:"minecraft:yellow_wool",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"translate":"gp.game.stardust"}',"minecraft:custom_model_data":1111111,"minecraft:hide_additional_tooltip":{}}}}]}
#multi (underwater)
execute if score #inWater value matches 1 if score @s editArg1 matches 5 run summon area_effect_cloud ~ ~ ~ {Duration:200000,Tags:["checkValid","stay","itemHolder","groupA"],Passengers:[{id:"minecraft:item",NoGravity:1b,Age:-32768,Tags:["checkValid","stay","setMe","stardust","stardustYellow","shootable","multipack","groupA"],Item:{id:"minecraft:yellow_wool",count:5,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"translate":"gp.game.stardust"}',"minecraft:custom_model_data":1111112,"minecraft:hide_additional_tooltip":{}}}}]}

function phan:game/1/spawning/spawn__give_generic_data

#done messing with the itemHolder
execute if score #inWater value matches 1 run scoreboard players set @e[tag=setMe,tag=itemHolder] lifespan 10
execute if score #inWater value matches 1 run tag @e[tag=setMe,tag=itemHolder] remove setMe

#we're unshootable for a few ticks if we were dropped as loot
execute if score #noShoot value matches 1 run scoreboard players set @e[tag=setMe] hitstun 10

#gravity? ok
execute if score #getGravity value matches 1 as @e[tag=setMe] run data merge entity @s {NoGravity:0b}

tag @e[tag=setMe] remove setMe
#=====


#no recursions left? tell the rest of the recursive command stack to get bent
execute if score #spawnRecursions value matches ..0 run scoreboard players set #tempRecursions value -1

#keep going if we still have more recursions left
execute if score #spawnRecursions value matches 1.. run scoreboard players operation #tempRecursions value = #spaceRecursions value
execute if score #spawnRecursions value matches 1.. positioned ^ ^ ^1 run function phan:game/1/spawning/spawn_stardust_prep