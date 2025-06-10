#go to the place
tp @s 879 2 -972 315 0
effect give @s blindness 1 1 true
scoreboard players set @s skyboxSet 1

#is anyone in the practice course? if not, set a few extra things up
execute unless entity @a[tag=practiceCourse] run function phan:game/0/player/start_practice_course_first_player

#practice course is now unlocked!
scoreboard players set #d6a3Unlocked value 1

#get tags and proper data
execute if score #gameState value matches 0 run tag @s add playing
tag @s add practiceCourse
scoreboard players set @s pShowHUD 1
scoreboard players set @s scoreCurrent 0
scoreboard players set @s scoreCurrent2 0
scoreboard players set @s addPointsLater 0
scoreboard players set @s enderEyes 0
function phan:game/1/set_score_digits
scoreboard players set @s pTimeRemaining 6019
scoreboard players set @s addScore 0
scoreboard players set @s combo 0
scoreboard players set @s comboTime 0
scoreboard players set @s timerAdd 0
scoreboard players set @s pLootCycle 0
scoreboard players set @s pGameTime 0
scoreboard players set @s pSubGameState 1
scoreboard players set @s pPenaltyTime 0
scoreboard players set @s pPenaltyPoints 0
scoreboard players operation @s pPearlsNeeded = #practicePearlsNeeded value
#assist mode: get extra time
execute if score #assist_time_limit value matches 1 run scoreboard players operation @s pTimeRemaining *= #CONST_ASSIST_TIME value
execute if score #assist_time_limit value matches 1 run scoreboard players operation @s pTimeRemaining /= #100 value
#assist mode: no time limit
execute if score #assist_time_limit value matches 2 run scoreboard players set @s pTimeRemaining 900000000
#respawn info
scoreboard players set @s pCurrentArea 1
scoreboard players set @s currentLoad 1
scoreboard players set @s previousLoad -1

#reset scores and clear inventory
scoreboard players set @s energy 5
execute if score @s strengthTime matches 2.. run scoreboard players set @s strengthTime 1
xp set @s 100 levels
xp set @s 0 points
#clear @s

#play sound
execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.enderman.teleport",targets:"@s",pitch:".8"}