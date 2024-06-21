tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
scoreboard players reset @s editor
tag @s remove phan_edit

#cancel selection, unless there's another player knocking about in editor mode
execute unless entity @a[tag=phan_edit] run tag @e[tag=selected] remove selected