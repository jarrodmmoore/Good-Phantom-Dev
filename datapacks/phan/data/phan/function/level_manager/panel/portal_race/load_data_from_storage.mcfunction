#executed by levelEntry armor_stand

#selectable
tag @s add levelSelectablePR
$execute store result score #test value run data get storage phan_dream_$(level_id):portal_race selectable 1
execute if score #test value matches 0 run tag @s remove levelSelectablePR

#figure out which acts are playable
tag @s add act1SelectablePR
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_1 playable 1
execute if score #test value matches 0 run tag @s remove act1SelectablePR

tag @s add act2SelectablePR
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_2 playable 1
execute if score #test value matches 0 run tag @s remove act2SelectablePR

tag @s add act3SelectablePR
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_3 playable 1
execute if score #test value matches 0 run tag @s remove act3SelectablePR

tag @s add act4SelectablePR
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_4 playable 1
execute if score #test value matches 0 run tag @s remove act4SelectablePR