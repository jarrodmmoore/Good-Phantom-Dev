#time attack gameplay

#most game logic is run per-player now
########################
#game logic on players
execute as @a[tag=playing] at @s run function phan:game/3/_3_main_player
########################

#global time
scoreboard players add #gameTime value 1
scoreboard players add @a[tag=trackPlayerTime] rawTime 1

#music?
execute if score #startMusic value matches 1..100000 run function phan:game/1/start_gameplay_music

#level code
execute if score #gameTime value matches 100.. run function phan:levels/_index_game_loop

#night vision?
execute if score #nightVision value matches 1 unless score #gameState value matches 0 run effect give @a[tag=doneWithIntro] night_vision infinite 1 true

#check if we need to respawn stuff!
execute if score #area0SpawnA value matches 0 run function phan:game/1/spawning/reset/reset0a
execute if score #area1SpawnA value matches 0 run function phan:game/1/spawning/reset/reset1a
execute if score #area2SpawnA value matches 0 run function phan:game/1/spawning/reset/reset2a
execute if score #area3SpawnA value matches 0 run function phan:game/1/spawning/reset/reset3a
execute if score #area4SpawnA value matches 0 run function phan:game/1/spawning/reset/reset4a
execute if score #area5SpawnA value matches 0 run function phan:game/1/spawning/reset/reset5a

execute if score #area0SpawnB value matches 0 run function phan:game/1/spawning/reset/reset0b
execute if score #area1SpawnB value matches 0 run function phan:game/1/spawning/reset/reset1b
execute if score #area2SpawnB value matches 0 run function phan:game/1/spawning/reset/reset2b
execute if score #area3SpawnB value matches 0 run function phan:game/1/spawning/reset/reset3b
execute if score #area4SpawnB value matches 0 run function phan:game/1/spawning/reset/reset4b
execute if score #area5SpawnB value matches 0 run function phan:game/1/spawning/reset/reset5b

execute if score #area0SpawnC value matches 0 run function phan:game/1/spawning/reset/reset0c
execute if score #area1SpawnC value matches 0 run function phan:game/1/spawning/reset/reset1c
execute if score #area2SpawnC value matches 0 run function phan:game/1/spawning/reset/reset2c
execute if score #area3SpawnC value matches 0 run function phan:game/1/spawning/reset/reset3c
execute if score #area4SpawnC value matches 0 run function phan:game/1/spawning/reset/reset4c
execute if score #area5SpawnC value matches 0 run function phan:game/1/spawning/reset/reset5c

#nodes respawn their stuff when told to
execute if score #5Hz value matches 0 if entity @a[tag=playing,scores={pCurrentArea=1}] as @e[type=marker,tag=nodeArea1] at @s run function phan:game/1/spawning/check_area_generic_a
execute if score #5Hz value matches 1 if entity @a[tag=playing,scores={pCurrentArea=2}] as @e[type=marker,tag=nodeArea2] at @s run function phan:game/1/spawning/check_area_generic_b
execute if score #5Hz value matches 2 if entity @a[tag=playing,scores={pCurrentArea=3}] as @e[type=marker,tag=nodeArea3] at @s run function phan:game/1/spawning/check_area_generic_c

#load areas and reset zones
execute if entity @a[tag=playing,scores={pCurrentArea=1}] as @e[type=marker,tag=volumeTrigger,tag=nodeArea1] at @s run function phan:game/1/objects/volume_trigger_a
execute if entity @a[tag=playing,scores={pCurrentArea=2}] as @e[type=marker,tag=volumeTrigger,tag=nodeArea2] at @s run function phan:game/1/objects/volume_trigger_b
execute if entity @a[tag=playing,scores={pCurrentArea=3}] as @e[type=marker,tag=volumeTrigger,tag=nodeArea3] at @s run function phan:game/1/objects/volume_trigger_c

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
execute if score #playersOnServer value matches ..1 run scoreboard players enable @a[tag=playing] restart
scoreboard players enable @a[tag=playing] exit
execute if entity @a[tag=playing,scores={restart=1..}] run function phan:game/3/_3_init
execute as @a[tag=playing,scores={exit=1..}] run function phan:game/1/player_exit
scoreboard players enable @a[tag=playing,gamemode=adventure] respawn
#player respawn trigger handled in _player_main...
scoreboard players enable @a[tag=!playing] spectatorView
execute as @a[tag=!playing,scores={spectatorView=1..}] at @s run function phan:game/1/spectator/switch_view

#handle spectators
execute unless score #gameState value matches 0 as @a[tag=!playing,tag=doneWithIntro] at @s run function phan:game/1/spectator/spectator_tick
execute if score #showNametags value matches 0 unless entity @a[tag=playing,scores={pGameTime=..500}] run function phan:game/1/spectator/show_nametags

#force end if no active player is found
execute if score #gameTime value matches 100.. unless entity @a[tag=playing] unless entity @a[tag=playerReservation] run function phan:game/0/_0_init

#players taking too long with unlimited time limit? spectators can hurry them up
scoreboard players add #actTimeElapsed value 1
execute if score #hurryUp value matches 0.. if score #actTimeElapsed value matches 5000.. unless score #gameState value matches 0 as @a[tag=!playing,tag=doneWithIntro] run function phan:game/1/spectator/allow_hurryup