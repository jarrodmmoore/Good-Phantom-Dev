#john madden part 2

#=====
#WAKE UP

#visual
execute if score @s pGameTime matches 1000001 run scoreboard players set @s currentGrade 5
execute if score @s pGameTime matches 1000001 run scoreboard players set @s hudFlashTime 20

#sound
execute if score @s pGameTime matches 1000001 run function phan:tell_spectators
execute if score @s pGameTime matches 1000001 as @a[tag=tellMe] at @s run playsound minecraft:custom_sfx/alarm_bell master @s ~ 100000 ~ 100000
execute if score @s pGameTime matches 1000001 run gamemode spectator @s
execute if score @s pGameTime matches 1000001 run scoreboard players set @s scoreCurrent 0
execute if score @s pGameTime matches 1000001 run tellraw @a[tag=tellMe] ["",{"text":"\n"},{"translate":"gp.game.time_over","italic":true},{"text":"\n"}]

#=====



#=====
#BYE

execute if score @s pGameTime matches 1000041..1000090 at @s if score #gameState value matches 1 run function phan:game/1/show_result/rank_fail
execute if score @s pGameTime matches 1000001 if score #gameState value matches 3 run scoreboard players set @a[tag=playing] pShowHUD 0

#=====


#gameTime 500 means we're done here. start lobby
execute if score @s pGameTime matches 1000120.. run scoreboard players operation #lastLevelPlayed value = #chosenLevel value
execute if score @s pGameTime matches 1000120.. run function phan:game/0/_0_init