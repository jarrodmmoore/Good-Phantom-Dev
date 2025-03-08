#gameplay


#game time
scoreboard players add @s pGameTime 1


#start sequence
execute if score @s pGameTime matches ..500 unless score @s pSubGameState matches 3 run function phan:game/1/start_sequence

#active gameplay
execute if score @s pGameTime matches 501.. if score @s pSubGameState matches 1 run function phan:game/1/_active_gameplay

#stardust count changed? show it
execute if score #gameState value matches 3 unless score @s stardustCollected = @s dStardustCollected run function phan:game/3/stardust_display


#transition and results between area
execute if score @s pGameTime matches 100001.. if score @s pSubGameState matches 2 if score #multiplayer value matches 0 run function phan:game/1/area_transition
execute if score @s pGameTime matches 100001.. if score @s pSubGameState matches 2 if score #multiplayer value matches 1 run function phan:game/1/area_transition_multiplayer

#failed...
execute if score @s pGameTime matches 1000000.. if score @s pSubGameState matches -2 run function phan:game/3/dream_failed

#finished!
execute if score @s pGameTime matches 0.. if score @s pSubGameState matches 3 run function phan:game/1/dream_final_results



#count down the timer when in subGameState 1
execute if score @s pSubGameState matches 1 if score @s timerAdd matches 0 run function phan:game/3/timer_count_down


#can't use respawn trigger when in spectator mode
execute if entity @s[gamemode=spectator,scores={respawn=0..}] run scoreboard players reset @s respawn