#race mode

#stuff to remember:
#"lap" -- variable invisible to the player that helps the system determine who's in first as they loop around the track
#"check" -- what checkpoint the player is on
#   > note: any checkpoints marked as "optional" will automatically be granted to players regardless if they're in the checkpoint's detection zone or not
#"checkFake" -- what checkpoint the player is using for position calculation

#=====
#CHECKPOINTS, POS CALC, PORTAL

#clear variables
scoreboard players set #check1relevant value 0
scoreboard players set #check2relevant value 0
scoreboard players set #check3relevant value 0
scoreboard players set #check4relevant value 0
scoreboard players set #check5relevant value 0
scoreboard players set #check6relevant value 0
scoreboard players set #check7relevant value 0
scoreboard players set #check8relevant value 0
scoreboard players set #check9relevant value 0
scoreboard players set #check10relevant value 0
scoreboard players set #check11relevant value 0
scoreboard players set #check12relevant value 0
scoreboard players set #check13relevant value 0
scoreboard players set #check14relevant value 0
scoreboard players set #check15relevant value 0
scoreboard players set #check16relevant value 0
scoreboard players set #check17relevant value 0
scoreboard players set #check18relevant value 0
scoreboard players set #check19relevant value 0
scoreboard players set #check20relevant value 0
scoreboard players set #check21relevant value 0
scoreboard players set #check22relevant value 0
scoreboard players set #check23relevant value 0
scoreboard players set #check24relevant value 0
scoreboard players set #check25relevant value 0
scoreboard players set #relevantLapMax value 0
scoreboard players set #relevantLapMin value 2147483647

#all players tell the game what their status is so we can optimize checkpoint stuff accordingly
#we also run a lot of player-specific logic here
execute as @a[tag=playing] at @s run function phan:game/4/race/race_player_tick
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] at @s run function phan:bots/race/race_player_tick

#make sure lap range includes any missing bots
execute if score #checkMissingPlayerLaps value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/get_missing_bot_laps

#start assigning positions at the set minimum value
#(this increments if somebody finishes and is no longer looking at checkpoints)
scoreboard players operation #positionAssign value = #positionAssignMin value

#players with enough eyes to enter the portal are in the home stretch. give them position solely based on distance to the portal
execute if score #checkDoMissingPlayersHS value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/homestretch
execute if score #vsHomeStretch value matches 1 as @e[type=marker,tag=portalCore,scores={versusSpawn=1},limit=1] at @s run function phan:game/4/race/portal_core_home_stretch

#all checkpoints do their thing
scoreboard players operation #lapRecursion value = #relevantLapMax value
scoreboard players operation #test value = #relevantLapMax value
scoreboard players operation #test value -= #relevantLapMin value
#this recursive stuff might block execution if some wise guy manually sets their lap count to something stupidly high
#so if we detect an abnormally large difference between min and max lap count, we'll just... force everyone back onto lap 1.
execute if score #test value matches 500.. run function phan:game/4/race/checkpoint/catch_abnormal_lap_gap
#iterate through checkpoints to assign positions. also check trigger areas
function phan:game/4/race/checkpoint/lap_loop
execute if score #clearBotMissingFlags value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/clear_missing_flags

#handle reset zones
execute as @e[type=marker,tag=resetZone,scores={versusSpawn=1}] at @s run function phan:game/4/race/checkpoint/operate/reset_zone

#handle players that got a checkpoint increment
#(this happens in the same tick the tag was given so we won't have to worry about cleaning it up, right? hope so)
execute as @a[tag=incrementCheckReal] run function phan:game/4/race/checkpoint/increment_player_real
execute as @a[tag=incrementCheckOptional] run function phan:game/4/race/checkpoint/increment_player_optional
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=incrementCheckReal] run function phan:bots/race/checkpoint/increment_player_real
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=incrementCheckOptional] run function phan:bots/race/checkpoint/increment_player_optional

#player position
function phan:game/4/race/checkpoint/publish_positions

#draw checkpoint lines
execute if score #subGameState value matches 0 if score #2sec value matches 0 as @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg2=0,visualLength=1..}] at @s run function phan:game/4/checkpoint_visual/start_index

#draw ever eyes in portal slots (using block marker particle so it looks different per each client)
execute if score #2sec value matches 6 as @e[type=marker,tag=portalSlot,scores={versusSpawn=1}] at @s run function phan:game/4/race/portal/draw_eye_index

#draw particles above portal to attract players there when they're in the home-stretch
execute if score #vsHomeStretch value matches 1 as @e[type=marker,tag=portalCore,scores={versusSpawn=1}] at @s run function phan:game/4/portal_particle_home_stretch

#=====
#ITEMS

#item box nodes count down and spawn box
execute if score #5Hz value matches 2 as @e[type=marker,tag=itemBoxSpawner,scores={versusSpawn=1}] at @s run function phan:game/4/item_box_node

#might mandate an anvil of justice if 1st place has too big of a lead
execute if score #2sec value matches 5 if score #cooldownAnvil value matches ..200 run function phan:items/random/consider_mandating_anvil
execute if score #2sec value matches 25 if score #cooldownAnvil value matches ..500 run function phan:items/random/consider_mandating_anvil

#=====
#GAME FUNCTION

#allow mid-game joins if player have the trigger
execute if score #subGameState value matches ..0 as @a[scores={joinGame=1..}] run function phan:game/4/race/join_trigger

#count down time remaining
execute if score #subGameState value matches 0 run function phan:game/4/race/time_limit

#time out when no players left
execute if entity @a[tag=playing] run scoreboard players set #vTimeOut value 0
execute if score #vTimeOut value matches 10.. if score #botsOnly value matches 1 if entity @e[type=block_display,tag=botController,tag=!finished,tag=!botDisabled] run scoreboard players set #vTimeOut value 0
scoreboard players add #vTimeOut value 1
execute if score #subGameState value matches 0 if score #vTimeOut value matches 60.. run scoreboard players set #subGameState value 1

#show end results when subGameState=1
execute if score #gameState value matches 4 if score #subGameState value matches 1 run function phan:game/4/race/results_sequence

#=====