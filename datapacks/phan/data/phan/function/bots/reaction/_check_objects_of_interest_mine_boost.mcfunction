#remember skill
scoreboard players operation #botSkill value = @s botSkill

#remember what we're looking at if that's relevant
scoreboard players operation #botTargetID value = @s botTargetID
scoreboard players set #targetExists value 0
scoreboard players set #test1 value 0

#=====
#all the objects of interest within 10 meters of us should be analyzed
tag @s add botSelf
execute as @e[tag=botObjectOfInterest,tag=!botSelf,distance=..10,tag=enemyMine,type=item_display,sort=nearest] run function phan:bots/reaction/_object_index_mine_boost
#=====

#viable_targets exist? pick one
execute if score #test1 value matches 1.. run function phan:bots/reaction/possibly_pick_viable_chest
execute if score #test1 value matches 1.. run tag @e[type=item_display,tag=potentialTempTarget,distance=..10] remove potentialTempTarget

#lock on for at least 10 ticks after we find a mine to go for. if that timer expires, we give up
execute if score #test1 value matches 1.. run scoreboard players set @s botPreparedToBoostTrap 10

#no target found? stop targeting
execute if score #targetExists value matches 0 run scoreboard players set @s targetID 0

#tag clean-up
tag @s remove botSelf