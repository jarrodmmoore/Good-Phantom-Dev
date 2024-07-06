scoreboard players remove @s AIBC_event 1
execute if score @s AIBC_event matches ..-1 run scoreboard players set @s AIBC_event 0
scoreboard players set @s AIBC_modifier 0
function phan:editor/panel/_ai_waypoints
tag @s remove eventBadSkill
tag @s remove eventHighSkill