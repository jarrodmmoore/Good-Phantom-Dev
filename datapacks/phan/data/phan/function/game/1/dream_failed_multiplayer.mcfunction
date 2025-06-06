#john madden is cancelled

#=====
#WAKE UP (except not really, we keep playing in multiplayer)

#visual
execute if score @s pGameTime matches 1000001 run scoreboard players set @s currentGrade 5
execute if score @s pGameTime matches 1000001 run scoreboard players set @s hudFlashTime 20

#sound
execute if score @s pGameTime matches 1000001 run function phan:player/tell_spectators
execute if score @s pGameTime matches 1000001 if score @s pPenaltyTime matches 1.. as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.iron_golem.death",targets:"@s",pitch:"1.35",volume:".9"}
execute if score @s pGameTime matches 1000001 unless score @s pPenaltyTime matches 1.. as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:custom_sfx/alarm_bell",targets:"@s",pitch:"1",volume:".85"}
execute if score @s pGameTime matches 1000001 run gamemode spectator @s
execute if score @s pGameTime matches 1000001 run scoreboard players set @s scoreCurrent 0
execute if score @s pGameTime matches 1000001 run tellraw @a[tag=tellMe] ["",{text:"\n"},{translate:"gp.game.time_over",italic:true},{text:"\n"}]

#record score right now
execute if score @s pGameTime matches 1000001 run function phan:game/1/dream_failed_multiplayer_record_score

#=====



#=====
#BYE

execute if score @s pGameTime matches 1000041..1000090 at @s run function phan:game/1/show_result/rank_fail

#=====


#gameTime 1000120 means we're done here. start gameplay again!
execute if score @s pGameTime matches 1000120.. run function phan:game/1/wait_in_spectator_mode

#show final FINAL results on the 3rd game cycle
execute if score @s pGameTime matches 1000100.. if score #gameCycle value matches 3.. run function phan:game/1/start_showing_final_results