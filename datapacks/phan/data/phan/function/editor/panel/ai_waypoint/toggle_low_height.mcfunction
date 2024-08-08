execute store result score #test value run execute if entity @s[tag=AIBC_lowHeight]

execute unless score #test value matches 1 run tag @s add AIBC_lowHeight
execute if score #test value matches 1 run tag @s remove AIBC_lowHeight

function phan:editor/panel/ai_waypoint/reopen_waypoint_menu