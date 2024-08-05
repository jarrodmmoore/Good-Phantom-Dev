tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
scoreboard players reset @s editor
tag @s remove phan_edit
scoreboard players reset @s AIBC_selected

#clear waypoint editor items
clear @s *[custom_data~{waypointTool:1b}]

#cancel selection, unless there's another player knocking about in editor mode
execute unless entity @a[tag=phan_edit] run tag @e[tag=selected] remove selected
execute unless entity @a[tag=phan_edit] run tag @e[tag=selectedWaypoint] remove selectedWaypoint