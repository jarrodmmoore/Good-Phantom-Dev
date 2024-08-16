execute store result score #test value run execute if entity @s[tag=eventBadSkill]

execute unless score #test value matches 1 run tag @s add eventBadSkill
execute if score #test value matches 1 run tag @s remove eventBadSkill

tag @s remove eventHighSkill

function phan:editor/panel/ai_waypoint/reopen_waypoint_menu