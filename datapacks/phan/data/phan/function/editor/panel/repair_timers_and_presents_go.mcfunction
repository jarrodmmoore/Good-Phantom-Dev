#feedback
execute at @s run particle heart ~ ~.5 ~ 0 0 0 1 1

#set to editLoadArea 0
scoreboard players set @s editLoadArea 0

#clear all tags
tag @s remove nodeLoadArea0
tag @s remove nodeLoadArea1
tag @s remove nodeLoadArea2
tag @s remove nodeLoadArea3
tag @s remove nodeLoadArea4
tag @s remove nodeLoadArea5

#fix load area tags
execute if score @s editLoadArea matches 0 run tag @s add nodeLoadArea0
execute if score @s editLoadArea matches 1 run tag @s add nodeLoadArea1
execute if score @s editLoadArea matches 2 run tag @s add nodeLoadArea2
execute if score @s editLoadArea matches 3 run tag @s add nodeLoadArea3
execute if score @s editLoadArea matches 4 run tag @s add nodeLoadArea4
execute if score @s editLoadArea matches 5 run tag @s add nodeLoadArea5