# get current pos (x, y, z)
execute store result score @s coord_x run data get entity @s Pos[0] 10000
execute store result score @s coord_y run data get entity @s Pos[1] 10000
execute store result score @s coord_z run data get entity @s Pos[2] 10000
execute store result score @s rot_yaw run data get entity @s Rotation[0] 1

# stores 3 vars for change in (coord1 - coord2)
scoreboard players operation @s trans_x = @s coord_x
scoreboard players operation @s trans_x -= @s coord_x2
scoreboard players operation @s trans_y = @s coord_y
scoreboard players operation @s trans_y -= @s coord_y2
scoreboard players operation @s trans_z = @s coord_z
scoreboard players operation @s trans_z -= @s coord_z2
##how fast are we looking?
#scoreboard players operation @s trans_yaw = @s rot_yaw
#scoreboard players operation @s trans_yaw -= @s rot_yaw2
##slow down proportionally to how fast we move our view
#execute if score @s trans_yaw matches ..-1 run scoreboard players operation @s trans_yaw *= #-1 value
#execute if score @s trans_yaw matches 181.. run scoreboard players remove @s trans_yaw 360
#execute if score @s trans_yaw matches ..-1 run scoreboard players operation @s trans_yaw *= #-1 value
#scoreboard players operation @s trans_yaw /= #CONST_YAW_LOSS value



# remember this pos for next time
scoreboard players operation @s coord_x2 = @s coord_x
scoreboard players operation @s coord_y2 = @s coord_y
scoreboard players operation @s coord_z2 = @s coord_z
scoreboard players operation @s rot_yaw2 = @s rot_yaw
scoreboard players operation @s rot_pitch2 = @s rot_pitch

# checks for coord changes for setting moving state
scoreboard players set @s moving 1
execute if score @s trans_x matches -50..50 if score @s trans_z matches -50..50 run scoreboard players set @s moving 0

#NOT considered moving while sneaking or in hitstun
execute if score @s hitstun matches 1.. run scoreboard players set @s moving 0
execute if entity @s[tag=sneaking] run scoreboard players set @s moving 0
scoreboard players remove @s[scores={hitstun=1..}] hitstun 1

#don't lose speed while airborne
execute if entity @s[scores={onGround=0,inWater=0}] run function phan:movement/airborne

#elytra: landing speed of 8000 is full speed
execute if entity @s[scores={landCooldown=..0,airTime=20..,onGround=1..}] run function phan:movement/get_velocity
execute if entity @s[scores={landCooldown=..0,airTime=20..,inWater=1..}] run function phan:movement/get_velocity
scoreboard players remove @s[scores={landCooldown=1..}] landCooldown 1

#not airborne while in water
execute if score @s inWater matches 1.. run scoreboard players set @s airTime 0

#get rough velocity
scoreboard players operation @s trans_x *= @s trans_x
scoreboard players operation @s trans_z *= @s trans_z
scoreboard players operation in math_sqrt = @s trans_x
scoreboard players operation in math_sqrt += @s trans_z
execute if score in math_sqrt matches 0 run scoreboard players add in math_sqrt 1
function math:sqrt/exe
scoreboard players operation @s roughVelocity = out math_sqrt

#discard random 0s
execute unless score @s roughVelocity matches -10..10 run scoreboard players operation @s rememberRoughV = @s roughVelocity

#how long we been stopped for?
execute if score @s moving matches 0 run scoreboard players add @s[scores={stoppedTime=..9999999}] stoppedTime 1
execute if score @s moving matches 1 run scoreboard players set @s stoppedTime 0
execute if score @s moving matches 0..1 unless score @s botMoveState matches 2 run scoreboard players set @s airTime 0

#build or lose velocity depending on what we're doing
execute if score @s stoppedTime matches 0..2 if score @s moveVelocity matches ..280 run scoreboard players add @s moveVelocity 3
execute if score @s stoppedTime matches 3.. if score @s moveVelocity matches 240.. run scoreboard players set @s moveVelocity 240
execute if score @s stoppedTime matches 3.. if score @s moveVelocity matches 0.. run scoreboard players remove @s moveVelocity 20
#scoreboard players operation @s moveVelocity -= @s trans_yaw
execute if score @s moveVelocity matches ..-1 run scoreboard players set @s moveVelocity 0

#cap player speed at 550
scoreboard players set @s[scores={moveVelocity=551..}] moveVelocity 550

#assist mode, moveVelocity is constant!
execute if score #assist_movement value matches 1.. run scoreboard players set @s moveVelocity 200


#we're adding speed decay when you're above natural max speed and not boosting
#execute if score #gameState value matches 4 if score @s speedDecayDelay matches 0 run function phan:movement/speed_decay
execute if score @s speedDecayDelay matches 0 run function phan:movement/speed_decay
scoreboard players add @s[scores={speedDecayDelay=..-1}] speedDecayDelay 1
scoreboard players remove @s[scores={speedDecayDelay=1..}] speedDecayDelay 1
#reason: i think we need to lower the skill ceiling a bit to make the gap between novice and expert players less extreme

#buffered speed boost takes effect when we're on the ground
execute if score @s boostBuffer matches 1.. run function phan:movement/boost_buffer

#check for effect pads!
#speed
scoreboard players operation @s speedBoost2 = @s speedBoost
scoreboard players set @s speedBoost 0
execute at @s if block ~ ~-.2 ~ #phan:speed_normal run function phan:bots/movement/speed_pad
#execute at @s if score @s stoppedTime matches 0..2 rotated ~ 0 positioned ^ ^ ^.75 if block ~ ~-.2 ~ #phan:speed_normal run function phan:bots/movement/speed_pad
#execute at @s if score @s stoppedTime matches 0..2 rotated ~ 0 positioned ^ ^ ^1.5 if block ~ ~-.2 ~ #phan:speed_normal run function phan:bots/movement/speed_pad
execute at @s if block ~ ~-.2 ~ #phan:speed_high run function phan:bots/movement/speed_pad_super
#execute at @s if score @s stoppedTime matches 0..2 rotated ~ 0 positioned ^ ^ ^.75 if block ~ ~-.2 ~ #phan:speed_high run function phan:bots/movement/speed_pad_super
#execute at @s if score @s stoppedTime matches 0..2 rotated ~ 0 positioned ^ ^ ^1.5 if block ~ ~-.2 ~ #phan:speed_high run function phan:bots/movement/speed_pad_super
#jump
execute at @s if block ~ ~-1 ~ #phan:jump_short run function phan:bots/movement/jump_pad_short
execute at @s if block ~ ~-.2 ~ #phan:jump_short run function phan:bots/movement/jump_pad_short
#execute at @s rotated ~ 0 positioned ^ ^ ^.75 if block ~ ~-.9 ~ #phan:jump_short run function phan:bots/movement/jump_pad_short
#execute at @s rotated ~ 0 positioned ^ ^ ^1.5 if block ~ ~-.9 ~ #phan:jump_short run function phan:bots/movement/jump_pad_short
execute at @s if block ~ ~1 ~ #phan:jump_high run function phan:bots/movement/jump_pad_high
execute at @s if block ~ ~-.2 ~ #phan:jump_high run function phan:bots/movement/jump_pad_high
#execute at @s rotated ~ 0 positioned ^ ^ ^.75 if block ~ ~-.9 ~ #phan:jump_high run function phan:bots/movement/jump_pad_high
#execute at @s rotated ~ 0 positioned ^ ^ ^1.5 if block ~ ~-.9 ~ #phan:jump_high run function phan:bots/movement/jump_pad_high
#regain energy
execute if score #10Hz value matches 0 at @s if block ~ ~-.2 ~ #phan:energy_restore run function phan:movement/regain_energy
#execute if score #10Hz value matches 0 at @s unless block ~ ~-.2 ~ #phan:energy_restore at @s rotated ~ 0 positioned ^ ^ ^.75 if block ~ ~-.2 ~ #phan:energy_restore run function phan:movement/regain_energy
#strength
#scoreboard players set @s strengthBoost 0
#execute at @s if block ~ ~-1 ~ #phan:strength_powerup run function phan:movement/strength_pad
#scoreboard players operation @s strengthBoost2 = @s strengthBoost
#teleport pad
execute at @s if block ~ ~-1 ~ #phan:teleporter run function phan:movement/teleport_pad_generic

#^ a lot has been commented out here.
#bots, unlike players, don't need latency compensation for effect pads.
#they see the world exactly as it is. profound.