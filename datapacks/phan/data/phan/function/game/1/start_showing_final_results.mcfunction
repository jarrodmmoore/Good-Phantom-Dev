scoreboard players set @s actionbarDelay 500

#set gs
scoreboard players set @s pSubGameState 3

#start the results music
execute if score #multiplayer value matches 0 run scoreboard players set @a musicTrack 5
execute if score #multiplayer value matches 0 run function phan:bgm/set_bgm
execute if score #multiplayer value matches 1 run scoreboard players set @s musicTrack 5
execute if score #multiplayer value matches 1 run function phan:bgm/set_bgm_self
execute if score #gameState value matches 3 run scoreboard players set @a musicTrack 0
execute if score #gameState value matches 3 run function phan:bgm/set_bgm

#get rank bonuses!
function phan:game/1/show_result/rank_bonuses_get

#reset stuff
function phan:movement/reset_speed_self
scoreboard players set @s enderEyes 0
scoreboard players set @s scoreShow 0
scoreboard players operation @s scoreCurrent = @s scoreTotal

#clean-up
#kill @e[tag=camera,type=armor_stand]
#kill @e[tag=playerSoul,type=armor_stand]

#clear HUD (except in time attack mode)
execute unless score #gameState value matches 3 run scoreboard players set @s pShowHUD 0
#function phan:custom_hud/clear_bossbars

#this is necessary
scoreboard players set @s pGameTime 0