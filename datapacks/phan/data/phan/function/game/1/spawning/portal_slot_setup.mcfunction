#don't run unless we know for sure that a portal core is nearby and has been initialized
execute unless entity @e[tag=portalCore,type=marker,distance=..30,scores={eyeSlotAssignment=0..}] run return run tag @s add spawn_failed
#=====

#remove all eyes from the portal frames
execute if block ~ ~-1 ~ end_portal_frame[facing=north,eye=true] run setblock ~ ~-1 ~ end_portal_frame[facing=north,eye=false]
execute if block ~ ~-1 ~ end_portal_frame[facing=east,eye=true] run setblock ~ ~-1 ~ end_portal_frame[facing=east,eye=false]
execute if block ~ ~-1 ~ end_portal_frame[facing=south,eye=true] run setblock ~ ~-1 ~ end_portal_frame[facing=south,eye=false]
execute if block ~ ~-1 ~ end_portal_frame[facing=west,eye=true] run setblock ~ ~-1 ~ end_portal_frame[facing=west,eye=false]
#we'll use editArg1 to track our slot state
scoreboard players set @s editArg1 0
#will also use editArg2 to assign an slot number to ourselves (needed in Versus mode)
scoreboard players add @e[tag=portalCore,type=marker,distance=..30,scores={eyeSlotAssignment=0..},limit=1,sort=nearest] eyeSlotAssignment 1
scoreboard players operation @s editArg2 = @e[tag=portalCore,type=marker,distance=..30,scores={eyeSlotAssignment=0..},limit=1,sort=nearest] eyeSlotAssignment