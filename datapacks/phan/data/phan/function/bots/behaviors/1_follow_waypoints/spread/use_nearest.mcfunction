#the point we should target should be our current position clamped inside the spread range, plus some slight randomness
execute store result score #coord_xx value run data get entity @s Pos[0] 10
execute store result score #coord_zz value run data get entity @s Pos[2] 10
#x randomness
execute store result score #random value run random value 1..5
execute if score #random value matches 1 run scoreboard players remove #coord_xx value 10
execute if score #random value matches 2 run scoreboard players remove #coord_xx value 5
execute if score #random value matches 4 run scoreboard players add #coord_xx value 5
execute if score #random value matches 5 run scoreboard players add #coord_xx value 10
#z randomness
execute store result score #random2 value run random value 1..5
execute if score #random2 value matches 1 run scoreboard players remove #coord_zz value 10
execute if score #random2 value matches 2 run scoreboard players remove #coord_zz value 5
execute if score #random2 value matches 4 run scoreboard players add #coord_zz value 5
execute if score #random2 value matches 5 run scoreboard players add #coord_zz value 10
#clamp inside spread range
execute if score #coord_xx value > #wpMaxX value run scoreboard players operation #coord_xx value = #wpMaxX value
execute if score #coord_xx value < #wpMinX value run scoreboard players operation #coord_xx value = #wpMinX value
execute if score #coord_zz value > #wpMaxZ value run scoreboard players operation #coord_zz value = #wpMaxZ value
execute if score #coord_zz value < #wpMinZ value run scoreboard players operation #coord_zz value = #wpMinZ value

#set our bias after we do this for more consistent movement (also prevents the bots from crossing over each other constantly in the middle of the lane)
function phan:bots/behaviors/1_follow_waypoints/spread/set_bias