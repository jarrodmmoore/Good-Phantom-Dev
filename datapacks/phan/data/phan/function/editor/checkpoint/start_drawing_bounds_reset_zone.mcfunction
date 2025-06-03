#executed by the reset zone node

#store coords
scoreboard players operation #checkMaxX value = @s checkMaxX
scoreboard players operation #checkMaxY value = @s checkMaxY
scoreboard players operation #checkMaxZ value = @s checkMaxZ
scoreboard players operation #checkMinX value = @s checkMinX
scoreboard players operation #checkMinY value = @s checkMinY
scoreboard players operation #checkMinZ value = @s checkMinZ

#set length of sides of cube
scoreboard players operation #setLengthX value = @s checkMaxX
scoreboard players operation #setLengthX value -= @s checkMinX
scoreboard players operation #setLengthY value = @s checkMaxY
scoreboard players operation #setLengthY value -= @s checkMinY
scoreboard players operation #setLengthZ value = @s checkMaxZ
scoreboard players operation #setLengthZ value -= @s checkMinZ
#^ it's ok if we pop out negative values here. lifespan system will interpret that as an instant entity delete

#spawn aecs in the corners of the cube and make them start drawing
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:420,Tags:["checkpointBound","lowerBound","boundX","setLife"]}
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:420,Tags:["checkpointBound","lowerBound2","boundX","setLife"]}
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:420,Tags:["checkpointBound","upperBound","boundX","setLife"]}
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:420,Tags:["checkpointBound","upperBound2","boundX","setLife"]}
execute as @e[tag=checkpointBound,tag=lowerBound,tag=setLife,type=area_effect_cloud] at @s run function phan:editor/checkpoint/setup_lower_bound
execute as @e[tag=checkpointBound,tag=lowerBound2,tag=setLife,type=area_effect_cloud] at @s run function phan:editor/checkpoint/setup_lower_bound_2
execute as @e[tag=checkpointBound,tag=upperBound,tag=setLife,type=area_effect_cloud] at @s run function phan:editor/checkpoint/setup_upper_bound
execute as @e[tag=checkpointBound,tag=upperBound2,tag=setLife,type=area_effect_cloud] at @s run function phan:editor/checkpoint/setup_upper_bound_2

#lines will be red, not white
tag @e[tag=setLife] add resetZoneBound

#set lifespans for aecs depending on edge length
scoreboard players operation @e[tag=setLife,tag=boundX] lifespan = #setLengthX value
scoreboard players operation @e[tag=setLife,tag=boundY] lifespan = #setLengthY value
scoreboard players operation @e[tag=setLife,tag=boundZ] lifespan = #setLengthZ value
tag @e[tag=setLife] remove setLife