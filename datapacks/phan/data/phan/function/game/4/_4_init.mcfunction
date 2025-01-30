#keep track of the last mode we played so we can show relevant tips
scoreboard players set #lastModePlayed value 4

#grand prix mode: quick-- look up what level we're supposed to be playing and overwrite whatever's in memory!
execute if score #grandPrixActive value matches 1.. run function phan:phantom_racer/game_io/gp_get_round_data
execute if score #grandPrixActive value matches 1.. run scoreboard players operation #freePlayAct value = #vAct value

#load level data
function phan:level_manager/load/cache_active_level_data
function phan:level_manager/load/trim_excess_bot_checkpoint_data

#spectators who joined in the middle of a set of versus rounds get incorporated into the game right here
tag @a[tag=doneWithIntro,tag=vsMidGameJoin] add playing
tag @a[tag=doneWithIntro,tag=vsMidGameJoin] remove vsMidGameJoin

#allow spectators to join
scoreboard players reset @a joinGame
scoreboard players enable @a[tag=doneWithIntro,tag=!playing] joinGame

#get HUD ready, but don't show it yet
scoreboard players set #showHUD value 1
scoreboard players set @a pShowHUD 0
scoreboard players set #hudMode value 3
function phan:custom_hud/setup

#grand prix: show round number
execute if score #grandPrixActive value matches 1.. run scoreboard players set #grandPrixRoundAnimation value 0

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

#no sidebar please
execute unless score #gameState value matches 4 run scoreboard objectives setdisplay sidebar

#players have aqua name now
team modify player color aqua
team modify observer color aqua
team modify player friendlyFire false
team modify botDisplayVEasy color aqua
team modify botDisplayEasy color aqua
team modify botDisplayNormal color aqua
team modify botDisplayHard color aqua
team modify botDisplayTryhard color aqua
team modify botDisplayTryharder color aqua

#no crown?
execute unless score #allowCrown value matches 1 run tag @a[tag=vsCrown] remove vsCrown
scoreboard players set #allowCrown value 0

#quick clean-up on all players
execute if score #gameState value matches 4 run tag @a[tag=playerReservation] add playing
tag @a[tag=playerReservation] remove playerReservation
function phan:player/player_displays_cleanup

#reset versus scores
scoreboard players set #startGrid value 1
scoreboard players set #321go value 99
scoreboard players set #vsPortalOpen value 0
scoreboard players set #1stPlaceLeadTime value 0
scoreboard players set #eyeShowAssign value 2147483647
scoreboard players set #versusPointsShowing value 0
execute as @a run function phan:game/4/reset_player_scores

#reset timestamps on checkpoints
function phan:game/4/race/checkpoint/timestamp/reset_all

#no equipment for a bit while we load
execute as @a[tag=doneWithIntro] run function phan:game/1/keep_player_out_of_portal
tag @a[tag=doneWithIntro] add noInventory
gamemode adventure @a[tag=doneWithIntro]

#disable "restart" trigger if players are spectating (prevents player from holding the game hostage)
execute store result score #playersOnServer value run execute if entity @a[tag=doneWithIntro]

#set up some game variables
scoreboard players set #gameTime value 0
scoreboard players set #subGameState value -1
scoreboard players set #showNametags value 0
team modify player nametagVisibility never
scoreboard players set #vTimeRemaining value 4819
scoreboard players set #vTimeElapsed value 0
scoreboard players set #hudPeakPlayers value 0
function phan:custom_hud/count_players

#set the act we're going to
execute unless score #gameState value matches 4 run scoreboard players set #vAct value 1
execute if score #gameState value matches 4 run scoreboard players add #vAct value 1
execute if score #vsRestart value matches 1 if score #vAct value matches 2.. run scoreboard players remove #vAct value 1
execute if score #vAct value matches 5.. run scoreboard players set #vAct value 1
#skip over any acts that aren't selectable
execute if score #vAct value matches ..4 unless function phan:game/4/verify_act_exists run scoreboard players add #vAct value 1
execute if score #vAct value matches ..4 unless function phan:game/4/verify_act_exists run scoreboard players add #vAct value 1
execute if score #vAct value matches ..4 unless function phan:game/4/verify_act_exists run scoreboard players add #vAct value 1
execute if score #vAct value matches ..4 unless function phan:game/4/verify_act_exists run scoreboard players add #vAct value 1
#override act number with #freePlayAct argument if relevant
execute if score #freePlay value matches 1 run scoreboard players operation #vAct value = #freePlayAct value
execute if score #grandPrixActive value matches 1.. run scoreboard players operation #vAct value = #freePlayAct value
scoreboard players set #vsRestart value 0

#if we're attempting to boot into act 5, let's instead switch to the podium sequence
execute if score #vAct value matches 5.. run return run function phan:game/5/_5_init
#=====

#set versus mode session if we're entering in at act 1
scoreboard players set #success value 0
execute unless score #gameState value matches 4 if score #freePlay value matches 0 run function phan:game/4/new_versus_session
#versus mode points persist between acts of the same dream if played normally and then reset afterward
#BUT-- if we're playing a single act in "free play" mode, we never change the session and let points accumulate between games

#show tip to players who neglected to boost last game
execute if score #success value matches 0 as @a[tag=doneWithIntro,tag=playing,tag=!stopShowingTipsPR,tag=finishedWithFullBoost] if score #freePlay value matches ..0 run tellraw @s ["",{"text":" "}]
execute if score #success value matches 0 as @a[tag=doneWithIntro,tag=playing,tag=!stopShowingTipsPR,tag=finishedWithFullBoost] run function phan:game/0/tip_show_portal_race

#default settings for a level, overwritten upon loading area info
scoreboard players set #nightVision value 0
scoreboard players set #brightMines value 0

#load area info!
function phan:bots/controller/reset_checkpoint_info
function phan:game/1/spawning/reset_all
function phan:game/4/load_area_info
execute if score #vGameType value matches 2 run scoreboard players set #hudMode value 4
execute if score #vGameType value matches 2 run scoreboard players reset * enderEyesShow
scoreboard players reset * eyeSlotAssignment

#item stuff
scoreboard players set #eyeSpawnerID value 1
scoreboard players set #itemBoxID value 1
scoreboard players set #BOXRESPAWNTIME value 45

#tell the nodes for this act to start loading
scoreboard players set #versusSpawn value 0
execute if score #vAct value matches 1 run scoreboard players set #area0SpawnA value 0
execute if score #vAct value matches 2 run scoreboard players set #area0SpawnB value 0
execute if score #vAct value matches 3 run scoreboard players set #area0SpawnC value 0
execute if score #vAct value matches 4 run scoreboard players set #area0SpawnD value 0

#bot setup
function phan:bots/_pre_round_bot_setup

#position calculator stuff
scoreboard players set #positionAssignMin value 1
scoreboard players reset * racePosDisplay2
scoreboard objectives modify racePosDisplay2 displayname ["",{"translate":"gp.versus.position","bold":true}]
scoreboard players set #showingRacePositions value -1
scoreboard players set #vsHomeStretch value 0

#remember the last level we played
scoreboard players operation #lastLevelPlayed value = #chosenLevel value

#set state
scoreboard players set #gameState value 4

#mark if the game is spectator only
scoreboard players set #botsOnly value 0
execute if score #botCount value matches 1.. unless entity @a[tag=doneWithIntro,tag=playing] run scoreboard players set #botsOnly value 1

#show tutorial to everyone if nobody has seen it yet
scoreboard players add @a tutorialProgress 0
execute unless entity @a[tag=doneWithIntro,tag=playing,scores={tutorialProgress=1000..}] if score #botsOnly value matches 0 run scoreboard players set @a[tag=doneWithIntro] tutorialProgress 0
execute if entity @a[tag=doneWithIntro,tag=playing,scores={tutorialProgress=1000..}] run scoreboard players set @a[tag=doneWithIntro] tutorialProgress 1000


#reset player gameplay scores (need to do this AFTER setting gameState due to a conditional)
function phan:player/reset_gameplay_scores