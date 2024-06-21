#no need to check if chunks are loaded here.
#if an entity ran this, the vertical column it's sitting in is definitely loaded

#remove all eyes from the portal frames
execute if block ~ ~-1 ~ end_portal_frame[facing=north,eye=true] run setblock ~ ~-1 ~ end_portal_frame[facing=north,eye=false]
execute if block ~ ~-1 ~ end_portal_frame[facing=east,eye=true] run setblock ~ ~-1 ~ end_portal_frame[facing=east,eye=false]
execute if block ~ ~-1 ~ end_portal_frame[facing=south,eye=true] run setblock ~ ~-1 ~ end_portal_frame[facing=south,eye=false]
execute if block ~ ~-1 ~ end_portal_frame[facing=west,eye=true] run setblock ~ ~-1 ~ end_portal_frame[facing=west,eye=false]
#we'll use editArg1 to track our slot state
scoreboard players set @s editArg1 0
#will also use editArg2 to assign an slot number to ourselves (needed in Versus mode)
scoreboard players operation @s editArg2 = #vsPortalSlot value
scoreboard players add #vsPortalSlot value 1