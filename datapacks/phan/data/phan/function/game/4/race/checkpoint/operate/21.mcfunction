#store checkpoint data
function phan:game/4/race/checkpoint/store_checkpoint_data

#hand out positions if we're a posCalc point
execute if score #check21relevant value matches 1 if entity @s[tag=posCalc] as @e[type=interaction,tag=playerPosMarker,scores={checkFake=20},sort=nearest] if score @s lap = #lapRecursion value run function phan:game/4/race/checkpoint/player_marker_get_position

#if we're an optional checkpoint, give check value to players for free regardless if they're in our trigger area
execute unless score #optionalCheckpoint value matches 0 as @a[tag=playing,scores={check=20}] run function phan:game/4/race/checkpoint/operate/checkpoint_add_1

#check if players are in our trigger area
execute if score #optionalCheckpoint value matches 0 as @a[tag=playing] if score @s location_x >= #checkMinX value if score @s location_x <= #checkMaxX value if score @s location_y >= #checkMinY value if score @s location_y <= #checkMaxY value if score @s location_z >= #checkMinZ value if score @s location_z <= #checkMaxZ value run function phan:game/4/race/checkpoint/operate/player_inside_checkpoint_real
execute unless score #optionalCheckpoint value matches 0 as @a[tag=playing] if score @s location_x >= #checkMinX value if score @s location_x <= #checkMaxX value if score @s location_y >= #checkMinY value if score @s location_y <= #checkMaxY value if score @s location_z >= #checkMinZ value if score @s location_z <= #checkMaxZ value run function phan:game/4/race/checkpoint/operate/player_inside_checkpoint_optional

#=====
#bot players only
execute if score #botsEnabled value matches 0 run return 0

#if we're an optional checkpoint, give check value to players for free regardless if they're in our trigger area
execute unless score #optionalCheckpoint value matches 0 as @e[tag=ai,type=zombie,scores={check=20}] run function phan:game/4/race/checkpoint/operate/checkpoint_add_1

#check if players are in our trigger area
execute if score #optionalCheckpoint value matches 0 as @e[tag=ai,type=zombie] if score @s location_x >= #checkMinX value if score @s location_x <= #checkMaxX value if score @s location_y >= #checkMinY value if score @s location_y <= #checkMaxY value if score @s location_z >= #checkMinZ value if score @s location_z <= #checkMaxZ value run function phan:game/4/race/checkpoint/operate/player_inside_checkpoint_real
execute unless score #optionalCheckpoint value matches 0 as @e[tag=ai,type=zombie] if score @s location_x >= #checkMinX value if score @s location_x <= #checkMaxX value if score @s location_y >= #checkMinY value if score @s location_y <= #checkMaxY value if score @s location_z >= #checkMinZ value if score @s location_z <= #checkMaxZ value run function phan:game/4/race/checkpoint/operate/player_inside_checkpoint_optional
