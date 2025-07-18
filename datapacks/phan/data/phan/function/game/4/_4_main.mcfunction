#versus gameplay

#subGameState -1 = start sequence
#subGameState 0 = gameplay
#subGameState 1 = end-game results

#global time
scoreboard players add #gameTime value 1
execute if score #subGameState value matches 0 run scoreboard players add #vTimeElapsed value 1

#mark which players are non-spectator for shared functionality
tag @a[tag=playing] add nonSpectator
tag @a[tag=playerReservation] add nonSpectator

#start sequence
execute if score #subGameState value matches -1 if score #gameState value matches 4 run function phan:game/4/start_sequence
#3,2,1 GO
execute if score #gameTime value matches 160..250 run function phan:game/4/start_countdown/_index

#stuff depending on game type
execute if score #vGameType value matches 1 run function phan:game/4/race/_race_main
execute if score #vGameType value matches 2 run function phan:game/4/battle/_battle_main

#=====
#bots do their thing (note that this happens AFTER the race or battle loop. this is important to remember!)
execute if score #botsEnabled value matches 1.. if score #gameState value matches 4 run function phan:bots/_global_bot_tick
#=====

#selected track runs its code
execute if score #gameTime value matches ..300 run function phan:levels/_index_versus_countdown
execute if score #subGameState value matches 0 run function phan:levels/_index_versus_loop

#night vision?
execute if score #nightVision value matches 1 unless score #gameState value matches 0 run effect give @a[tag=doneWithIntro] night_vision infinite 1 true

#check if we need to respawn stuff!
execute if score #versusSpawn value matches 0 run function phan:game/1/spawning/reset/reset_versus
execute if score #area0SpawnA value matches 0 run function phan:game/1/spawning/reset/reset0a
execute if score #area0SpawnB value matches 0 run function phan:game/1/spawning/reset/reset0b
execute if score #area0SpawnC value matches 0 run function phan:game/1/spawning/reset/reset0c
execute if score #area0SpawnD value matches 0 run function phan:game/1/spawning/reset/reset0d

#need to restore score data on bot waypoints if bots are enabled
execute if score #botsEnabled value matches 1.. unless entity @a[tag=phan_edit] run function phan:editor/restore_using_nbt/_tick_waypoint

#nodes respawn their stuff when told to
execute if score #5Hz value matches 0 if score #vAct value matches 1 unless score #clearCacheProgress value matches 1.. as @e[type=marker,tag=nodeArea1] at @s run function phan:game/4/spawning/check_area_generic_a
execute if score #5Hz value matches 1 if score #vAct value matches 2 unless score #clearCacheProgress value matches 1.. as @e[type=marker,tag=nodeArea2] at @s run function phan:game/4/spawning/check_area_generic_b
execute if score #5Hz value matches 2 if score #vAct value matches 3 unless score #clearCacheProgress value matches 1.. as @e[type=marker,tag=nodeArea3] at @s run function phan:game/4/spawning/check_area_generic_c
execute if score #5Hz value matches 0 if score #vAct value matches 4 unless score #clearCacheProgress value matches 1.. as @e[type=marker,tag=nodeArea4] at @s run function phan:game/4/spawning/check_area_generic_d

#interpolation effect on player soul after images
#(not used in this mode)
#execute as @e[tag=soulNeedsInterp,type=area_effect_cloud] at @s run function phan:game/1/player_soul_visuals_interp

#objects do their thing
execute as @e[tag=checkValid] at @s run function phan:game/1/objects/_index

#arrow entities have special logic that allows them to slow "hurt" players
execute as @e[type=arrow] run function phan:game/1/objects/enemy/skeleton_arrow

#clear damage since we've already processed it
scoreboard players reset @a[scores={damage=1..}] damage

#projectiles do stuff
execute if score #botsEnabled value matches ..0 as @e[tag=projectile,type=armor_stand] at @s run function phan:game/1/projectile/_index
execute if score #botsEnabled value matches 1.. as @e[tag=projectile,type=armor_stand] at @s run function phan:game/1/projectile/_index_bot_inclusive

#can use triggers
execute if score #playersOnServer value matches ..1 if score #freePlay value matches 1.. if score #subGameState value matches 0 run scoreboard players enable @a[tag=nonSpectator] restart
execute if score #playersOnServer value matches ..1 if score #hudPeakPlayers value matches ..1 if score #subGameState value matches 0 run scoreboard players enable @a[tag=nonSpectator] restart
scoreboard players enable @a[tag=nonSpectator] exit
execute if entity @a[tag=nonSpectator,scores={restart=1..}] run function phan:game/4/restart_round
execute as @a[tag=nonSpectator,scores={exit=1..}] run function phan:game/4/player_exit
#triggers work differently if game is bots-only
execute if score #botsOnly value matches 1 run function phan:game/4/bots_only_triggers
execute unless score #vGameType value matches 2 run scoreboard players enable @a[tag=playing,gamemode=adventure] respawn

#handle spectators
execute unless score #gameState value matches 0 as @a[tag=!playing,tag=doneWithIntro,scores={spectateDelay=..0}] at @s run function phan:game/1/spectator/spectator_tick
execute if score #showNametags value matches 0 unless entity @a[tag=playing,scores={pGameTime=..500}] run function phan:game/1/spectator/show_nametags

#clean-up
tag @a[tag=nonSpectator] remove nonSpectator

#force end if no active player is found
execute if score #gameState value matches 4 if score #botsOnly value matches 0 if score #gameTime value matches 100.. unless entity @a[tag=playing] unless entity @a[tag=playerReservation] run function phan:game/4/_4_exit_early
execute if score #gameState value matches 4 if score #botsOnly value matches 1 if score #gameTime value matches 100.. unless entity @e[tag=botController,type=block_display] unless entity @a[tag=playing] unless entity @a[tag=playerReservation] run function phan:game/4/_4_exit_early