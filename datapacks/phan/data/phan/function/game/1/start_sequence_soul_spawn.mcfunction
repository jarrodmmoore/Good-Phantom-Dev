#executed by some player's camera armor stand
execute if loaded ~ ~ ~ run summon armor_stand ~ ~ ~ {Tags:["playerSoul","setID","currentSoul"],Marker:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111127}}}]}
#summon item_display ~ ~ ~ {Tags:["playerSoul","setID","currentSoul"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111127}}}
scoreboard players operation @e[tag=setID] playerID = @s playerID
tag @e[tag=setID] remove setID