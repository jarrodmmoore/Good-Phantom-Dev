#count time
scoreboard players add @s rawTime 1

#count us for game logic!
scoreboard players add #activeBattlePlayers value 1
execute if score @s enderEyes matches 1.. run scoreboard players add #battleQualifiedForDisplay value 1

#count how long we've been in 1st place
#execute if entity @s[scores={racePosDisplay=1,timeInFirst=..40}] run scoreboard players add @s timeInFirst 2
#scoreboard players remove @s[scores={timeInFirst=1..}] timeInFirst 1
#scoreboard players remove @s[scores={firstDingCooldown=1..}] firstDingCooldown 1

#can't use bite or projectile attacks until game starts
execute if score #gameTime value matches ..220 run scoreboard players set @s inputCooldownC 40
execute if score #gameTime value matches ..220 run scoreboard players set @s inputCooldownD 40

#add queued ever eyes and pretend to put them in the portal
scoreboard players remove @s[scores={eyeAddDelay=1..}] eyeAddDelay 1
execute if score @s eyesToAdd matches 1.. run scoreboard players operation @s enderEyes += @s eyesToAdd
scoreboard players set @s eyesToAdd 0

#reset our racePosCalc... to 0
scoreboard players set @s racePosCalc 0
#note that this is slightly different than how human players do this.
#humans reset their score because you must have "racePosCalc=0" in order to get actively ranked.
#and we only want to set racePosCalc=0 on humans that are NOT finished. this happens afterwards in "battle/_battle_main".
#finished players will just retain the rank they got after finishing.
#...
#meanwhile with bots, we know that this function will only ever get run by the bot entity (NOT the botController) when they are NOT finished.
#so we might as well cut out an @e check and do this here

#count down time since we tried opening a box
scoreboard players remove @s[scores={timeSinceOpenBox=1..}] timeSinceOpenBox 4

#if we have enough eyes to fill the portal, we're considered "in the home stretch"
tag @s[tag=vsHomeStretch] remove vsHomeStretch
execute if score @s[tag=!vsHomeStretch] enderEyes >= #vEyesNeeded value run function phan:bots/battle/enter_home_stretch
scoreboard players set @s[tag=vsHomeStretch] lap -1
execute if score #vsHomeStretch value matches 0 if entity @s[tag=vsHomeStretch] run scoreboard players set #vsHomeStretch value 1
#can lose the homestretch tag!
execute if score @s[tag=vsHomeStretch] enderEyes < #vEyesNeeded value run function phan:bots/battle/exit_home_stretch

#finish if we touch the portal!
execute if entity @s[tag=vsHomeStretch] if block ~ ~-1 ~ end_portal run function phan:bots/battle/player_finish

#reset if we go out of bounds
execute if score #checkLoadHeight value matches -64 if block ~ -63 ~ #phan:area_check run tag @s add botRespawn
execute if score #checkLoadHeight value matches 0 if block ~ 1 ~ #phan:area_check run tag @s add botRespawn



#item pickup
#stardust (has no use in this gamemode. just here in case someone wants to use it on their tracks)
#scoreboard players remove @s[scores={stardustDelay=1..}] stardustDelay 1
#execute store result score #test value run clear @s yellow_wool 0
#execute if score #test value matches 1.. if score @s stardustDelay matches ..0 run function phan:game/1/player/score_stardust

#present?
execute if score @s presentGoal matches -1.. run function phan:game/1/player/handle_present
execute unless score @s presentGoal matches -1.. if score @s showEnemyCount matches 1 run function phan:game/1/player/show_enemy_count

#add to score
execute if score @s addScore matches 1.. run function phan:game/1/player/add_to_score



#take damage?
execute if entity @s[scores={damage=1..}] run function phan:game/1/player/take_damage
