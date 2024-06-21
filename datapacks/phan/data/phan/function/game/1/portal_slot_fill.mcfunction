execute if block ~ ~-1 ~ end_portal_frame[facing=north,eye=false] run setblock ~ ~-1 ~ end_portal_frame[facing=north,eye=true]
execute if block ~ ~-1 ~ end_portal_frame[facing=east,eye=false] run setblock ~ ~-1 ~ end_portal_frame[facing=east,eye=true]
execute if block ~ ~-1 ~ end_portal_frame[facing=south,eye=false] run setblock ~ ~-1 ~ end_portal_frame[facing=south,eye=true]
execute if block ~ ~-1 ~ end_portal_frame[facing=west,eye=false] run setblock ~ ~-1 ~ end_portal_frame[facing=west,eye=true]
playsound minecraft:block.end_portal_frame.fill master @a[tag=doneWithIntro] ~ ~ ~ 3 1 0.3
scoreboard players set @s editArg1 1