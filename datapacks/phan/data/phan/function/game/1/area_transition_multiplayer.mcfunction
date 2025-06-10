#john madden in an alternate universe that has multiple john maddens

#=====
#CAMERA + SOUL STUFF

#remember our ID
scoreboard players operation #findID value = @s playerID
execute as @e[type=armor_stand,tag=camera] if score @s playerID = #findID value run tag @s add currentCamera
execute as @e[type=armor_stand,tag=playerSoul] if score @s playerID = #findID value run tag @s add currentSoul

#sound
execute if score @s pGameTime matches 100001 as @a[distance=..5] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.beacon.activate",targets:"@s",pitch:"1.3"}

#temporary entities
scoreboard players set @e[type=armor_stand,tag=currentCamera] lifespan 3
scoreboard players set @e[type=armor_stand,tag=currentSoul] lifespan 3
execute as @e[type=armor_stand,tag=currentSoul] on passengers run scoreboard players set @s lifespan 20

#camera backs up a lil bit first
execute if score @s pGameTime matches ..100024 as @e[type=armor_stand,tag=currentCamera] at @s facing entity @e[limit=1,tag=portalCore,type=marker,sort=nearest] feet rotated ~ 0 if block ^ ^1 ^-.3 #phan:not_solid run tp @s ^ ^ ^-.125 ~ ~

#spectate the camera?
spectate @e[limit=1,type=armor_stand,tag=currentCamera] @s
scoreboard players set @s spectatingObject 2

#"parameters" for some later functions that previously worked on a global system but i was too lazy to overhaul
scoreboard players operation #pGameTime value = @s pGameTime
scoreboard players operation #pCurrentArea value = @s pCurrentArea

#soul flies straight upward, vanishes if it hits a wall
scoreboard players set #followStraightUp value 0
execute if score #pGameTime value matches 100040.. as @e[tag=currentSoul,type=armor_stand] at @s run function phan:game/1/player_soul_fly_up_transition
execute as @e[tag=currentSoul,type=armor_stand] at @s run function phan:game/1/player_soul_visuals
execute if score #pGameTime value matches 100040.. if score #10Hz value matches 0 as @e[tag=currentSoul,type=armor_stand] at @s run playsound minecraft:entity.allay.item_thrown master @a[tag=doneWithIntro,distance=..20] ~ ~ ~ 1 2 .5
#re-sync pGameTime variable in case the soul modified it
scoreboard players operation @s pGameTime = #pGameTime value

#camera looks at playerSoul and follows it when it gets too far away
execute if score #pGameTime value matches 100040..100140 if score #followStraightUp value matches 1 as @e[tag=currentCamera,type=armor_stand] at @s run function phan:game/1/area_transition_cam_follow_look

#=====



#=====
#FEEDBACK STUFF

#show rank
execute if score @s pGameTime matches 100001..100059 if entity @s[scores={scoreCurrent=10..}] at @s if score #gameState value matches 1 run function phan:game/1/show_result/calc
execute if score @s pGameTime matches 100001..100059 if entity @s[scores={scoreCurrent=1..9}] at @s if score #gameState value matches 1 run function phan:game/1/show_result/calc_low
execute if score @s pGameTime matches 100001..100059 if entity @s[scores={scoreCurrent=..0}] at @s if score #gameState value matches 1 run function phan:game/1/show_result/calc_done
execute if score @s pGameTime matches 100060..100499 at @s if score #gameState value matches 1 run function phan:game/1/show_result/rank
#tellraw @a[tag=playing] ["",{text:"gameTime = "},{score:{name:"#gameTime",objective:"value"}}]

#timer approaches next value (just kidding! we're not doing this in multiplayer)
#execute if score @s pGameTime matches 100060.. if score @s pTimerGoal matches 1.. if score @s pTimeRemaining < @s pTimerGoal run scoreboard players add @s pTimeRemaining 40
#execute if score @s pGameTime matches 100060.. if score @s pTimerGoal matches 1.. if score @s pTimeRemaining > @s pTimerGoal run scoreboard players operation @s pTimeRemaining = @s pTimerGoal

#=====


#free play + time attack: stop the timer
execute if score #gameState value matches 3 if score #freePlay value matches 1 run tag @s[tag=trackPlayerTime] remove trackPlayerTime

#go back to lobby if in freeplay + time attack
execute if score @s pGameTime matches 100180.. if score #gameState value matches 3 if score #freePlay value matches 1 run function phan:game/1/end_free_play_time_attack

#gameTime 100200 means we're done here. switch to spectator and wait until all other players are done with their assigned act
execute if score @s pGameTime matches 100200.. run function phan:game/1/wait_in_spectator_mode

#show final FINAL results on the 3rd game cycle
execute if score @s pGameTime matches 100140.. if score #gameCycle value matches 3.. run function phan:game/1/start_showing_final_results

#remove tags
tag @e[tag=currentCamera] remove currentCamera
tag @e[tag=currentSoul] remove currentSoul