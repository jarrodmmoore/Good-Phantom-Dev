#store checkpoint data
function phan:game/4/race/checkpoint/store_checkpoint_data

#check if players are in our trigger area
execute if score #coord_x value >= #checkMinX value if score #coord_x value <= #checkMaxX value if score #coord_y value >= #checkMinY value if score #coord_y value <= #checkMaxY value if score #coord_z value >= #checkMinZ value if score #coord_z value <= #checkMaxZ value as @a[tag=playing] if score @s playerID = #getID value run function phan:game/4/race/checkpoint/player_hit_checkpoint_real
execute if score #botsEnabled value matches 1.. if score #coord_x value >= #checkMinX value if score #coord_x value <= #checkMaxX value if score #coord_y value >= #checkMinY value if score #coord_y value <= #checkMaxY value if score #coord_z value >= #checkMinZ value if score #coord_z value <= #checkMaxZ value as @e[tag=ai,type=zombie] if score @s playerID = #getID value run function phan:game/4/race/checkpoint/player_hit_checkpoint_real