#executed by a player, ideally
#call with the act you want to play

#if you're using this from somewhere other than the act select sub-menu:
#you'll need to set these things before running!
#--chosenLevel
#--desiredGamemode

#boot into gameState 2 if we aren't there already
execute unless score #gameState value matches 2 run function phan:game/2/_2_init

#select the level and open the team select menu
scoreboard players set #freePlay value 1
$scoreboard players set #freePlayAct value $(act)
scoreboard players operation #showActNumber value = #freePlayAct value
execute if score #desiredGamemode value matches 1 run function phan:game/2/start_mode_score_attack
execute if score #desiredGamemode value matches 2 run function phan:game/2/start_mode_time_attack
execute if score #desiredGamemode value matches 3 run function phan:game/2/start_mode_versus