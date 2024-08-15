#put coordinates in storage
execute store result storage phan:coords target_x int 1 run scoreboard players get @s botTargetX
execute store result storage phan:coords target_x_dec int 1 run scoreboard players get @s botTargetX10
#(don't do y until we HAVE to)
execute store result storage phan:coords target_z int 1 run scoreboard players get @s botTargetZ
execute store result storage phan:coords target_z_dec int 1 run scoreboard players get @s botTargetZ10

#DEBUG -- show bot target
#execute store result storage phan:coords target_y int 1 run scoreboard players get @s botTargetY
#execute store result storage phan:coords target_y_dec int 1 run scoreboard players get @s botTargetY10
#function phan:utility/visualize_bot_target with storage phan:coords

#count down rotation modifier time
execute if score @s botHookModifierTime matches 1.. run function phan:bots/movement/rotation_modifier

#count down pitch modifier time
execute if score @s botVaultUpwardTime matches 1.. unless entity @s[scores={botMoveState=0,botJumpTimer=..-1}] run scoreboard players remove @s botVaultUpwardTime 1

#store rotation (sum of base + modifier)
scoreboard players operation #botHook value = @s botHookBase
scoreboard players operation #botHook value += @s botHookModifier
execute store result storage phan:coords yaw_offset int 1 run scoreboard players get #botHook value

#handle artificial effect timers
scoreboard players remove @s[scores={botJumpPadTimeLow=1..}] botJumpPadTimeLow 1
scoreboard players remove @s[scores={botJumpPadTimeHigh=1..}] botJumpPadTimeHigh 1
scoreboard players remove @s[scores={botEffectSpeedPad=1..}] botEffectSpeedPad 1
scoreboard players remove @s[scores={botEffectSpeedPad2=1..}] botEffectSpeedPad2 1
scoreboard players remove @s[scores={botEffectSpeedPotion=1..}] botEffectSpeedPotion 1
scoreboard players remove @s[scores={botEffectSlowness=1..}] botEffectSlowness 1
scoreboard players remove @s[scores={botEffectBoost=1..}] botEffectBoost 1

#hard / tryhard bots might booby trap a jump pad!
execute if entity @s[scores={botSkill=4..,inputCooldown=..0,botHasItem13=1..,botJumpPadTimeLow=1..}] unless score @s racePosDisplay < #botRivalPosition value run function phan:bots/items/13_mine/use
execute if entity @s[scores={botSkill=4..,inputCooldown=..0,botHasItem13=1..,botJumpPadTimeHigh=1..}] unless score @s racePosDisplay < #botRivalPosition value run function phan:bots/items/13_mine/use

#count down time until we want to jump
scoreboard players remove @s[scores={botJumpTimer=1..}] botJumpTimer 1

#if we're transitioning from airborne or gliding to ground, remove botImprovFlight tag
execute if entity @s[tag=botImprovFlight,scores={botMoveState=1..2,onGround=1..}] run tag @s remove botImprovFlight

#need to exit flight if we're not riding a vehicle
#execute if score @s botHullFallFlying matches 1.. unless function phan:bots/movement/check_for_vehicle run function phan:bots/movement/cancel_flight

#botMoveState
#0 = on ground
#1 = airborne
#2 = gliding
#3 = in water
scoreboard players set @s botMoveState 0
execute if score @s onGround matches 0 run scoreboard players set @s botMoveState 1
execute if score @s inWater matches 1 run scoreboard players set @s botMoveState 3
execute if score @s fallFlying matches 1 run scoreboard players set @s botMoveState 2

#movement related calculations
function phan:bots/movement/movement_calculations

#dismount and destroy vehicle armor stand when we're not gliding
execute unless score @s botMoveState matches 1..2 if function phan:bots/movement/check_for_vehicle run function phan:bots/movement/cancel_flight

#=====
#execute movements based on botMoveState
execute if score @s botMoveState matches 0 run function phan:bots/movement/0_on_ground/_on_ground
execute if score @s botMoveState matches 1 run function phan:bots/movement/1_air/_air
execute if score @s botMoveState matches 2 run function phan:bots/movement/2_gliding/_gliding
execute if score @s botMoveState matches 3 run function phan:bots/movement/3_in_water/_in_water
#=====

#count down pause time
scoreboard players remove @s[scores={botPauseTime=1..}] botPauseTime 1

#dance around things that might get us stuck
execute unless score @s botMoveState matches 1 unless score @s botHookModifierTime matches 1.. unless score @s botJumpTimer matches -2..-1 at @s positioned ~ ~1.2 ~ rotated ~ 0 run function phan:bots/movement/blocked_path_check

#stop chasing temporary target if we reached it
execute unless score @s botTargetID matches 0 unless entity @s[tag=botIsTargetingMine] run function phan:bots/movement/check_if_bot_reached_temporary_target