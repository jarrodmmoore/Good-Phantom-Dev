#area 1 has some stuff to run
execute if entity @a[tag=playing,scores={pCurrentArea=1}] run function phan:levels/phantom_forest/area_1_loop
#tell area 1 players to shoot targets
execute as @a[scores={currentLoad=2,scoreCurrent=..4999,time2portalTicks=350..}] if score #practiceGate1 value matches 0 run function phan:game/0/player/tell_player_to_shoot_targets
#act 1: respawn players when they're on certain blocks
execute as @a[gamemode=adventure,scores={pCurrentArea=1,airTime=..1}] at @s if block ~ ~-.5 ~ #phan:practice_area_respawn unless block ~ -55 ~ #phan:area_check run scoreboard players set @s respawn 1

#water bounces players in act 2 and 3
execute as @a[tag=doneWithIntro,gamemode=adventure] at @s unless score @s pCurrentArea matches 1 if block ~ ~-0.9 ~ blue_stained_glass unless score @s autoJumpPadCooldown matches 1.. run function phan:levels/phantom_forest/water_bounce
