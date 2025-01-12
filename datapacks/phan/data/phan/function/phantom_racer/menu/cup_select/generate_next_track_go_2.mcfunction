#$(model) = model

$summon item_display ~ ~ ~ {Tags:["lobbyProp","tvProp","tvTrackDisplay","tvTrackImage","setLife"],teleport_duration:60,item:{id:"stone",components:{"item_model":"$(model)"}},brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}
scoreboard players set @e[type=item_display,distance=..1,tag=setLife] lifespan 60
execute as @e[type=item_display,distance=..1,tag=setLife] at @s run tp @s ~ ~3 ~
tag @e[type=item_display,distance=..4,tag=setLife] remove lifespan