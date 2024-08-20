#count time
scoreboard players add @s rawTime 1
#DEBUG: count time between checkpoints
#scoreboard players add @s[tag=debugCheckpointTimes] debug 1

#don't bully other players!
effect give @s weakness 5 15 true

#count down time since we tried opening a box
scoreboard players remove @s[scores={timeSinceOpenBox=1..}] timeSinceOpenBox 4

#track how many checkpoints we've hit while in the air
scoreboard players set @s[scores={airCheckpoints=1..,airTime=..1}] airCheckpoints 0

#count how long we've been in 1st place
execute if entity @s[scores={racePosDisplay=1,timeInFirst=..40}] run scoreboard players add @s timeInFirst 2
scoreboard players remove @s[scores={timeInFirst=1..}] timeInFirst 1
scoreboard players remove @s[scores={firstDingCooldown=1..}] firstDingCooldown 1

#check if walking or sprinting (need to warn walking players they're moving slower than intended!)
execute if score @s sprintDistance matches 100.. run function phan:game/4/race/player_is_sprinting

#combo (this is only really used for sound effects, here)
scoreboard players remove @s[scores={comboTime=1..}] comboTime 1
execute if score @s comboTime matches ..0 run scoreboard players set @s combo 0

#add queued ever eyes and pretend to put them in the portal
scoreboard players remove @s[scores={eyeAddDelay=1..}] eyeAddDelay 1
execute if score @s eyesToAdd matches 1.. if score @s eyeAddDelay matches ..0 run function phan:game/4/race/player_add_eye
execute if score @s eyesToDeposit matches 1.. if score @s eyeAddDelay matches ..0 run function phan:game/4/race/player_deposit_eye

#met the checkpoint requirement for a lap? loop back around to check=0
execute if score @s check >= #vCheckPoints value run function phan:game/4/race/player_complete_lap

#reset our racePosCalc
scoreboard players reset @s racePosCalc

#mark checkpoints as relevant if we have a chance of hitting them
scoreboard players operation #arg value = @s check
function phan:game/4/race/find_relevant_checkpoints
scoreboard players operation #arg value = @s checkFake
execute unless score @s check = @s checkFake run function phan:game/4/race/find_relevant_checkpoints

#figure out what direction the next checkpoint is in (10Hz, staggered per player)
scoreboard players remove @s compassClock 1
execute if score @s[tag=!navCompass] compassClock matches ..-1 run function phan:game/4/race/checkpoint/point_at_next/_start
execute if score @s[tag=navCompass] compassClock matches ..-1 run function phan:game/4/race/checkpoint/point_at_next/_start_mandatory

#keep track of the min and max lap between all players
execute if score @s lap matches 0.. if score @s lap < #relevantLapMin value run scoreboard players operation #relevantLapMin value = @s lap
execute if score @s lap > #relevantLapMax value run scoreboard players operation #relevantLapMax value = @s lap

#if we have enough eyes to fill the portal, we're considered "in the home stretch"
tag @s[tag=vsHomeStretch] remove vsHomeStretch
execute if score @s enderEyes >= #vEyesNeeded value run tag @s[tag=!vsHomeStretch] add vsHomeStretch
scoreboard players set @s[tag=vsHomeStretch] lap -1
execute if score #vsHomeStretch value matches 0 if entity @s[tag=vsHomeStretch] run scoreboard players set #vsHomeStretch value 1

#finish if we touch the portal!
execute if entity @s[tag=vsHomeStretch] if block ~ ~-1 ~ end_portal run function phan:game/4/race/player_finish

#reset if we go out of bounds
execute if score #checkLoadHeight value matches -64 if block ~ -63 ~ #phan:area_check if entity @s[gamemode=adventure] run function phan:game/4/race/respawn
execute if score #checkLoadHeight value matches 0 if block ~ 1 ~ #phan:area_check if entity @s[gamemode=adventure] run function phan:game/4/race/respawn



#item pickup
#stardust (has no use in this gamemode. just here in case someone wants to use it on their tracks)
scoreboard players remove @s[scores={stardustDelay=1..}] stardustDelay 1
execute store result score #test value run clear @s yellow_wool 0
execute if score #test value matches 1.. if score @s stardustDelay matches ..0 run function phan:game/1/player/score_stardust

#present?
execute if score @s presentGoal matches -1.. run function phan:game/1/player/handle_present
execute unless score @s presentGoal matches -1.. if score @s showEnemyCount matches 1 run function phan:game/1/player/show_enemy_count


#take damage?
execute if entity @s[scores={damage=1..}] run function phan:game/1/player/take_damage

#xp bar (energy display)
function phan:game/1/player/xp_bar/xp_main

#give inventory once game is started
execute unless score @s strengthTime matches 1.. if score #subGameState value matches 0 run function phan:game/4/race/player_inventory
execute if score @s strengthTime matches 1.. if score #subGameState value matches 0 run function phan:game/4/race/player_inventory_powered_up

#use (permanent) item?
execute if entity @s[scores={carrotInput=1..,strengthTime=..0}] if items entity @s weapon.mainhand *[custom_data~{rmb:1b}] run function phan:game/4/race/player_use_item_index
execute if entity @s[scores={carrotInput=1..,strengthTime=1..}] if items entity @s weapon.mainhand *[custom_data~{rmb:1b}] run function phan:game/4/race/player_use_item_index_strength
execute if score @s strengthTime matches ..0 run function phan:game/4/race/player_index_buffer_inputs
execute if score @s strengthTime matches 1.. run function phan:game/4/race/player_index_buffer_inputs_strength


#respawn
execute if score @s respawn matches 1.. run function phan:game/4/race/try_respawn
