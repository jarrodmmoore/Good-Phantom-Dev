#run this function again in a random amount of time depending on skill level
execute if score @s botSkill matches ..1 store result score @s botBattleThinkTime run random value 16..35
execute if score @s botSkill matches 2 store result score @s botBattleThinkTime run random value 14..30
execute if score @s botSkill matches 3 store result score @s botBattleThinkTime run random value 12..25
execute if score @s botSkill matches 4 store result score @s botBattleThinkTime run random value 10..20
execute if score @s botSkill matches 5 store result score @s botBattleThinkTime run random value 8..15
execute if score @s botSkill matches 6.. store result score @s botBattleThinkTime run random value 6..10

#botTargetPriority
#0 = none, can go after stuff like chests or speed pads like usual
#1 = going after an ever eye
#2 = targeting an enemy player
#...
#100 = ignore everything

#keep track of whether we have a target
scoreboard players set #hasTarget value 0

#=====
#100

#ignore everything if we're in the homestretch
execute if entity @s[tag=vsHomeStretch,scores={botSkill=3..}] run return run scoreboard players set @s botTargetPriority 100
execute if entity @s[tag=!vsHomeStretch,scores={botTargetPriority=100}] run scoreboard players set @s botTargetPriority 0

#=====
#2

#recall previous player target if we have one
execute if score @s botTargetPriority matches 2 run function phan:bots/battle/targeting/look_for_targeted_player

#try to target players
execute if entity @s[scores={botTargetPriority=..1}] run function phan:bots/battle/targeting/look_for_players

#=====
#1

#recall previous ever eye target if we have one
execute if score @s botTargetPriority matches 1 run function phan:bots/battle/targeting/look_for_targeted_ever_eye

#go after ever eyes
execute if score @s botTargetPriority matches ..0 run function phan:bots/battle/targeting/look_for_eyes

#=====

#no target found? return to botTargetPriority 0
execute if score @s botTargetPriority matches 1..99 if score #hasTarget value matches 0 run function phan:bots/battle/targeting/lost_target