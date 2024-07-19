#put coordinates in storage
execute store result storage phan:coords target_x int 1 run scoreboard players get @s botTargetX
execute store result storage phan:coords target_x_dec int 1 run scoreboard players get @s botTargetX10
#(don't do y until we HAVE to)
execute store result storage phan:coords target_z int 1 run scoreboard players get @s botTargetZ
execute store result storage phan:coords target_z_dec int 1 run scoreboard players get @s botTargetZ10

#DEBUG -- show bot target
execute store result storage phan:coords target_y int 1 run scoreboard players get @s botTargetY
execute store result storage phan:coords target_y_dec int 1 run scoreboard players get @s botTargetY10
function phan:utility/visualize_bot_target with storage phan:coords

#count down rotation modifier time
execute if score @s botHookModifierTime matches 1.. run function phan:bots/movement/rotation_modifier

#store rotation (sum of base + modifier)
scoreboard players operation #botHook value = @s botHookBase
scoreboard players operation #botHook value += @s botHookModifier
execute store result storage phan:coords yaw_offset int 1 run scoreboard players get #botHook value

#handle artificial effects
scoreboard players remove @s[scores={botJumpPadTimeLow=1..}] botJumpPadTimeLow 1
scoreboard players remove @s[scores={botJumpPadTimeHigh=1..}] botJumpPadTimeHigh 1
scoreboard players remove @s[scores={botEffectSpeedPad=1..}] botEffectSpeedPad 1
scoreboard players remove @s[scores={botEffectSpeedPad2=1..}] botEffectSpeedPad2 1
scoreboard players remove @s[scores={botEffectSpeedPotion=1..}] botEffectSpeedPotion 1
scoreboard players remove @s[scores={botEffectSlowness=1..}] botEffectSlowness 1

#count down time until we want to jump
scoreboard players remove @s[scores={botJumpTimer=1..}] botJumpTimer 1

#moveState
#0 = on ground
#1 = airborne
#2 = gliding
#3 = in water
scoreboard players set #moveState value 0
execute if score @s onGround matches 0 run scoreboard players set #moveState value 1
execute if score @s fallFlying matches 1 run scoreboard players set #moveState value 2
execute if score @s inWater matches 1 run scoreboard players set #moveState value 3

#movement related calculations
function phan:bots/movement/movement_calculations

#DEBUG
#scoreboard players set @s moveVelocity 250
#scoreboard players set @a moveVelocity 250

#execute movements
execute if score #moveState value matches 0 run function phan:bots/movement/0_on_ground/_on_ground
execute if score #moveState value matches 1 run function phan:bots/movement/1_air/_air
execute if score #moveState value matches 2 run function phan:bots/movement/2_gliding/_gliding
execute if score #moveState value matches 3 run function phan:bots/movement/3_in_water/_in_water

#dance around things that might get us stuck
execute unless score @s botHookModifierTime matches 1.. at @s positioned ~ ~1.2 ~ rotated ~ 0 run function phan:bots/movement/blocked_path_check