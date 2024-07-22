#player runs this function upon joining the world
#great opportunity to get all values n stuff set up


#go to place
tp @s 55 -13 155 180 0
spawnpoint @s 0 47 0

#sync up with global join score
scoreboard players operation @s join = #join_global value

#count how many times we've logged in
scoreboard players add @s joinCount 1

#check if we're allowed to keep our admin tag
function phan:join/get_reset_wave

#if there are bots currently active, make sure none of them have our username
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] run function phan:game/2/bots/bot_check_duplicate_name

#must watch the intro thingy
tag @s remove doneWithIntro
scoreboard players set @s introProgress 0

#advancement stuff
advancement grant @s only phan:good_phantom/root
advancement grant @s only phan:score_attack/root
execute if score #timeAttackUnlocked value matches 1 run advancement grant @s only phan:time_attack/root
advancement grant @s only phan:portal_race/root

#various housekeeping things...
stopsound @s
tag @s remove practiceCourse
tag @s remove playing
tag @s add noInventory
team join player @s
xp set @s 0 levels
xp set @s 0 points
effect clear @s
gamemode adventure @s
clear @s
function phan:set_title_times
title @s actionbar [""]
title @s subtitle [""]
title @s title [""]
effect give @s invisibility 20 0 true
tag @s remove trackPlayerTime
scoreboard players set @s shootAware 0

#initialize data
scoreboard players add @s anyDreamCompleted 0
scoreboard players add @s dream1Completed 0
scoreboard players add @s dream2Completed 0
scoreboard players add @s dream3Completed 0
scoreboard players add @s dream4Completed 0
scoreboard players add @s dream5Completed 0

#reset game values
scoreboard players set @s inputCooldown 0
scoreboard players set @s inputCooldownA 0
scoreboard players set @s inputCooldownB 0
scoreboard players set @s inputCooldownC 0
scoreboard players set @s inputCooldownD 0
scoreboard players set @s hudNode -1
scoreboard players set @s scoreDigit1 0
scoreboard players set @s scoreDigit2 0
scoreboard players set @s scoreDigit3 0
scoreboard players set @s scoreDigit4 0
scoreboard players set @s scoreDigit5 0
scoreboard players set @s scoreDigit6 0
scoreboard players set @s scoreDigit7 0
scoreboard players set @s scoreDigit8 0
scoreboard players set @s scoreCurrent 0
scoreboard players set @s prevTickScore 0
scoreboard players set @s scoreChanged 0
scoreboard players set @s scoreArea1 0
scoreboard players set @s scoreArea2 0
scoreboard players set @s scoreArea3 0
scoreboard players set @s scoreTotal 0
scoreboard players set @s enderEyes 0
scoreboard players set @s moveVelocity 0
scoreboard players set @s stoppedTime 0
scoreboard players set @s landCooldown 0
scoreboard players set @s stardustDelay 0
scoreboard players reset @s restart
scoreboard players reset @s exit
scoreboard players reset @s editor
scoreboard players reset @s hurryUp
scoreboard players set @s teamRequest 0
scoreboard players reset @s presentTime
scoreboard players reset @s presentGoal
scoreboard players reset @s elytraTimer
tag @s remove playerReservation
tag @s remove noSpecDataAdopt
scoreboard players reset @s highestCombo
scoreboard players set @s swiftnessTime 0
scoreboard players set @s skybox -1
scoreboard players set @s skyboxSet 0
scoreboard players set @s musicTrack 0
scoreboard players set @s musicTime 20
scoreboard players set @s playerTipTime 0
scoreboard players set @s spectatingID -1
scoreboard players set @s spectatingObject 0
scoreboard players add @s spectateMode 0
scoreboard players set @s specDoneLoading 600
scoreboard players set @s strengthTime 0
scoreboard players set @s bodyHitbox 0
scoreboard players set @s boostBuffer 0
scoreboard players set @s shieldTime 0
scoreboard players reset @s enderChestMenu
scoreboard players set @s showEnemyCount 0
scoreboard players set @s fails 0
execute unless score @s dropKeyBind matches 0.. run scoreboard players set @s dropKeyBind 0
execute unless score @s swapKeyBind matches 0.. run scoreboard players set @s swapKeyBind 1
scoreboard players set @s startGrid -1
scoreboard players set @s finishPos -1
scoreboard players set @s spectateDelay 0
scoreboard players set @s vsAddPoints 0
tag @s remove vsCrown
scoreboard players set @s speedDecayDelay 0
tag @s remove incrementCheckReal
tag @s remove incrementCheckOptional
scoreboard players set @s playerGetEyes 0
tag @s remove climbMoonlitTower
scoreboard players set @s KOs 0
scoreboard players set @s deathsSinceKO 0
scoreboard players set @s pPenaltyTime 0
scoreboard players set @s pPenaltyPoints 0

#set spawnpoint
spawnpoint @s 198 -6 118

#save player's versus mode points as long as it's still the same session we logged out on
scoreboard players add @s versusSession 0
execute unless score @s versusSession = #versusSession value run scoreboard players reset @s versusPoints
scoreboard players operation @s versusSession = #versusSession value

#get player ID if we don't have one yet
execute unless entity @s[scores={playerID=1..}] run function phan:join/player_get_id

#are we alone? restart things
tag @s add jself
execute unless entity @a[tag=!jself] run function phan:join/solo_join
execute if entity @a[tag=!jself] run function phan:join/subsequent_join
tag @s remove jself

#announce any debug tags this player has
execute if entity @s[tag=debugMultiplayer] run say @s has tag "debugMultiplayer"
execute if entity @s[tag=debugScores] run say @s has tag "debugScores"
execute if entity @s[tag=draw] run say @s has tag "draw" (you're gonna cause trouble! stop it!)
execute if entity @s[tag=simplify_clouds] run say removed simplify_clouds tag from @s
tag @s[tag=simplify_clouds] remove simplify_clouds

#attributes and stuff!
function phan:movement/reset_speed_self

#add into player queue
function phan:player_queue/enqueue_player