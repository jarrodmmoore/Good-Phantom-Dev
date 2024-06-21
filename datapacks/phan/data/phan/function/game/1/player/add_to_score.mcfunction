#count up the combo
#function phan:game/1/player/count_combo

#+1% bonus for every combo number
scoreboard players operation #addScore value = @s addScore
scoreboard players set #multiplier value 100
execute if score @s combo matches 2.. run scoreboard players operation #multiplier value += @s combo
#multiplier is capped at 200
execute if score #multiplier value matches 201.. run scoreboard players set #multiplier value 200
scoreboard players operation #addScore value *= #multiplier value
scoreboard players operation #addScore value /= #100 value

#NO POINTS if we're in penalty time
execute if score @s pPenaltyTime matches 1.. run scoreboard players set #addScore value 0

#ok, NOW we add score!
scoreboard players operation @s scoreCurrent += #addScore value
scoreboard players set @s addScore 0

#do we have a present active? count towards our goal (but wait a few ticks before we start listening for it)
scoreboard players operation #diff value = @s presentTimeMax
scoreboard players operation #diff value -= @s presentTime
execute if score #diff value matches 4.. run scoreboard players remove @s[scores={presentTime=1..,presentGoal=1..}] presentGoal 1