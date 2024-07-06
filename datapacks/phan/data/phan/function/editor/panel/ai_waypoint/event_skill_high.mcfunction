execute store result score #test value run execute if entity @s[tag=eventHighSkill]

execute unless score #test value matches 1 run tag @s add eventHighSkill
execute if score #test value matches 1 run tag @s remove eventHighSkill

tag @s remove eventBadSkill

function phan:editor/panel/_ai_waypoints