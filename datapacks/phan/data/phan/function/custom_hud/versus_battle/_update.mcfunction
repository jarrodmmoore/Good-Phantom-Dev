#display is composed of:
#1 = left end + icon for gamemode + extra digit? (00000000-0000-0328-0000-000000000001)
#2 = digit 1b
#3 = slash + digit 2a
#4 = digit 2b + right end
#...
#5 = variable space
#...
#6 = left end + position number
#7 = tiny slash + player count
#8 = right end
#...
#9 = variable space
#...
#10 = left end + ko icon
#11 = digit 1
#12 = digit 2
#13 = digit 3
#14 = right end
#15 = nothing
#16 = nothing (00000000-0000-0328-0000-000000000010)

#pass in our personal variables as argument
scoreboard players operation #pearlsNeeded value = #vEyesNeeded value
scoreboard players operation #timeRemaining value = #vTimeRemaining value
scoreboard players operation #playerPosition value = @s racePosDisplay

#met the eye requirement? show the check mark instead of the eye counter
execute if score @s enderEyes >= #vEyesNeeded value run scoreboard players set #pearlsNeeded value 0

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

#split kos into 3 digits
scoreboard players operation #arg value = @s KOs
scoreboard players operation #KOs1 value = #arg value
scoreboard players operation #KOs1 value %= #10 value
scoreboard players operation #KOs2 value = #arg value
scoreboard players operation #KOs2 value %= #100 value
scoreboard players operation #KOs2 value /= #10 value
scoreboard players operation #KOs3 value = #arg value
scoreboard players operation #KOs3 value /= #100 value
execute if score @s KOs matches ..9 run scoreboard players set #KOs2 value -1
execute if score @s KOs matches ..99 run scoreboard players set #KOs3 value -1
execute if score @s KOs matches 1000.. run scoreboard players set #KOs1 value 9
execute if score @s KOs matches 1000.. run scoreboard players set #KOs2 value 9
execute if score @s KOs matches 1000.. run scoreboard players set #KOs3 value 9

#spacing left of center
#8 + 32 + (14) + 14 + 15 + (14) + 14 + 8 = 91, 105, 119
scoreboard players set #hudLeftDebt value 91
execute if score #hudIndEnderA value matches 1.. run scoreboard players add #hudLeftDebt value 14
execute if score #hudIndGoalA value matches 1.. run scoreboard players add #hudLeftDebt value 14
#if our goal is 0 or less, we've completed the objective and can just show a check mark
#8 + 32 + 24 + 8 = 72
execute if score #pearlsNeeded value matches ..0 run scoreboard players set #hudLeftDebt value 72

#spacing right of center
#8 + 32 + (14) + (14) + 14 + 8 = 62, 76, 90
scoreboard players set #hudRightDebt value 62
execute if score @s KOs matches 10.. run scoreboard players add #hudRightDebt value 14
execute if score @s KOs matches 100.. run scoreboard players add #hudRightDebt value 14

###########
#only update slots if they changed since from the previous run

#SLOT 1-4 (handled in different ways depending if the objective is complete or not)
execute if score #pearlsNeeded value matches ..0 run function phan:custom_hud/gameplay/left_complete/_left_complete
execute if score #pearlsNeeded value matches 1.. run function phan:custom_hud/gameplay/left_incomplete/_left_incomplete

#SLOT 5
execute unless score #hudLeftDebt value = #hudPrev5 value run function phan:custom_hud/gameplay/slot5

#SLOT 6-8 (always blank)
execute unless score #playerPosition value = #hudPrev6 value run function phan:custom_hud/versus_race/slot6
execute unless score #hudPeakPlayers value = #hudPrev7 value run function phan:custom_hud/versus_race/slot7
execute unless score #hudPrev8 value matches -95 run function phan:custom_hud/versus_race/slot8

#SLOT 9
execute unless score #hudRightDebt value = #hudPrev9 value run function phan:custom_hud/versus_battle/slot9

#SLOT 10
execute unless score #hudPrev10 value matches -94 run function phan:custom_hud/versus_battle/slot10
#SLOT 11
execute unless score #KOs3 value = #hudPrev11 value run function phan:custom_hud/versus_battle/slot11
#SLOT 12
execute unless score #KOs2 value = #hudPrev12 value run function phan:custom_hud/versus_battle/slot12
#SLOT 13
execute unless score #KOs1 value = #hudPrev13 value run function phan:custom_hud/versus_battle/slot13
#SLOT 14
execute unless score #hudPrev14 value matches -93 run function phan:custom_hud/versus_battle/slot14
#SLOT 15
execute unless score #hudPrev15 value matches -92 run function phan:custom_hud/versus_battle/slot15
#SLOT 16
execute unless score #hudPrev16 value matches -96 run function phan:custom_hud/versus_battle/slot16

###########

#ok, NOW we do the index
execute if score @s hudNode matches 1..6 run function phan:custom_hud/_update_index_1_6
execute if score @s hudNode matches 7..12 run function phan:custom_hud/_update_index_7_12
execute if score @s hudNode matches 13..18 run function phan:custom_hud/_update_index_13_18
execute if score @s hudNode matches 19..24 run function phan:custom_hud/_update_index_19_24
execute if score @s hudNode matches 25..32 run function phan:custom_hud/_update_index_25_32