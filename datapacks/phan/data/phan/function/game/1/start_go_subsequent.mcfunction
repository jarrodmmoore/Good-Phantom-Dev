#player gets sent to start
gamemode adventure @s
scoreboard players set @s spectatingObject 0
scoreboard players set #teleportStart value 1
function phan:levels/_index_teleport
execute at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2

#we show the title display to anyone spectating us
function phan:player/tell_spectators

#title
title @a[tag=tellMe] subtitle [""]
title @a[tag=tellMe] title [""]
execute unless score #gameState value matches 3 run title @s actionbar ["",{"translate":"gp.game.go","italic":true,"color":"green"}]
scoreboard players set @s actionbarDelay 40
tag @a[tag=tellMe] remove tellMe

#get game going!
scoreboard players set @s pSubGameState 1
tag @s[tag=noInventory] remove noInventory
scoreboard players reset @a hurryUp
scoreboard players set #hurryUp value 0
scoreboard players set #actTimeElapsed value 0
scoreboard players set @s currentGrade 4
scoreboard players set @s hudFlashTime 0
scoreboard players set @s shootAware 0
scoreboard players set @s pPenaltyTime 0
scoreboard players set @s pPenaltyPoints 0

#update music
function phan:bgm/play_level_music

#reset stuff
function phan:movement/reset_speed_self
scoreboard players set @s scoreCurrent 0
scoreboard players set @s scoreCurrent2 0
scoreboard players set @s enderEyes 0
scoreboard players set @s energy 8
scoreboard players set @s showEnemyCount 0
scoreboard players set @s addScore 0
scoreboard players set @s addPointsLater 0
#remove any pending time changes
scoreboard players set @s timerAdd 0
scoreboard players set @s pLootCycle 0
scoreboard players set @s comboTime 0
scoreboard players set @s combo 0
scoreboard players set @s combosDropped 0
scoreboard players set @s teleportersUsed 0
scoreboard players set @s targetsShot 0
scoreboard players set @s lap 0

#clean-up
kill @e[tag=currentCamera,type=armor_stand]
kill @e[tag=currentSoul,type=armor_stand]

#start loading nodes for this area
function phan:game/1/start_loading_area
scoreboard players set @s currentLoad 0
scoreboard players set @s previousLoad -1

#refresh skybox (sometimes it gets messed up...)
scoreboard players operation @s skyboxSet = @s skybox

#load area info!
function phan:game/1/load_area_info
scoreboard players set @s time2portalTicks 0
scoreboard players set @s time2portalMsec 0
scoreboard players set @s time2portalSec 0
scoreboard players set @s time2portalSec10 0
scoreboard players set @s time2portalMin 0

#time attack: get the timer started if it hasn't started already
tag @s add trackPlayerTime

#this is not necessary
scoreboard players set @s pGameTime 500