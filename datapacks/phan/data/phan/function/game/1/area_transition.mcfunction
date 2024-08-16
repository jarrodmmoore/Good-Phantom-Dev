#john madden part 2

#=====
#CAMERA + SOUL STUFF

#remember our ID
scoreboard players operation #findID value = @s playerID
execute as @e[type=armor_stand,tag=camera] if score @s playerID = #findID value run tag @s add currentCamera
execute as @e[type=armor_stand,tag=playerSoul] if score @s playerID = #findID value run tag @s add currentSoul

#sound
execute if score @s pGameTime matches 100001 as @a[distance=..5] at @s run playsound minecraft:block.beacon.activate master @s ~ 100000 ~ 100000 1.3

#temporary entities
scoreboard players set @e[type=armor_stand,tag=currentCamera] lifespan 3
scoreboard players set @e[type=armor_stand,tag=currentSoul] lifespan 3
execute as @e[type=armor_stand,tag=currentSoul] on passengers run scoreboard players set @s lifespan 3

#camera backs up a lil bit first
execute if score @s pGameTime matches ..100024 as @e[type=armor_stand,tag=currentCamera] at @s facing entity @e[limit=1,tag=portalCore,type=marker,sort=nearest] feet rotated ~ 0 if block ^ ^1 ^-.3 #phan:not_solid run tp @s ^ ^ ^-.125 ~ ~

#spectate the camera?
spectate @e[limit=1,type=armor_stand,tag=currentCamera] @s
scoreboard players set @s spectatingObject 2

#"parameters" for some later functions that previously worked on a global system but i was too lazy to overhaul
scoreboard players operation #pGameTime value = @s pGameTime
execute if score #pGameTime value matches 100040 run scoreboard players operation @s pTransitionProgress = #pGameTime value
scoreboard players operation #pCurrentArea value = @s pCurrentArea
scoreboard players operation #pTransitionProgress value = @s pTransitionProgress

#soul flies toward the next portal (based on index)
scoreboard players set #followStraightUp value 0
scoreboard players set #followStraightUpSpeed value 1
execute if score #pGameTime value matches 100040.. as @e[tag=currentSoul,type=armor_stand] at @s run function phan:levels/_index_area_transition
execute as @e[tag=currentSoul,type=armor_stand] at @s run function phan:game/1/player_soul_visuals_reduced
execute if score #pGameTime value matches 100040.. if score #gameState value matches 3 if score @s stardustCollected matches 1.. run function phan:game/3/area_transition_speedup
execute if score #pGameTime value matches 100120.. as @e[tag=currentSoul,type=armor_stand] at @s if entity @e[type=marker,tag=startPoint,distance=..5] run scoreboard players set #pGameTime value 100500
execute if score #pTransitionProgress value matches 100040.. if score #10Hz value matches 0 as @e[tag=currentSoul,type=armor_stand] at @s run playsound minecraft:entity.allay.item_thrown master @a[tag=doneWithIntro,distance=..20] ~ ~ ~ 1 2 .5
#re-sync pGameTime variable in case the soul modified it
scoreboard players operation @s pGameTime = #pGameTime value
scoreboard players operation @s pTransitionProgress = #pTransitionProgress value

#camera looks at playerSoul and follows it when it gets too far away
execute if score #pTransitionProgress value matches 100040.. if score #followStraightUp value matches 0 as @e[tag=currentCamera,type=armor_stand] at @s run function phan:game/1/area_transition_cam_follow
execute if score #pTransitionProgress value matches 100040..100140 if score #followStraightUp value matches 1 as @e[tag=currentCamera,type=armor_stand] at @s run function phan:game/1/area_transition_cam_follow_final
execute if score #pTransitionProgress value matches 100040..100140 if score #followStraightUp value matches -1 as @e[tag=currentCamera,type=armor_stand] at @s run function phan:game/1/area_transition_cam_follow_final_stationary

#=====



#=====
#FEEDBACK STUFF

#show rank
execute if score @s pGameTime matches 100001..100059 if entity @s[scores={scoreCurrent=10..}] at @s if score #gameState value matches 1 run function phan:game/1/show_result/calc
execute if score @s pGameTime matches 100001..100059 if entity @s[scores={scoreCurrent=1..9}] at @s if score #gameState value matches 1 run function phan:game/1/show_result/calc_low
execute if score @s pGameTime matches 100001..100059 if entity @s[scores={scoreCurrent=..0}] at @s if score #gameState value matches 1 run function phan:game/1/show_result/calc_done
execute if score @s pGameTime matches 100060..100499 at @s if score #gameState value matches 1 run function phan:game/1/show_result/rank
#tellraw @a[tag=playing] ["",{"text":"gameTime = "},{"score":{"name":"#gameTime","objective":"value"}}]

#timer approaches next value
execute if score @s pGameTime matches 100060.. if score @s pTimerGoal matches 1.. if score @s pTimeRemaining < @s pTimerGoal run scoreboard players add @s pTimeRemaining 40
execute if score @s pGameTime matches 100060.. if score @s pTimerGoal matches 1.. if score @s pTimeRemaining > @s pTimerGoal run scoreboard players operation @s pTimeRemaining = @s pTimerGoal

#=====


#at gameTime 100 we load nodes for the next area. mostly to make the next level's portal un-fill itself
execute if score @s pGameTime matches 100100 run function phan:game/1/start_loading_area
#this would be problematic in multiplayer but this function we're in is singleplayer only so it should be okay


#gameTime 500 means we're done here. start gameplay again!
execute if score @s pGameTime matches 100500.. unless score #replayStartAnim value matches 1 run function phan:game/1/start_go_subsequent
execute if score @s pGameTime matches 100500.. if score #replayStartAnim value matches 1 run function phan:game/1/next_act_solo_player

#show final FINAL results
execute if score @s pGameTime matches 100140.. if score @s pCurrentArea matches 4.. run function phan:game/1/start_showing_final_results

#remove tags
tag @e[tag=currentCamera] remove currentCamera
tag @e[tag=currentSoul] remove currentSoul