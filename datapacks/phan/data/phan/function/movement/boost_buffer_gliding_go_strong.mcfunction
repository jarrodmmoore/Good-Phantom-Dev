scoreboard players set @s boostBuffer 0

#alright... NOW we can give the boost out!
particle falling_dust{block_state:"red_concrete"} ~ ~1 ~ 0.4 0.4 0.4 1 20
#scoreboard players add @s moveVelocity 100
#effect give @s speed 1 4 false
#execute if score #assist_movement value matches 1.. run effect give @s speed 1 8 false
#scoreboard players set @s speedDecayDelay -15

#get air boosted
execute if entity @s[type=player] run scoreboard players set $strength player_motion.api.launch 3500
execute if entity @s[type=player] run function player_motion:api/launch_looking
#execute if entity @s[tag=ai] run function phan:bots/movement/2_gliding/react_to_explosion_boost

#alternate behavior for bots
execute if entity @s[tag=ai] on vehicle if entity @s[tag=botElytraHeightFix] on vehicle if entity @s[tag=botElytra] at @s run function phan:bots/movement/2_gliding/apply_velocity_to_vehicle_variable {strength:"0.0105"}

#reduce hitstun
#scoreboard players remove @s hitstun 15
#execute if score @s hitstun matches ..-1 run scoreboard players set @s hitstun 0

#sonic boom visual effect
function phan:movement/sonic_boom_visual