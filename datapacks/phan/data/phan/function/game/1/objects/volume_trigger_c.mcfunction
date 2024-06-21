#store data
execute if entity @s[tag=resetZoneSA] run function phan:game/1/objects/store_reset_zone_data
execute if entity @s[tag=loadingZone] run function phan:game/1/objects/store_load_zone_data

#check if players are in our trigger area
execute if entity @s[tag=resetZoneSA] as @a[tag=playing,scores={pCurrentArea=3}] if score @s location_x >= #checkMinX value if score @s location_x <= #checkMaxX value if score @s location_y >= #checkMinY value if score @s location_y <= #checkMaxY value if score @s location_z >= #checkMinZ value if score @s location_z <= #checkMaxZ value run function phan:game/1/objects/player_inside_reset_zone
execute if entity @s[tag=loadingZone] as @a[tag=playing,scores={pCurrentArea=3}] if score @s location_x >= #checkMinX value if score @s location_x <= #checkMaxX value if score @s location_y >= #checkMinY value if score @s location_y <= #checkMaxY value if score @s location_z >= #checkMinZ value if score @s location_z <= #checkMaxZ value run function phan:game/1/objects/player_inside_loading_zone