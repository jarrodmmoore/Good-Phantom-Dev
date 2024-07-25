#reaction timer is 9 ticks minus our skill level
scoreboard players set @s botReactionTimer 9
scoreboard players operation @s botReactionTimer -= @s botSkill


#remember what we're looking at if that's relevant
scoreboard players operation #botTargetID value = @s botTargetID
scoreboard players set #targetExists value 0
scoreboard players set #test1 value 0

#very easy bots will never veer off to grab chests
execute if score @s botSkill matches ..1 run scoreboard players set #targetExists value 1
execute if score @s botSkill matches ..1 run scoreboard players set @s targetID 0

#=====
#all the objects of interest within 10 meters of us should be analyzed
tag @s add botSelf
execute as @e[tag=botObjectOfInterest,tag=!botSelf,distance=..10] run function phan:bots/reaction/_object_index
#=====

#item boxes exist? pick one
execute if score #test1 value matches 1.. run function phan:bots/reaction/possibly_pick_viable_chest

#no target found? stop targeting
execute if score #targetExists value matches 0 run scoreboard players set @s targetID 0

#tag clean-up
tag @s remove botSelf