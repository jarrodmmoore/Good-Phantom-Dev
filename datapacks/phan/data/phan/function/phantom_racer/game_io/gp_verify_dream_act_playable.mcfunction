$execute store result score #test2 value run data get storage phan_dream_$(level_id):dream_data selectable
execute if score #test2 value matches 0 run scoreboard players set #success value 0

$execute store result score #test2 value run data get storage phan_dream_$(level_id):portal_race selectable
execute if score #test2 value matches 0 run scoreboard players set #success value 0

$execute store result score #test2 value run data get storage phan_dream_$(level_id):pr_act_$(act) playable
execute if score #test2 value matches 0 run scoreboard players set #success value 0