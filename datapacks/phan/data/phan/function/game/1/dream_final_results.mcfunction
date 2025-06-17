#john madden part 3

#=====
#CAMERA SOUL STUFF

#night vision if we're tagged for that
execute if entity @s[tag=getNightVisionInSA] run effect give @s night_vision 15 1 true

#"parameters" for some later functions that previously worked on a global system but i was too lazy to overhaul
scoreboard players operation #pGameTime value = @s pGameTime
scoreboard players operation #pCurrentArea value = @s pCurrentArea
scoreboard players operation #pTransitionProgress value = @s pTransitionProgress

#remember our ID
scoreboard players operation #findID value = @s playerID
execute as @e[type=armor_stand,tag=camera] if score @s playerID = #findID value run tag @s add currentCamera
execute as @e[type=armor_stand,tag=playerSoul] if score @s playerID = #findID value run tag @s add currentSoul

#temporary entities
scoreboard players set @e[type=armor_stand,tag=currentCamera] lifespan 20
#scoreboard players set @e[type=armor_stand,tag=playerSoul] lifespan 20

#soul flies upwards
execute as @e[tag=currentSoul,type=armor_stand] at @s run function phan:game/1/player_soul_visuals
execute as @e[tag=currentSoul,type=armor_stand] at @s run function phan:levels/_index_area_transition
execute if score #10Hz value matches 0 as @e[tag=currentSoul,type=armor_stand] at @s run playsound minecraft:entity.allay.item_thrown master @a[tag=doneWithIntro] ~ ~ ~ 1 2 .5
#re-sync pGameTime variable in case the soul modified it
scoreboard players operation @s pGameTime = #pGameTime value
scoreboard players operation @s pTransitionProgress = #pTransitionProgress value

#(camera stays still now)

#spectate the camera?
spectate @e[limit=1,type=armor_stand,tag=currentCamera] @s
scoreboard players set @s spectatingObject 2

#=====



#=====
#FEEDBACK STUFF

#remember ranks for previous 3 (run every tick now so other players don't mess with our stuff)
execute if score #gameState value matches 1 run function phan:game/1/store_final_rank_names
#and now show them
execute if score #gameState value matches 1 run title @s actionbar ["",{selector:"00000000-0000-0328-0000-000000000019"},{text:" "},{text:" "},{text:" "},{text:" "},{selector:"00000000-0000-0328-0000-00000000001a"},{text:" "},{text:" "},{text:" "},{text:" "},{selector:"00000000-0000-0328-0000-00000000001b"}]

#show final score and rank
scoreboard players operation #pGameTime value = @s pGameTime
execute if score @s pGameTime matches 41..99 as @s[scores={scoreCurrent=10..}] at @s if score #gameState value matches 1 run function phan:game/1/show_result/calc
execute if score @s pGameTime matches 41..99 as @s[scores={scoreCurrent=1..9}] at @s if score #gameState value matches 1 run function phan:game/1/show_result/calc_low
execute if score @s pGameTime matches 41..99 as @s[scores={scoreCurrent=..0}] at @s if score #gameState value matches 1 run function phan:game/1/show_result/calc_done
execute if score @s pGameTime matches 100 if score #gameState value matches 1 if score #assist_enabled_scoreattack value matches ..0 run function phan:game/1/show_result/rank_bonuses_show
execute if score @s pGameTime matches 100 if score #gameState value matches 1 if score @s scoreShow matches 1.. at @s in minecraft:overworld run function phan:high_score/record_score_start
execute if score @s pGameTime matches 100..299 at @s if score #gameState value matches 1 run function phan:game/1/show_result/rank_final

#show final time and medal
#stop the timer once the camera stops moving for this cutscene
tag @s[tag=trackPlayerTime] remove trackPlayerTime
execute if score @s pGameTime matches 20 if score #gameState value matches 3 if score @s rawTime matches 1.. at @s in minecraft:overworld run function phan:high_score/record_time_start
execute if score @s pGameTime matches 40..299 at @s if score #gameState value matches 3 run function phan:game/1/show_result/medals_final
execute if score @s pGameTime matches 260 if score #gameState value matches 3 run function phan:game/1/show_result/time_thresholds_show

#sync pGameTime again
scoreboard players operation @s pGameTime = #pGameTime value

#=====


#run home jack
execute if score @s pGameTime matches 300.. run kill @e[tag=currentCamera,type=armor_stand]
execute if score @s pGameTime matches 300.. run function phan:game/0/_0_init

#clean up tags
tag @e[tag=currentCamera] remove currentCamera
tag @e[tag=currentSoul] remove currentSoul