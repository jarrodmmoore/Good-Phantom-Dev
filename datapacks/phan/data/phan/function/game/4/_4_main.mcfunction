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

#selected track runs its code
execute if score #subGameState value matches 0 run function phan:levels/_index_versus_loop

#night vision?
execute if score #nightVision value matches 1 unless score #gameState value matches 0 run effect give @a[tag=doneWithIntro] night_vision infinite 1 true

#check if we need to respawn stuff!
execute if score #versusSpawn value matches 0 run function phan:game/1/spawning/reset/reset_versus
execute if score #area0SpawnA value matches 0 run function phan:game/1/spawning/reset/reset0a
execute if score #area0SpawnB value matches 0 run function phan:game/1/spawning/reset/reset0b
execute if score #area0SpawnC value matches 0 run function phan:game/1/spawning/reset/reset0c

#nodes respawn their stuff when told to
execute if score #5Hz value matches 0 if score #vAct value matches 1 as @e[type=marker,tag=nodeArea1] at @s run function phan:game/4/spawning/check_area_generic_a
execute if score #5Hz value matches 1 if score #vAct value matches 2 as @e[type=marker,tag=nodeArea2] at @s run function phan:game/4/spawning/check_area_generic_b
execute if score #5Hz value matches 2 if score #vAct value matches 3 as @e[type=marker,tag=nodeArea3] at @s run function phan:game/4/spawning/check_area_generic_c

#interpolation effect on player soul after images
execute as @e[tag=soulNeedsInterp,type=area_effect_cloud] at @s run function phan:game/1/player_soul_visuals_interp

#objects do their thing
execute as @e[tag=checkValid] at @s run function phan:game/1/objects/_index

#all arrows we shoot should cause the timer to go down
execute as @e[type=arrow,tag=!arrowMarked] run function phan:game/1/objects/enemy/skeleton_mark_arrow
execute as @e[type=arrow,tag=hurtfulArrow] at @s run function phan:game/1/objects/enemy/hurtful_arrow

#clear damage since we've already processed it
scoreboard players reset @a[scores={damage=1..}] damage

#projectiles do stuff
execute as @e[tag=projectile,type=armor_stand] at @s run function phan:game/1/projectile/_index

#can use triggers
execute if score #playersOnServer value matches ..1 run scoreboard players enable @a[tag=nonSpectator] restart
scoreboard players enable @a[tag=nonSpectator] exit
execute if entity @a[tag=nonSpectator,scores={restart=1..}] run function phan:game/4/restart_round
execute as @a[tag=nonSpectator,scores={exit=1..}] run function phan:game/4/player_exit
scoreboard players enable @a[tag=playing,gamemode=adventure] respawn
#player respawn trigger handled in _player_main...
scoreboard players enable @a[tag=!playing] spectatorView
execute as @a[tag=!playing,scores={spectatorView=1..}] at @s run function phan:game/1/spectator/switch_view

#handle spectators
execute unless score #gameState value matches 0 as @a[tag=!playing,tag=doneWithIntro,scores={spectateDelay=..0}] at @s run function phan:game/1/spectator/spectator_tick
execute if score #showNametags value matches 0 unless entity @a[tag=playing,scores={pGameTime=..500}] run function phan:game/1/spectator/show_nametags

#clean-up
tag @a[tag=nonSpectator] remove nonSpectator

#force end if no active player is found
execute if score #gameState value matches 4 if score #gameTime value matches 100.. unless entity @a[tag=playing] unless entity @a[tag=playerReservation] run function phan:game/0/_0_init