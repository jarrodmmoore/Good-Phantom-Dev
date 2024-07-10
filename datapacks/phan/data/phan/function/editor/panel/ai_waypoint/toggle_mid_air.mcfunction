execute store result score #test value run execute if entity @s[tag=AIBC_midAir]

execute unless score #test value matches 1 run tag @s add AIBC_midAir
execute if score #test value matches 1 run tag @s remove AIBC_midAir

function phan:editor/panel/ai_waypoint/reopen_waypoint_menu