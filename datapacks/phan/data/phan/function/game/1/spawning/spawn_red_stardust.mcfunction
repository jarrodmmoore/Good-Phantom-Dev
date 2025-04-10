#are we in water?
scoreboard players set #inWater value 0
execute if block ~ ~ ~ water run scoreboard players set #inWater value 1

#flamin' hot flavor stardusts
execute if score #getGravity value matches 0 if score #inWater value matches 0 run summon item ~ ~ ~ {Tags:["checkValid","stay","setMe","stardust","stardustRed","shootable","groupA","representBaddy"],Age:-32768,NoGravity:1b,Item:{id:"minecraft:yellow_wool",count:2,components:{"minecraft:custom_name":{translate:"gp.game.stardust",color:"red",italic:false},"item_model":"gp/object/stardust_red"}}}
execute if score #getGravity value matches 1 if score #inWater value matches 0 run summon item ~ ~ ~ {Tags:["checkValid","stay","setMe","stardust","stardustRed","shootable","groupA","representBaddy"],Age:-32768,NoGravity:0b,Item:{id:"minecraft:yellow_wool",count:2,components:{"minecraft:custom_name":{translate:"gp.game.stardust",color:"red",italic:false},"item_model":"gp/object/stardust_red"}}}
execute if score #inWater value matches 1 run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:200000,Tags:["checkValid","stay","itemHolder","groupA"],Passengers:[{id:"minecraft:item",NoGravity:1b,Age:-32768,Tags:["checkValid","stay","setMe","stardust","stardustRed","shootable","groupA","representBaddy"],Item:{id:"minecraft:yellow_wool",count:2,components:{"minecraft:custom_name":{color:"red",italic:false,translate:"gp.game.stardust"},"item_model":"gp/object/stardust_red"}}}]}
#Q: red stardust? why?
#A: red stardust is spawned in the place of enemies when enemies are disabled via Assist Mode.
#behaves the same as normal stardust, but is visually distinct so players will know where to expect enemies to spawn if they take off the training wheels and re-enable enemies.

function phan:game/1/spawning/spawn__give_generic_data

#execute if score #noShoot value matches 1 run tag @e[tag=setMe] remove shootable
execute if score #noShoot value matches 1 run scoreboard players set @e[tag=setMe,type=item,distance=..2] hitstun 10

tag @e[tag=setMe,type=item,distance=..2] remove setMe