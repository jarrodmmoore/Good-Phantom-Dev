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

#bots don't exist anymore
scoreboard players set #botsEnabled value 0

#if a player was just playing in a game, move them back in the player queue
#we do this in case someone joined the server and had to spectate while we were playing. these players should be queued ahead of the players that just finished playing. we should let them have a turn!
tag @a[tag=playerReservation] add playing
tag @a[tag=playerReservation] remove playerReservation
tag @a[tag=vsMidGameJoin] remove vsMidGameJoin
execute as @a[tag=playing,sort=random] run function phan:player_queue/enqueue_player
#nobody is a player until they start a level
tag @a[tag=playing] remove playing
tag @a[tag=doneWithIntro] remove noInventory
xp set @a 100 levels
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

#clear stuff from scoreboard
function phan:editor/clear_scoreboard_cache_start

#time and weather
time set 18000
#execute if score #dreamsCompleted value matches ..0 run weather thunder
#execute if score #dreamsCompleted value matches 1..2 run weather rain
#execute if score #dreamsCompleted value matches 3.. run weather clear
weather clear
#thunder/rain was removed after the yeggs map jam release because it's annoying, causes lag, and ruins the opening cutscene.
#we instead decided to convey progress by having the lobby brighten up as you clear more dreams.
#unfortunately this means the the [Story] section of the intro book is a liar. it is NOT, in fact, a stormy night in the overworld.

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
scoreboard players set #freePlay value 0
#not in a grand prix anymore, either
execute if score #grandPrixActive value matches -1 run scoreboard players set #lastLevelPlayed value -1
execute if score #grandPrixActive value matches 1.. run scoreboard players set #lastLevelPlayed value -1
execute if score #grandPrixActive value matches 1.. run schedule function phan:game/2/bots/delete_all_bots 1t
scoreboard players set #grandPrixActive value 0

#jukebox particles don't happen until we pick a song to play from it
scoreboard players set #lobbyJukebox value 0

#spawnpoint for all players
spawnpoint @a 198 -6 118

#=====
#UNLOCKS
#unlock time attack mode after Shattered City is completed
execute if score #dream3Completed value matches 1.. if score #timeAttackUnlocked value matches 0 run function phan:game/0/unlock_time_attack
#unlock diamond cup if the 3 base cups were completed
execute if score #cup1Completed value matches 1.. if score #cup2Completed value matches 1.. if score #cup3Completed value matches 1.. if score #unlockedCupDiamond value matches 0 run function phan:game/0/unlock_diamond_cup
#unlock random cup if the 4 top row cups were all completed
execute if score #cup1Completed value matches 1.. if score #cup2Completed value matches 1.. if score #cup3Completed value matches 1.. if score #cup4Completed value matches 1.. if score #unlockedCupRandom value matches 0 run function phan:game/0/unlock_random_cup
#unlock nightmare difficulty if we win any cup on Expert or higher
execute if score #grandPrix1Trophy value matches 34.. if score #unlockedNightmare value matches 0 run function phan:game/0/unlock_nightmare_difficulty
execute if score #grandPrix2Trophy value matches 34.. if score #unlockedNightmare value matches 0 run function phan:game/0/unlock_nightmare_difficulty
execute if score #grandPrix3Trophy value matches 34.. if score #unlockedNightmare value matches 0 run function phan:game/0/unlock_nightmare_difficulty
execute if score #grandPrix4Trophy value matches 34.. if score #unlockedNightmare value matches 0 run function phan:game/0/unlock_nightmare_difficulty
#unlock ultra-nightmare difficulty if we win every cup on nightmare
execute if score #grandPrix1Trophy value matches 35.. if score #grandPrix2Trophy value matches 35.. if score #grandPrix3Trophy value matches 35.. if score #grandPrix4Trophy value matches 35.. if score #unlockedUltranightmare value matches 0 run function phan:game/0/unlock_ultranightmare_difficulty
#special unlock condition for Deep Dive 4: unlocked when the dream is completed through normal means
execute if score #dream5Completed value matches 1 run scoreboard players set #d5a4Unlocked value 1
execute if score #cup4Completed value matches 1.. run scoreboard players set #d5a4Unlocked value 1
#rainbow keys are given after completing the Diamond cup or completing Shattered City
execute if score #cup4Completed value matches 1.. run scoreboard players set #unlockedBonusRooms value 1
execute if score #dream3Completed value matches 1.. run scoreboard players set #unlockedBonusRooms value 1

#completed dreams are always considered "discovered"
function phan:levels/_dream_discovery
#=====

#set skybox and conditions
scoreboard players set @a skyboxSet 1
scoreboard players set #nightVision value 0
tag @a remove getNightVisionInSA

#titles
title @a[tag=doneWithIntro] actionbar [""]
title @a[tag=doneWithIntro] subtitle [""]
title @a[tag=doneWithIntro] title [""]

#reset scores
scoreboard players reset @a restart
scoreboard players reset @a exit
scoreboard players reset @a respawn
scoreboard players reset @a enderChestMenu
scoreboard players reset @a hurryUp
scoreboard players reset @a joinGame
schedule function phan:game/0/delayed_trigger_removal 2t
scoreboard players set @a spectateDelay 0
tag @a[tag=noSpecDataAdopt] remove noSpecDataAdopt
scoreboard players set @a addScore 0
scoreboard players set @a spectatingID -1
scoreboard players set @a shieldTime 0
scoreboard players set @a[scores={strengthTime=3..}] strengthTime 2
scoreboard players set @a energy 0

#all players are very close to being considered idle after lobby boots up
scoreboard players set @a idleTime 3400

#item stuff
scoreboard players reset @a elytraTimer

#set menu page for the tv in lobby
scoreboard players set #tvMenuPage value 0
scoreboard players add #tvRememberPage value 0
execute unless score #tvRememberPage value matches 0 run scoreboard players operation #tvMenuPage value = #tvRememberPage value

#summon temporary props
function phan:game/0/summon_props

#get players ready
function phan:movement/reset_speeds
effect clear @a[tag=doneWithIntro] blindness
effect give @a[tag=doneWithIntro] blindness 2 50 true
scoreboard players set #forceSpecAdmin value 0
execute as @a[tag=doneWithIntro] run function phan:game/1/keep_player_out_of_portal
gamemode adventure @a[tag=doneWithIntro]

#send players to the lobby
#the location we send to is based on the last level that was played
scoreboard players operation #math value = #lastLevelPlayed value
tag @a[tag=doneWithIntro] add sendMe
function phan:levels/_warp_to_bedside_index

#all players check for Dreams Dreams advancement
execute as @a[scores={dream1Completed=1..}] run advancement grant @s only phan:good_phantom/dreams_dreams dd_dream1
execute as @a[scores={dream2Completed=1..}] run advancement grant @s only phan:good_phantom/dreams_dreams dd_dream2
execute as @a[scores={dream3Completed=1..}] run advancement grant @s only phan:good_phantom/dreams_dreams dd_dream3
execute as @a[scores={dream4Completed=1..}] run advancement grant @s only phan:good_phantom/dreams_dreams dd_dream4
execute as @a[scores={dream5Completed=1..}] run advancement grant @s only phan:good_phantom/dreams_dreams dd_dream5

#game state is now 0
scoreboard players set #gameState value 0
scoreboard players set #subGameState value -1