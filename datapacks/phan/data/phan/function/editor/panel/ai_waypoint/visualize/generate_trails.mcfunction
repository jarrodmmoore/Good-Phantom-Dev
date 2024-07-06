#draw the routes we have entries for
execute if score @s AIBC_dir1 matches -2147483648..2147483647 run function phan:editor/panel/ai_waypoint/visualize/generate_dir1
execute if score @s AIBC_dir2 matches -2147483648..2147483647 run function phan:editor/panel/ai_waypoint/visualize/generate_dir2
execute if score @s AIBC_dir3 matches -2147483648..2147483647 run function phan:editor/panel/ai_waypoint/visualize/generate_dir3
execute if score @s AIBC_dir4 matches -2147483648..2147483647 run function phan:editor/panel/ai_waypoint/visualize/generate_dir4
#also do route 5 if relevant
execute if score @s[tag=AIBC_hasRoute5] AIBC_modifier matches -2147483648..2147483647 run function phan:editor/panel/ai_waypoint/visualize/generate_dir5