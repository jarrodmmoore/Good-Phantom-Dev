#store reset zone data
function phan:game/4/objects/store_reset_zone_data_battle

#check if players are in our trigger area
execute as @a[tag=playing,gamemode=adventure] if score @s location_x >= #checkMinX value if score @s location_x <= #checkMaxX value if score @s location_y >= #checkMinY value if score @s location_y <= #checkMaxY value if score @s location_z >= #checkMinZ value if score @s location_z <= #checkMaxZ value run function phan:game/4/battle/player_inside_reset_zone
