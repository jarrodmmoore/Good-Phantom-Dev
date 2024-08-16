#convert spread values to rotation coordinates
function phan:editor/panel/ai_waypoint/tools/waypoint_edit/convert_spread_to_rotation_coords

#now send it
$execute as @e[type=marker,tag=AIBC,scores={AIBC_id=$(selected)},limit=1,sort=nearest] at @s run function phan:editor/panel/ai_waypoint/tools/waypoint_edit/apply_waypoint_data with storage phan:ai_waypoint