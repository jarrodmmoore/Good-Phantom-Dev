#now run by a specific player

#player gets sent to start
gamemode adventure @s
scoreboard players set @s spectatingObject 0
execute at @s run tp @s @e[limit=1,sort=nearest,type=marker,tag=startPoint,distance=..40]
execute at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2

#we show the title display to anyone spectating us
function phan:player/tell_spectators

#title
title @a[tag=tellMe] subtitle [""]
title @a[tag=tellMe] title [""]
title @s actionbar ["",{translate:"gp.game.go",italic:true,color:"green"}]
scoreboard players set @s actionbarDelay 40
tag @a[tag=tellMe] remove tellMe

#notify the game that it's time to set the default level music
scoreboard players add #startMusic value 1
#update music
function phan:bgm/play_level_music

#clean-up
kill @e[tag=currentCamera,type=armor_stand]
execute as @e[tag=currentSoul,type=armor_stand] on passengers run scoreboard players set @s lifespan 1
kill @e[tag=currentSoul,type=item_display]

#get game going!
scoreboard players set @s pSubGameState 1
scoreboard players set @s pShowHUD 1
scoreboard players set @s pLootCycle 0
tag @s[tag=noInventory] remove noInventory
scoreboard players reset @a hurryUp
scoreboard players set #hurryUp value 0
scoreboard players set #actTimeElapsed value 0
scoreboard players set @s currentGrade 4
scoreboard players set @s hudFlashTime 0
scoreboard players set @s shootAware 0
scoreboard players set @s pPenaltyTime 0
scoreboard players set @s pPenaltyPoints 0
scoreboard players set @s seekSpawnpoint 0

#reset speeds and energy
function phan:movement/reset_speed_self
scoreboard players set @s energy 8

#reset values (multiplayer)
scoreboard players set @s scoreCurrent 0
scoreboard players set @s scoreCurrent2 0
scoreboard players set @s enderEyes 0
scoreboard players set @s time2portalTicks 0
scoreboard players set @s time2portalMsec 0
scoreboard players set @s time2portalSec 0
scoreboard players set @s time2portalSec10 0
scoreboard players set @s time2portalMin 0
scoreboard players set @s comboTime 0
scoreboard players set @s combo 0
scoreboard players set @s showEnemyCount 0
scoreboard players set @s addScore 0
scoreboard players set @s addPointsLater 0
scoreboard players set @s combosDropped 0
scoreboard players set @s teleportersUsed 0
scoreboard players set @s targetsShot 0
scoreboard players set @s lap 0

#players get spawn invulnerability!
scoreboard players set @a[tag=playing] spawnInvulnerability 40
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=ai,type=zombie] spawnInvulnerability 40

#refresh skybox (sometimes it gets messed up...)
scoreboard players operation @s skyboxSet = @s skybox

#time attack: get the timer started if it hasn't started already
tag @s add trackPlayerTime

#remove any pending time changes
scoreboard players set @a timerAdd 0

#start loading nodes for this area
function phan:game/1/start_loading_area
scoreboard players set @s currentLoad 0
scoreboard players set @s previousLoad -1

#record whether we've unlocked certain built-in levels
scoreboard players operation #math value = @s pCurrentArea
function phan:levels/_index_unlock_act

#set spawnpoint
spawnpoint @s ~ ~1 ~
function phan:game/1/player/set_spawnpoint

#load area info!
function phan:game/1/load_area_info