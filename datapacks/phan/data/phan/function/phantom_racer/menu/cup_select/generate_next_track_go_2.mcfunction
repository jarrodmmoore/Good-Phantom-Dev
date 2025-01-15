#"phan:level_index model" should be set before calling!

summon text_display ~ ~ ~ {Tags:["lobbyProp","tvProp","tvTrackDisplay","tvTrackImage","setLife"],teleport_duration:59,alignment:"center",text:'["",{"nbt":"model","storage":"phan:level_index","interpret":true}]',brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.425f,0f],scale:[0.4f,0.4f,0.4f]}}
scoreboard players set @e[type=text_display,distance=..1,tag=setLife] lifespan 59
execute as @e[type=text_display,distance=..1,tag=setLife] at @s run tp @s ~ ~3 ~
tag @e[type=text_display,distance=..4,tag=setLife] remove lifespan