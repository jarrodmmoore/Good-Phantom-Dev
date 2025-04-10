#executed by an aec

#summon our Y and Z buddies
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:420,Tags:["checkpointBound","boundY","setRot","setLife"]}
execute as @e[tag=setRot] at @s run tp @s ~ ~ ~ 0 -90
tag @e[tag=setRot] remove setRot
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:420,Tags:["checkpointBound","boundZ","setRot","setLife"]}
execute as @e[tag=setRot] at @s run tp @s ~ ~ ~ 180 0
tag @e[tag=setRot] remove setRot

#(setLife is dealt with in the start_drawing_bounds function, which hasn't finished executing yet)