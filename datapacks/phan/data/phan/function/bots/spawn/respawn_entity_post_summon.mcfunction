#put us in our place
tp @s ~ ~ ~ ~ ~

#sound and visual effects if "GO!" has already happened
execute if score #botsEnabled value matches 2.. at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute if score #botsEnabled value matches 2.. at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2

#identifiers
scoreboard players operation @s playerID = #setID value
scoreboard players operation @s botInstance = #editArg1 value
scoreboard players operation @s botID = #editArg2 value
#(yes, bots use 3 different identifier scores. what of it?)

#go to the proper start grid location
scoreboard players operation @s startGrid = #editPitch value

#apply skill level
scoreboard players operation @s botSkill = #editArg3 value
#put the proper head on our head depending on skill
execute unless score @s botSkill matches 2..6 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111115]
execute if score @s botSkill matches 2 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111116]
execute if score @s botSkill matches 3 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111117]
execute if score @s botSkill matches 4 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111118]
execute if score @s botSkill matches 5 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111119]
execute if score @s botSkill matches 6 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111120]

#give us a random spread bias
execute store result score @s botBiasX run random value 0..10
execute store result score @s botBiasZ run random value 0..10

#get the right name color (thankfully this doesn't seem to muck up the difficulty tag)
team join player @s

#bot should only stay alive as long as we're running code on it
scoreboard players set @s lifespan 10

#set to behavior state 0 by default (which means do nothing until the game starts)
scoreboard players set @s botBehavior 0

#scores
scoreboard players set @s moveVelocity 0
scoreboard players set @s onGround 0
scoreboard players set @s airTime 10
scoreboard players set @s fallFlying 0
scoreboard players set @s botJumpPadTimeLow 0
scoreboard players set @s botJumpPadTimeHigh 0
scoreboard players set @s coord_x2 0
scoreboard players set @s coord_y2 0
scoreboard players set @s coord_z2 0
scoreboard players set @s energy 0
scoreboard players set @s speedBoost 0
scoreboard players set @s speedBoost2 0
scoreboard players set @s speedDecayDelay 0
scoreboard players set @s hitstun 0
scoreboard players set @s landCooldown 0
scoreboard players set @s botHookBase 0
scoreboard players set @s botHookModifier 0
scoreboard players set @s botHookModifierTime 0
scoreboard players operation @s botAllowedReroutes = #BOT_ALLOWED_REROUTES value
scoreboard players set @s inputCooldown 0
scoreboard players set @s inputCooldownB 0
scoreboard players set @s inputCooldownC 0
scoreboard players set @s inputCooldownD 0
scoreboard players set @s hurtfulTime 0
execute store result score @s botReactionTimer run random value 1..20
scoreboard players set @s AIBC_selected 0
scoreboard players set @s AIBC_selected2 0
execute store result score @s botRoamLookBias run random value 0..1
scoreboard players set @s botRoamLookBias2 1
execute store result score @s botWanderYaw run data get entity @s Rotation[0] 1
scoreboard players set @s botPauseTime 0
scoreboard players set @s botItemThinkTime 20
scoreboard players set @s botBoostThinkTime 10
scoreboard players set @s botMoveState 1
scoreboard players set @s botTargetID 0
scoreboard players set @s botHoldingItem 0
scoreboard players set @s botHoldingItemPrev 0
scoreboard players set @s botTempRotYaw 0
scoreboard players set @s botTempRotPitch 0
scoreboard players set @s botTeleportTimer -1
scoreboard players set @s attackTime 0
scoreboard players set @s botRubberbanding 0
scoreboard players set @s botPreparedToDodgeTrap 0
scoreboard players set @s botTargetPriority 0
scoreboard players set @s botBattleThinkTime 30
scoreboard players set @s botProjectileThinkTime 40
scoreboard players set @s botBiteThinkTime 40
scoreboard players set @s botChaseTime 0

#get spawn invulnerability in battle mode
scoreboard players set @s spawnInvulnerability 0
execute if score #vGameType value matches 2 run scoreboard players set @s spawnInvulnerability 40

#should we be a rival?
execute if score #setBotAsRival value matches 1 run tag @s add botRival
scoreboard players set #setBotAsRival value 0

#we need to target the nearest AI waypoint as soon as we start caring about that
tag @s add botTargetNearestWP

#done setup
tag @s remove setMe