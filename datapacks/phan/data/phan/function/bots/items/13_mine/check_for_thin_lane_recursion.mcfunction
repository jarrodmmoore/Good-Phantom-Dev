#quit out if this is NOT a good place to stand
#wall
execute unless block ~ ~1 ~ #phan:not_solid run return 0
#falloff
execute if block ~ ~-1 ~ #phan:not_solid if block ~ ~-2 ~ #phan:not_solid run return 0

#count how many valid blocks there are
scoreboard players remove #recursions value 1
scoreboard players add #test1 value 1
execute if score #recursions value matches 1.. positioned ^ ^ ^1 run function phan:bots/items/13_mine/check_for_thin_lane_recursion