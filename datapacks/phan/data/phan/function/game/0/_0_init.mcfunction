#init

#players have white name now
team modify player color white
team modify observer color white
team modify player nametagVisibility always
team modify player friendlyFire false
team modify botDisplayVEasy color white
team modify botDisplayEasy color white
team modify botDisplayNormal color white
team modify botDisplayHard color white
team modify botDisplayTryhard color white
team modify botDisplayTryharder color white

#if a player was just playing in a game, move them back in the player queue
#we do this in case someone joined the server and had to spectate while we were playing. these players should be queued ahead of the players that just finished playing.
tag @a[tag=playerReservation] add playing
tag @a[tag=playerReservation] remove playerReservation
tag @a[tag=vsMidGameJoin] remove vsMidGameJoin
execute as @a[tag=playing,sort=random] run function phan:player_queue/enqueue_player
#nobody is a player until they start a level
tag @a[tag=playing] remove playing
tag @a[tag=doneWithIntro] remove noInventory
xp set @a 0 levels
xp set @a 0 points
clear @a
effect clear @a night_vision
execute unless score #versusPointsShowing value matches 1 run scoreboard objectives setdisplay sidebar
scoreboard players set #versusPointsShowing value 0
tag @a remove trackPlayerTime

#avoid level entry spam
scoreboard players set @a[tag=doneWithIntro] inputCooldown 80

#no crown?
execute unless score #allowCrown value matches 1 run tag @a[tag=vsCrown] remove vsCrown
scoreboard players set #allowCrown value 0

#clear bossbars and HUD
execute as @a run function phan:player/set_title_times
scoreboard players set #showHUD value 0
scoreboard players set @a pShowHUD 0
function phan:custom_hud/clear_bossbars
scoreboard players set #hudMode value 1

#manage item entities
function phan:items/reset_valid_objective

#time and weather
time set 18000
#execute if score #dreamsCompleted value matches ..0 run weather thunder
#execute if score #dreamsCompleted value matches 1..2 run weather rain
#execute if score #dreamsCompleted value matches 3.. run weather clear
weather clear

#set bgm
execute store result score #random value run random value 1..5
execute if score #dreamsCompleted value matches ..4 run scoreboard players set #bgm value 6
execute if score #dreamsCompleted value matches 5.. if score #random value matches ..4 run scoreboard players set #bgm value 7
execute if score #dreamsCompleted value matches 5.. if score #random value matches 5.. run scoreboard players set #bgm value 6
execute as @a run function phan:bgm/adopt_global_music_track
function phan:bgm/set_bgm

#reset spawns for practice area
function phan:game/1/spawning/reset_all
#scoreboard players set #area0SpawnB value 0
#^ WAIT NO-- in this case, we need to cut out the middleman and prepare area0SpawnB immediately so it's ready before the summon_props function runs
function phan:game/1/spawning/reset/reset0b
scoreboard players set #practicePearlsNeeded value 16

#tips? maybe
scoreboard players add @a playerTipTime 200

#we are no longer in free play mode!
execute if score #freePlay value matches 1 run scoreboard players set #lastLevelPlayed value 0
scoreboard players set #freePlay value 0

#jukebox particles don't happen until we pick a song to play from it
scoreboard players set #lobbyJukebox value 0

#spawnpoint for all players
spawnpoint @a 198 -6 118

#unlock time attack mode
execute if score #dreamsCompleted value matches 5.. if score #timeAttackUnlocked value matches 0 run function phan:game/0/unlock_time_attack

#completed dreams are always considered "discovered"
function phan:levels/_dream_discovery

#set skybox
scoreboard players set @a skyboxSet 1

#titles
title @a[tag=doneWithIntro] actionbar [""]
title @a[tag=doneWithIntro] subtitle [""]
title @a[tag=doneWithIntro] title [""]

#reset scores
scoreboard players reset @a restart
scoreboard players reset @a exit
scoreboard players reset @a respawn
scoreboard players reset @a spectatorView
scoreboard players reset @a enderChestMenu
scoreboard players reset @a hurryUp
scoreboard players reset @a joinGame
scoreboard players set @a spectateDelay 0
tag @a[tag=noSpecDataAdopt] remove noSpecDataAdopt
scoreboard players set @a addScore 0
scoreboard players set @a spectatingID -1
scoreboard players set @a shieldTime 0
scoreboard players set @a[scores={strengthTime=3..}] strengthTime 2

#item stuff
scoreboard players reset @a elytraTimer

#summon temporary props
function phan:game/0/summon_props

#should probably send players to lobby? iunno.
function phan:movement/reset_speeds
effect clear @a[tag=doneWithIntro] blindness
effect give @a[tag=doneWithIntro] blindness 2 50 true
gamemode adventure @a[tag=doneWithIntro]
execute unless score #lastLevelPlayed value matches 1..5 in overworld as @a[tag=doneWithIntro] positioned 198 -7 118 rotated -90 0 run function phan:varied_teleport
execute if score #lastLevelPlayed value matches 1 in overworld as @a[tag=doneWithIntro] positioned 206 -1 134 rotated 0 0 run function phan:varied_teleport
execute if score #lastLevelPlayed value matches 2 in overworld as @a[tag=doneWithIntro] positioned 206 -1 102 rotated 180 0 run function phan:varied_teleport
execute if score #lastLevelPlayed value matches 3 in overworld as @a[tag=doneWithIntro] positioned 218 -1 119 rotated 270 0 run function phan:varied_teleport
execute if score #lastLevelPlayed value matches 4 in overworld as @a[tag=doneWithIntro] positioned 203 -6 134 rotated 0 0 run function phan:varied_teleport
execute if score #lastLevelPlayed value matches 5 in overworld as @a[tag=doneWithIntro] positioned 203 -7 101 rotated 180 0 run function phan:varied_teleport

#all players check for Dreams Dreams advancement
execute as @a if entity @s[scores={dream1Completed=1..,dream2Completed=1..,dream3Completed=1..,dream4Completed=1..,dream5Completed=1..}] run advancement grant @s only phan:good_phantom/dreams_dreams

#game state is now 0
scoreboard players set #gameState value 0
scoreboard players set #subGameState value -1