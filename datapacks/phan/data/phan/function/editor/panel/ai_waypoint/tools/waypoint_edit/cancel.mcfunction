#clean up tags and scores
tag @s remove importSelectedWaypoint
scoreboard players set @s AIBC_mode 0
scoreboard players reset @s AIBC_selected
scoreboard players reset @s AIBC_dir1
scoreboard players reset @s AIBC_dir2
scoreboard players reset @s AIBC_dir3
scoreboard players reset @s AIBC_dir4
scoreboard players set @s AIBC_event 0
scoreboard players set @s AIBC_modifier 0
scoreboard players reset @s AIBC_spread_x
scoreboard players reset @s AIBC_spread_z
tag @s remove AIBC_midAir
tag @s remove AIBC_requireGround
tag @s remove AIBC_hookLeft
tag @s remove AIBC_hookRight

#go back to ai waypoint menu?
function phan:editor/panel/ai_waypoint/_spawn_menu