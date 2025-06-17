#gameplay

#some variables I want to remember...
#pSubGameState
#   -1 = loading
#	0 = starting cutscene
#	1 = gameplay
#	2 = transition between areas
#	3 = final results
#   4 = multiplayer, waiting for other players to finish their act
#   -2 = failure
#pCurrentArea
#pPearlsNeeded
#(player) enderEyes
#(player) scoreCurrent
#pTimeRemaining
#pShowHUD

#game time
scoreboard players add @s pGameTime 1


#start sequence
execute if score @s pGameTime matches ..500 unless score @s pSubGameState matches 3 run function phan:game/1/start_sequence

#active gameplay
execute if score @s pGameTime matches 501.. if score @s pSubGameState matches 1 run function phan:game/1/_active_gameplay

#transition and results between area
execute if score @s pGameTime matches 100001.. if score @s pSubGameState matches 2 if score #multiplayer value matches 0 run function phan:game/1/area_transition
execute if score @s pGameTime matches 100001.. if score @s pSubGameState matches 2 if score #multiplayer value matches 1 run function phan:game/1/area_transition_multiplayer

#failed...
execute if score @s pGameTime matches 1000000.. if score @s pSubGameState matches -2 if score #multiplayer value matches 0 run function phan:game/1/dream_failed
execute if score @s pGameTime matches 1000000.. if score @s pSubGameState matches -2 if score #multiplayer value matches 1 run function phan:game/1/dream_failed_multiplayer

#finished!
execute if score @s pGameTime matches 0.. if score @s pSubGameState matches 3 if score #multiplayer value matches 0 run function phan:game/1/dream_final_results
execute if score @s pGameTime matches 0.. if score @s pSubGameState matches 3 if score #multiplayer value matches 1 run function phan:game/1/dream_final_results_multiplayer



#count down the timer when in subGameState 1
execute if entity @s[scores={pSubGameState=1,timerAdd=0,pPenaltyTime=0}] run function phan:game/1/timer_count_down

#penalty time if we ran out the clock!
execute if entity @s[scores={pSubGameState=1,pPenaltyTime=1..}] run function phan:game/1/penalty_time/_penalty_main


#can't use respawn trigger when in spectator mode
execute if entity @s[gamemode=spectator,scores={respawn=0..}] run scoreboard players reset @s respawn


#score stuff
function phan:game/1/set_score_digits
execute if score #multiplayer value matches 1.. run function phan:game/1/set_score_sidebar

#listen for when we pass score thresholds
execute if entity @s[scores={pCurrentArea=1},gamemode=adventure] run function phan:game/1/score_listen_for_passed_rank_a1
execute if entity @s[scores={pCurrentArea=2},gamemode=adventure] run function phan:game/1/score_listen_for_passed_rank_a2
execute if entity @s[scores={pCurrentArea=3},gamemode=adventure] run function phan:game/1/score_listen_for_passed_rank_a3