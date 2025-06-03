#are we in water?
scoreboard players set #inWater value 0
execute if block ~ ~ ~ water run scoreboard players set #inWater value 1

#red
execute if score #inWater value matches 0 unless score @s editArg1 matches 1 run summon item ~ ~ ~ {Tags:["checkValid","stay","setMe","clock","redClock","shootable"],Age:-32768,NoGravity:1b,Item:{id:"minecraft:red_wool",count:1,components:{"minecraft:custom_name":{translate:"gp.game.clock",color:"red",italic:false},"item_model":"gp/object/alarm_clock","minecraft:custom_data":{redTimer:1b}}}}
#gold
execute if score #inWater value matches 0 if score @s editArg1 matches 1 run summon item ~ ~ ~ {Tags:["checkValid","stay","setMe","clock","goldClock","shootable"],Age:-32768,NoGravity:1b,Item:{id:"minecraft:red_wool",count:1,components:{"minecraft:custom_name":{translate:"gp.game.clock",color:"yellow",italic:false},"item_model":"gp/object/alarm_clock_gold","minecraft:custom_data":{goldTimer:1b}}}}

#in water
#red
execute if score #inWater value matches 1 unless score @s editArg1 matches 1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:200000,Tags:["checkValid","stay","itemHolder","groupA"],Passengers:[{id:"minecraft:item",NoGravity:1b,Age:-32768,Tags:["checkValid","stay","setMe","clock","redClock","shootable"],Item:{id:"minecraft:red_wool",count:1,components:{"minecraft:custom_name":{color:"red",italic:false,translate:"gp.game.clock"},"item_model":"gp/object/alarm_clock","minecraft:custom_data":{redTimer:1b}}}}]}
#gold
execute if score #inWater value matches 1 if score @s editArg1 matches 1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:200000,Tags:["checkValid","stay","itemHolder","groupA"],Passengers:[{id:"minecraft:item",NoGravity:1b,Age:-32768,Tags:["checkValid","stay","setMe","clock","goldClock","shootable"],Item:{id:"minecraft:red_wool",count:1,components:{"minecraft:custom_name":{color:"yellow",italic:false,translate:"gp.game.clock"},"item_model":"gp/object/alarm_clock_gold","minecraft:custom_data":{goldTimer:1b}}}}]}

function phan:game/1/spawning/spawn__give_generic_data

#glow in assist mode
execute if score #assist_navigation value matches 1.. run data merge entity @e[limit=1,tag=setMe,type=item,distance=..2] {Glowing:1b}

#we're unshootable for a few ticks if we were dropped as loot
execute if score #noShoot value matches 1 run scoreboard players set @e[tag=setMe,type=item,distance=..2] hitstun 10

#gravity? ok
execute if score #getGravity value matches 1 as @e[tag=setMe,type=item,distance=..2] run data merge entity @s {NoGravity:0b}

tag @e[tag=setMe,type=item,distance=..2] remove setMe