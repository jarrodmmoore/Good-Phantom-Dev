#executed by some player's camera armor stand
execute if loaded ~ ~ ~ run summon armor_stand ~ ~ ~ {Tags:["playerSoul","setID","currentSoul"],Marker:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/object/soul"}}}]}
#summon item_display ~ ~ ~ {Tags:["playerSoul","setID","currentSoul"],item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/object/soul"}}}
scoreboard players operation @e[tag=setID] playerID = @s playerID
tag @e[tag=setID] remove setID