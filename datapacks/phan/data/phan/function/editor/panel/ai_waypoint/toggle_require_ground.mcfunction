execute store result score #test value run execute if entity @s[tag=AIBC_requireGround]

execute unless score #test value matches 1 run tag @s add AIBC_requireGround
execute if score #test value matches 1 run tag @s remove AIBC_requireGround

function phan:editor/panel/ai_waypoint/reopen_waypoint_menu