#reaction timer is 9 ticks minus our skill level
scoreboard players set @s botReactionTimer 9
scoreboard players operation @s botReactionTimer -= @s botSkill


#remember skill
scoreboard players operation #botSkill value = @s botSkill
#remember if we're boosting from a speed pad or not
scoreboard players operation #botBoostTime value = @s botEffectSpeedPad
scoreboard players operation #botBoostTime value += @s botEffectSpeedPad2
#remember if we're trying to mine boost or not
scoreboard players operation #botPreparedToBoostTrap value = @s botPreparedToBoostTrap

#remember what we're looking at if that's relevant
scoreboard players operation #botTargetID value = @s botTargetID
scoreboard players set #targetExists value 0
scoreboard players set #test1 value 0

#=====
#all the objects of interest within 10 meters of us should be analyzed
tag @s add botSelf
execute as @e[tag=botObjectOfInterest,tag=!botSelf,distance=..10] run function phan:bots/reaction/_object_index
#=====

#viable targets exist? pick one
execute if score #test1 value matches 1.. run function phan:bots/reaction/possibly_pick_viable_chest
execute if score #test1 value matches 1.. run tag @e[type=item_display,tag=potentialTempTarget,distance=..10] remove potentialTempTarget

#no target found? stop targeting
execute if score #targetExists value matches 0 run scoreboard players set @s targetID 0

#tag clean-up
tag @s remove botSelf