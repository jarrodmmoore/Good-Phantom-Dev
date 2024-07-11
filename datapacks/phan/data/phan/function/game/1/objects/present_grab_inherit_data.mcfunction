#executed by the player that picked up this present
scoreboard players operation @s presentTime = #setTime value
scoreboard players operation @s presentTimeMax = #setTime value
scoreboard players operation @s presentGoal = #setGoal value
scoreboard players operation #setID value = @s playerID

#assist mode time limit? extra present time
execute if score #assist_time_limit value matches 1 run scoreboard players operation @s presentTime *= #CONST_ASSIST_TIME value
execute if score #assist_time_limit value matches 2.. run scoreboard players operation @s presentTime *= #CONST_ASSIST_TIME_2 value
execute if score #assist_time_limit value matches 1.. run scoreboard players operation @s presentTime /= #100 value
execute if score #assist_time_limit value matches 1.. run scoreboard players operation @s presentTimeMax = @s presentTime

#keep combo alive
scoreboard players add @s addScore 1
function phan:game/1/player/count_combo