#if the lane is less than 5 blocks wide in x OR z axis, we consider this a "thin" lane

scoreboard players set #test1 value 1
scoreboard players set #recursions value 5
execute rotated 0 90 positioned ^ ^ ^1 run function phan:bots/items/13_mine/check_for_thin_lane_recursion
scoreboard players set #recursions value 5
execute rotated 0 -90 positioned ^ ^ ^1 run function phan:bots/items/13_mine/check_for_thin_lane_recursion
execute if score #test1 value matches ..4 run return 1

scoreboard players set #test1 value 1
scoreboard players set #recursions value 5
execute rotated 0 0 positioned ^ ^ ^1 run function phan:bots/items/13_mine/check_for_thin_lane_recursion
scoreboard players set #recursions value 5
execute rotated 0 180 positioned ^ ^ ^1 run function phan:bots/items/13_mine/check_for_thin_lane_recursion
execute if score #test1 value matches ..4 run return 1

#lane is thick
return 0