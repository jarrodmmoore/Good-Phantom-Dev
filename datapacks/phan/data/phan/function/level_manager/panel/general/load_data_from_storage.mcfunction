#executed by levelEntry armor_stand

#selectable
tag @s add levelSelectable
$execute store result score #test value run data get storage phan_dream_$(level_id):dream_data selectable 1
execute if score #test value matches 0 run tag @s remove levelSelectable

#name_text
$data modify entity @s CustomName set from storage phan_dream_$(level_id):dream_data name_text
