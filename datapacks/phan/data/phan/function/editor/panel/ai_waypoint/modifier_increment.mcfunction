scoreboard players add @s AIBC_modifier 1
execute if score @s AIBC_event matches 3 run scoreboard players set @s[scores={AIBC_modifier=11..}] AIBC_modifier 10
function phan:editor/panel/ai_waypoint/reopen_waypoint_menu