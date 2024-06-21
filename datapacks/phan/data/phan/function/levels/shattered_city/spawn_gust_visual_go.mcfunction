summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["gustVisual","setme"]}
scoreboard players operation @e[tag=setme] lifespan = #random4 value
tag @e[tag=setme] remove setme