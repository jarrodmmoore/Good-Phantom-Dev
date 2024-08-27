#count time
scoreboard players add @s rawTime 1

#record if we're near 1st and have a lot of energy
execute if score #5Hz value matches 1 if score @s timeBehind1st matches ..50 if score @s energy > #highestMagicUpFront value run scoreboard players operation #highestMagicUpFront value = @s energy

#count down time since we tried opening a box
scoreboard players remove @s[scores={timeSinceOpenBox=1..}] timeSinceOpenBox 4

#count how long we've been in 1st place
#execute if entity @s[scores={racePosDisplay=1,timeInFirst=..40}] run scoreboard players add @s timeInFirst 2
#scoreboard players remove @s[scores={timeInFirst=1..}] timeInFirst 1
#scoreboard players remove @s[scores={firstDingCooldown=1..}] firstDingCooldown 1

#add queued ever eyes and pretend to put them in the portal
scoreboard players remove @s[scores={eyeAddDelay=1..}] eyeAddDelay 1
execute if score @s eyesToAdd matches 1.. run scoreboard players operation @s enderEyes += @s eyesToAdd
scoreboard players set @s eyesToAdd 0

#met the checkpoint requirement for a lap? loop back around to check=0
execute if score @s check >= #vCheckPoints value run function phan:game/4/race/player_complete_lap

#reset our racePosCalc
scoreboard players reset @s racePosCalc

#mark checkpoints as relevant if we have a chance of hitting them
scoreboard players operation #arg value = @s check
function phan:game/4/race/find_relevant_checkpoints
scoreboard players operation #arg value = @s checkFake
execute unless score @s check = @s checkFake run function phan:game/4/race/find_relevant_checkpoints

#keep track of the min and max lap between all players
execute if score @s lap matches 0.. if score @s lap < #relevantLapMin value run scoreboard players operation #relevantLapMin value = @s lap
execute if score @s lap > #relevantLapMax value run scoreboard players operation #relevantLapMax value = @s lap

#if we have enough eyes to fill the portal, we're considered "in the home stretch"
tag @s[tag=vsHomeStretch] remove vsHomeStretch
execute if score @s enderEyes >= #vEyesNeeded value run tag @s[tag=!vsHomeStretch] add vsHomeStretch
scoreboard players set @s[tag=vsHomeStretch] lap -1
execute if score #vsHomeStretch value matches 0 if entity @s[tag=vsHomeStretch] run scoreboard players set #vsHomeStretch value 1

#finish if we touch the portal!
execute if entity @s[tag=vsHomeStretch] if block ~ ~-1 ~ end_portal run function phan:bots/race/player_finish

#reset if we go out of bounds
execute if score #checkLoadHeight value matches -64 if block ~ -63 ~ #phan:area_check run function phan:bots/race/respawn
execute if score #checkLoadHeight value matches 0 if block ~ 1 ~ #phan:area_check run function phan:bots/race/respawn



#item pickup
#stardust (has no use in this gamemode. just here in case someone wants to use it on their tracks)
#scoreboard players remove @s[scores={stardustDelay=1..}] stardustDelay 1
#execute store result score #test value run clear @s yellow_wool 0
#execute if score #test value matches 1.. if score @s stardustDelay matches ..0 run function phan:game/1/player/score_stardust

#present?
#execute if score @s presentGoal matches -1.. run function phan:game/1/player/handle_present
#execute unless score @s presentGoal matches -1.. if score @s showEnemyCount matches 1 run function phan:game/1/player/show_enemy_count


#take damage?
execute if entity @s[scores={damage=1..}] run function phan:game/1/player/take_damage
