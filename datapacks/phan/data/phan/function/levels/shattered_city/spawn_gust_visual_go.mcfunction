summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:100,Tags:["gustVisual","setme"]}
scoreboard players operation @e[tag=setme] lifespan = #random4 value
tag @e[tag=setme] remove setme