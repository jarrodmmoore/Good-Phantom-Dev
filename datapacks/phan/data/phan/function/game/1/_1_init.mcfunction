#keep track of the last mode we played so we can show relevant tips
scoreboard players set #lastModePlayed value 1

#load level data
function phan:level_manager/load/cache_active_level_data

#get HUD ready, but don't show it yet
scoreboard players set #showHUD value 1
scoreboard players set @a pShowHUD 0
scoreboard players set #hudMode value 1
function phan:custom_hud/setup

#bots don't exist anymore
scoreboard players set #botsEnabled value 0

#manage item entities
function phan:items/reset_valid_objective

#clear stuff from scoreboard
function phan:editor/clear_scoreboard_cache_start

#stop music for a second
scoreboard players set #bgm value 0
scoreboard players set @a musicTrack 0
function phan:bgm/set_bgm
scoreboard players set #startMusic value 0

#kill entities at spawn to improve tick performance
kill @e[tag=lobbyProp]

#players have aqua name now
team modify player color aqua
team modify observer color aqua
team modify player friendlyFire false

#no crown?
execute unless score #allowCrown value matches 1 run tag @a[tag=vsCrown] remove vsCrown
scoreboard players set #allowCrown value 0

#no sidebar please
scoreboard objectives setdisplay sidebar

#quick clean-up on all players
tag @a remove playerReservation
function phan:player/player_displays_cleanup

#reset player gameplay scores
function phan:player/reset_gameplay_scores

#no equipment for a bit while we load
tag @a[tag=doneWithIntro] add noInventory

#areas loaded?
scoreboard players set #currentArea value 1
scoreboard players set #timerGoal value 0
scoreboard players set @a currentLoad 0
scoreboard players set @a previousLoad 0
function phan:game/1/spawning/reset_all
scoreboard players set @a[tag=playing] pCurrentArea 1
scoreboard players set @a[tag=playing] pTimerGoal 0

#multiplayer score show
scoreboard objectives remove scoreSidebar
scoreboard objectives add scoreSidebar dummy ["",{"translate":"gp.game.score","bold":true}]

#check if we're playing multiplayer
execute store result score #test value run execute if entity @a[tag=playing,tag=doneWithIntro]
scoreboard players set #multiplayer value 0
execute if score #test value matches 2.. run scoreboard players set #multiplayer value 1
execute if score #freePlay value matches 1.. run scoreboard players set #multiplayer value 1
execute if entity @a[tag=debugMultiplayer] run scoreboard players set #multiplayer value 1
execute if entity @a[tag=debugMultiplayer] run say debugMultiplayer
#gameCycle is a special variable used in multiplayer
scoreboard players set #gameCycle value 1
#assign each player to a separate act of the level
scoreboard players set #actAssign value 0
execute if score #multiplayer value matches 1 as @a[tag=playing,sort=random] run function phan:game/1/multiplayer_act_assign
execute if score #multiplayer value matches 1 unless score #freePlay value matches 1 run scoreboard objectives setdisplay sidebar scoreSidebar

#disable "restart" trigger if players are spectating (prevents player from holding the game hostage)
execute store result score #playersOnServer value run execute if entity @a[tag=doneWithIntro]

#set up some game variables
scoreboard players set #gameTime value 0
scoreboard players set #subGameState value -1
scoreboard players set @a[tag=playing] pGameTime 0
execute unless score #gameState value matches 1 run scoreboard players set @a[tag=playing] pGameTime -20
scoreboard players set @a[tag=playing] pSubGameState -1
scoreboard players set #showNametags value 0
team modify player nametagVisibility never
scoreboard players set #replayStartAnim value 0
scoreboard players set #hurryUp value 0
scoreboard players set #actTimeElapsed value 0
scoreboard players set @a addScore 0
scoreboard players set @a targetTimesHit 0
scoreboard players set @a timesBeenHit 0
scoreboard players set @a currentGrade 4
scoreboard players reset @a seekSpawnpoint

#fallback variables, intended to be overridden by the level we're going to
scoreboard players set #pearlsNeeded value 12
scoreboard players set #timeRemaining value 1219
scoreboard players set @a[tag=playing] pPearlsNeeded 12
scoreboard players set @a[tag=playing] pTimeRemaining 1219

#set up the level we're going to
scoreboard players set #checkLoadHeight value -64
function phan:levels/_index_init

#load area info!
function phan:game/1/load_area_info

#show a tip?
#execute as @a if score @s playerTipTime matches -300.. run function phan:game/0/tip_show

#remember the last level we played
scoreboard players operation #lastLevelPlayed value = #chosenLevel value

#set state
scoreboard players set #gameState value 1