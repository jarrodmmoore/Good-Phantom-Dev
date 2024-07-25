#might deny this event depending on item luck and bot skill
execute if score #waypointEventSkill value matches 1..2 if function phan:bots/behaviors/1_follow_waypoints/event/skill_and_luck_roll run return 0
#=====

#make sure we can glide if we want
execute unless items entity @s armor.chest elytra run item replace entity @s armor.chest with elytra[unbreakable={}]

#0,1,2 mid air? just enter flight
execute unless score #waypointModifier value matches 3 if score @s onGround matches ..0 run function phan:bots/movement/1_air/transition_to_gliding

#0,1,2 while grounded? do a jump, now or later, with possible spamming, and enter flight when airborne
execute unless score #waypointModifier value matches 2..3 if score @s onGround matches 1.. run scoreboard players set @s botJumpTimer 0
execute unless score #waypointModifier value matches 3 if score @s onGround matches 1.. run tag @s add botFlyWhenInAir
execute if score #waypointModifier value matches 1 if score @s onGround matches 1.. run tag @s add botSpamJumpKey
execute if score #waypointModifier value matches 2 if score @s onGround matches 1.. run scoreboard players set @s botJumpTimer -1

#cancel flight
execute if score #waypointModifier value matches 3 run function phan:bots/movement/cancel_flight