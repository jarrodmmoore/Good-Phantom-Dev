execute store result score #test value run execute if entity @s[tag=AIBC_hookRight]

execute unless score #test value matches 1 run tag @s add AIBC_hookRight
execute if score #test value matches 1 run tag @s remove AIBC_hookRight

function phan:editor/panel/ai_waypoint/reopen_waypoint_menu