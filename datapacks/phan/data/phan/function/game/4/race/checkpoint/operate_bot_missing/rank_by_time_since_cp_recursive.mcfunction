#find botController who's been waiting the longest and assign them a position first
scoreboard players set #longestTimeSinceCP value 0
execute as @e[type=block_display,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=botRankable] run function phan:game/4/race/checkpoint/operate_bot_missing/rank_by_time_since_cp_find_longest

#all botControllers matching the longest time since CP get ranked right now
execute as @e[type=block_display,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=botRankable] if score @s botTimeSinceCP >= #longestTimeSinceCP value run function phan:game/4/race/checkpoint/operate_bot_missing/bot_controller_get_position

#keep going
scoreboard players remove #recursions value 1
execute if score #recursions value matches 1.. run function phan:game/4/race/checkpoint/operate_bot_missing/rank_by_time_since_cp_recursive