#display is composed of:
#1 = left end + icon for gamemode + extra digit? (00000000-0000-0328-0000-000000000001)
#2 = digit 1b
#3 = slash + digit 2a
#4 = digit 2b + right end
#...
#5 = variable space
#...
#6 = nothing
#7 = nothing
#8 = nothing
#...
#9 = variable space
#...
#10 = left end + timer icon + extra minute digit
#11 = minute digit + colon
#12 = decasecond digit
#13 = second digit
#14 = period + decisecond
#15 = centisecond
#16 = right end (00000000-0000-0328-0000-000000000010)

#pass in our personal variables as argument
scoreboard players operation #pearlsNeeded value = @s pPearlsNeeded
scoreboard players operation #timeRemaining value = @s pTimeRemaining

#split number of pearls needed into 2 variables
scoreboard players operation #hudIndGoalA value = #pearlsNeeded value
scoreboard players operation #hudIndGoalA value /= #10 value
scoreboard players operation #hudIndGoalB value = #pearlsNeeded value
scoreboard players operation #hudIndGoalB value %= #10 value
#max display value is 99
execute if score #hudIndGoalA value matches 10.. run scoreboard players set #hudIndGoalB value 9
execute if score #hudIndGoalA value matches 10.. run scoreboard players set #hudIndGoalA value 9

#split held ender eyes into two variables
scoreboard players operation #hudIndEnderA value = @s enderEyes
scoreboard players operation #hudIndEnderA value /= #10 value
scoreboard players operation #hudIndEnderB value = @s enderEyes
scoreboard players operation #hudIndEnderB value %= #10 value
#max display value is 99
execute if score #hudIndEnderA value matches 10.. run scoreboard players set #hudIndEnderB value 9
execute if score #hudIndEnderA value matches 10.. run scoreboard players set #hudIndEnderA value 9

#convert raw time into digits
#msec (2 digits, second digit is either 0 or 5)
scoreboard players operation #arg value = @s rawTime
execute if score @s hudFlashTime matches 1.. run scoreboard players operation #arg value = @s splitTime
scoreboard players operation #showTimeMsec value = #arg value
scoreboard players operation #showTimeMsec value %= #20 value
scoreboard players operation #showTimeMsec2 value = #showTimeMsec value
scoreboard players operation #showTimeMsec2 value %= #2 value
execute if score #showTimeMsec2 value matches 1 run scoreboard players set #showTimeMsec2 value 5
scoreboard players operation #showTimeMsec value /= #2 value
#seconds
scoreboard players operation #showTimeSec value = #arg value
scoreboard players operation #showTimeSec value /= #20 value
scoreboard players operation #showTimeSec10 value = #showTimeSec value
scoreboard players operation #showTimeSec value %= #10 value
scoreboard players operation #showTimeSec10 value /= #10 value
scoreboard players operation #showTimeSec10 value %= #6 value
#minutes
scoreboard players operation #showTimeMin value = #arg value
scoreboard players operation #showTimeMin value /= #1200 value
scoreboard players operation #showTimeMin10 value = #showTimeMin value
scoreboard players operation #showTimeMin value %= #10 value
scoreboard players operation #showTimeMin10 value /= #10 value
#hide timer on some ticks when flashing split time (blink effect)
execute if score @s hudFlashTime matches 1.. if score #5Hz value matches ..1 run function phan:custom_hud/time_attack/hide_timer_digits

#spacing left of center
#8 + 32 + (14) + 14 + 15 + (14) + 14 + 8 = 91, 105, 119
scoreboard players set #hudLeftDebt value 91
execute if score #hudIndEnderA value matches 1.. run scoreboard players add #hudLeftDebt value 14
execute if score #hudIndGoalA value matches 1.. run scoreboard players add #hudLeftDebt value 14
#if our goal is 0 or less, we've completed the objective and can just show a check mark
#8 + 32 + 24 + 8 = 72
execute if score #pearlsNeeded value matches ..0 run scoreboard players set #hudLeftDebt value 72

#spacing right of center
#8 + 26 + (14) + 14 + 7 + 14 + 14 + 7 + 7 + 7 + 8 = 112, 126
scoreboard players set #hudRightDebt value 112
execute unless score #showTimeMin10 value matches 0 run scoreboard players add #hudRightDebt value 14

#=====
#only update slots if they changed since the previous run

#SLOT 1-4 (handled in different ways depending if the objective is complete or not)
execute if score #pearlsNeeded value matches ..0 run function phan:custom_hud/gameplay/left_complete/_left_complete
execute if score #pearlsNeeded value matches 1.. run function phan:custom_hud/gameplay/left_incomplete/_left_incomplete

#SLOT 5
execute unless score #hudLeftDebt value = #hudPrev5 value run function phan:custom_hud/gameplay/slot5

#SLOT 6-8 (always blank)
execute unless score #hudPrev6 value matches -98 run function phan:custom_hud/time_attack/slot6_7_8

#SLOT 9
execute unless score #hudRightDebt value = #hudPrev9 value run function phan:custom_hud/time_attack/slot9

#SLOT 10
execute unless score #showTimeMin10 value = #hudPrev10 value run function phan:custom_hud/time_attack/slot10
#SLOT 11
execute unless score #showTimeMin value = #hudPrev11 value run function phan:custom_hud/time_attack/slot11
#SLOT 12
execute unless score #showTimeSec10 value = #hudPrev12 value run function phan:custom_hud/time_attack/slot12
#SLOT 13
execute unless score #showTimeSec value = #hudPrev13 value run function phan:custom_hud/time_attack/slot13
#SLOT 14
execute unless score #showTimeMsec value = #hudPrev14 value run function phan:custom_hud/time_attack/slot14
#SLOT 15
execute unless score #showTimeMsec2 value = #hudPrev15 value run function phan:custom_hud/time_attack/slot15
#SLOT 16
execute unless score #hudPrev16 value matches -97 run function phan:custom_hud/time_attack/slot16

#=====

#ok, NOW we do the index
execute if score @s hudNode matches 1..6 run function phan:custom_hud/_update_index_1_6
execute if score @s hudNode matches 7..12 run function phan:custom_hud/_update_index_7_12
execute if score @s hudNode matches 13..18 run function phan:custom_hud/_update_index_13_18
execute if score @s hudNode matches 19..24 run function phan:custom_hud/_update_index_19_24
execute if score @s hudNode matches 25..32 run function phan:custom_hud/_update_index_25_32