#display is composed of:
#1 = left end + icon for gamemode + extra digit? (00000000-0000-0328-0000-000000000001)
#2 = digit 1b
#3 = slash + digit 2a
#4 = digit 2b + right end
#...
#5 = variable space
#...
#6 = left end + timer digit 1
#7 = timer digit 2
#8 = timer digit 3 + right end
#...
#9 = variable space
#...
#10 = left end + digit?
#11 = digit?
#12 = digit?
#13 = digit?
#14 = digit?
#15 = digit?
#16 = digit + right end (00000000-0000-0328-0000-000000000010)

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

#get timer digits
function phan:game/1/set_timer_digits

#notes: time remaining is
#timeRem100
#timeRem10
#timeRem1
scoreboard players set #hudShowT100 value 1
scoreboard players set #hudShowT10 value 1
execute if score #timeRem100 value matches ..0 run scoreboard players set #hudShowT100 value 0
execute if score #timeRem100 value matches ..0 if score #timeRem10 value matches ..0 run scoreboard players set #hudShowT10 value 0

#timer flashes red when time is about to run out
execute if score #timeRemaining value matches ..320 if score #timeRemMsec value matches 10.. run function phan:custom_hud/gameplay/digits_flash_red

#must update all timer slots if the number of digits being used just changed
scoreboard players set #hudDigitShow value 3
execute if score #hudShowT100 value matches 0 run scoreboard players set #hudDigitShow value 2
execute if score #hudShowT10 value matches 0 run scoreboard players set #hudDigitShow value 1
execute if score #timeRemaining value matches ..10 run scoreboard players set #hudDigitShow value 1
execute unless score #hudDigitShow value = #hudDigitShow2 value run scoreboard players set #hudPrev6 value -999
execute unless score #hudDigitShow value = #hudDigitShow2 value run scoreboard players set #hudPrev7 value -999
execute unless score #hudDigitShow value = #hudDigitShow2 value run scoreboard players set #hudPrev8 value -999

#split held ender eyes into two variables
scoreboard players operation #hudIndEnderA value = @s enderEyes
scoreboard players operation #hudIndEnderA value /= #10 value
scoreboard players operation #hudIndEnderB value = @s enderEyes
scoreboard players operation #hudIndEnderB value %= #10 value
#max display value is 99
execute if score #hudIndEnderA value matches 10.. run scoreboard players set #hudIndEnderB value 9
execute if score #hudIndEnderA value matches 10.. run scoreboard players set #hudIndEnderA value 9

#spacing left of center
#8 + 32 + (14) + 14 + 15 + (14) + 14 + 8 = 91, 105, 119
scoreboard players set #hudLeftDebt value 91
execute if score #hudIndEnderA value matches 1.. run scoreboard players add #hudLeftDebt value 14
execute if score #hudIndGoalA value matches 1.. run scoreboard players add #hudLeftDebt value 14
#if our goal is 0 or less, we've completed the objective and can just show a check mark
#8 + 32 + 24 + 8 = 72
execute if score #pearlsNeeded value matches ..0 run scoreboard players set #hudLeftDebt value 72
#less negative space if we're using less digits in the middle timer
execute if score #hudShowT10 value matches 0 run scoreboard players remove #hudLeftDebt value 7
execute if score #hudShowT100 value matches 0 run scoreboard players remove #hudLeftDebt value 7

#spacing right of center
#8 + (7) + (7) + (7) + (7) + (7) + (7) + 7 + 8 = 23, 30, .. 65
scoreboard players set #hudRightDebt value 23
execute if score @s scoreCurrent matches 10.. run scoreboard players add #hudRightDebt value 7
execute if score @s scoreCurrent matches 100.. run scoreboard players add #hudRightDebt value 7
execute if score @s scoreCurrent matches 1000.. run scoreboard players add #hudRightDebt value 7
execute if score @s scoreCurrent matches 10000.. run scoreboard players add #hudRightDebt value 7
execute if score @s scoreCurrent matches 100000.. run scoreboard players add #hudRightDebt value 7
execute if score @s scoreCurrent matches 1000000.. run scoreboard players add #hudRightDebt value 7
#less negative space if we're using less digits in the middle timer
execute if score #hudShowT10 value matches 0 run scoreboard players remove #hudRightDebt value 7
execute if score #hudShowT100 value matches 0 run scoreboard players remove #hudRightDebt value 7

#special stuff happens if we're showing a score threshold we just beat
execute if score @s hudFlashTime matches 1.. run scoreboard players add @s scoreDigit1 100

#=====
#only update slots if they changed since from the previous run

#SLOT 1-4 (handled in different ways depending if the objective is complete or not)
execute if score #pearlsNeeded value matches ..0 run function phan:custom_hud/gameplay/left_complete/_left_complete
execute if score #pearlsNeeded value matches 1.. run function phan:custom_hud/gameplay/left_incomplete/_left_incomplete

#SLOT 5
execute unless score #hudLeftDebt value = #hudPrev5 value run function phan:custom_hud/gameplay/slot5

#SLOT 6-8 (handled in different ways depending if we're using 1, 2, or 3 digits)
execute if score #hudDigitShow value matches 3.. run function phan:custom_hud/gameplay/middle_3_digit/_middle_3_digit
execute if score #hudDigitShow value matches 2 run function phan:custom_hud/gameplay/middle_2_digit/_middle_2_digit
execute if score #hudDigitShow value matches ..1 run function phan:custom_hud/gameplay/middle_1_digit/_middle_1_digit

#SLOT 9
execute unless score #hudRightDebt value = #hudPrev9 value run function phan:custom_hud/gameplay/slot9

#SLOT 10
execute unless score @s scoreDigit7 = #hudPrev10 value run function phan:custom_hud/gameplay/slot10
#SLOT 11
execute unless score @s scoreDigit6 = #hudPrev11 value run function phan:custom_hud/gameplay/slot11
#SLOT 12
execute unless score @s scoreDigit5 = #hudPrev12 value run function phan:custom_hud/gameplay/slot12
#SLOT 13
execute unless score @s scoreDigit4 = #hudPrev13 value run function phan:custom_hud/gameplay/slot13
#SLOT 14
execute unless score @s scoreDigit3 = #hudPrev14 value run function phan:custom_hud/gameplay/slot14
#SLOT 15
execute unless score @s scoreDigit2 = #hudPrev15 value run function phan:custom_hud/gameplay/slot15
#SLOT 16
execute unless score @s scoreDigit1 = #hudPrev16 value run function phan:custom_hud/gameplay/slot16

#=====

#remember how many digits we showed?
scoreboard players operation #hudDigitShow2 value = #hudDigitShow value

#ok, NOW we do the index
execute if score @s hudNode matches 1..6 run function phan:custom_hud/_update_index_1_6
execute if score @s hudNode matches 7..12 run function phan:custom_hud/_update_index_7_12
execute if score @s hudNode matches 13..18 run function phan:custom_hud/_update_index_13_18
execute if score @s hudNode matches 19..24 run function phan:custom_hud/_update_index_19_24
execute if score @s hudNode matches 25..32 run function phan:custom_hud/_update_index_25_32