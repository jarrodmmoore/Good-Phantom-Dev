#teleport to where we need to go
execute if score @s botID matches ..0 run tp @s @e[limit=1,distance=..10,type=marker,tag=tvTrackPreviewStop0]
execute if score @s botID matches 1 run tp @s @e[limit=1,distance=..10,type=marker,tag=tvTrackPreviewStop1]
execute if score @s botID matches 2 run tp @s @e[limit=1,distance=..10,type=marker,tag=tvTrackPreviewStop2]
execute if score @s botID matches 3 run tp @s @e[limit=1,distance=..10,type=marker,tag=tvTrackPreviewStop3]
execute if score @s botID matches 4 run tp @s @e[limit=1,distance=..10,type=marker,tag=tvTrackPreviewStop4]
execute if score @s botID matches 5 run tp @s @e[limit=1,distance=..10,type=marker,tag=tvTrackPreviewStop5]
execute if score @s botID matches 6.. run tp @s @e[limit=1,distance=..10,type=marker,tag=tvTrackPreviewStop6]

#die if we go offscreen
execute unless score @s botID matches 1..5 run scoreboard players set @s lifespan 5
execute unless score @s botID matches 1..5 on passengers run scoreboard players set @s lifespan 5
execute unless score @s botID matches 1..5 run tag @s remove tvTrackDisplay