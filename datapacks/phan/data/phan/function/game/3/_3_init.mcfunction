#get HUD ready, but don't show it yet
scoreboard players set #showHUD value 1
scoreboard players set @a pShowHUD 0
scoreboard players set #hudMode value 2
function phan:custom_hud/setup

#manage item entities
function phan:items/reset_valid_objective

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

#quick clean-up on all players
tag @a remove playerReservation
function phan:join/player_displays_cleanup

#no sidebar please
scoreboard objectives setdisplay sidebar

#reset player gameplay scores
function phan:join/reset_gameplay_scores

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

#time attack stuff
scoreboard players set @a rawTime 0
scoreboard players set @a stardustCollected 0
scoreboard players set @a dStardustCollected 0
tag @a remove trackPlayerTime
scoreboard players set @a hudFlashTime 0

#never multiplayer in time attack mode
scoreboard players set #multiplayer value 0
#...unless we're in free play mode
execute if score #freePlay value matches 1.. run scoreboard players set #multiplayer value 1
#gameCycle is a special variable used in multiplayer
scoreboard players set #gameCycle value 1
#assign each player to a seperate act of the level
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
scoreboard players set #actTimeElapsed value 0
scoreboard players set @a targetTimesHit 0
scoreboard players set @a timesBeenHit 0
scoreboard players set @a combosDropped 0

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

#remember the last level we played
scoreboard players operation #lastLevelPlayed value = #chosenLevel value

#set state
scoreboard players set #gameState value 3