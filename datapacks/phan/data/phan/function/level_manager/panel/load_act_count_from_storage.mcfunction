#executed by levelEntry armor_stand


#count number of active acts

#figure out which gamemodes are selectable for this dream
$execute store result score #test2 value run data get storage phan_dream_$(level_id):score_attack selectable 1
$execute store result score #test3 value run data get storage phan_dream_$(level_id):portal_race selectable 1


#score attack
scoreboard players set #actCountSA value 0
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_1 playable 1
execute if score #test value matches 1 run scoreboard players add #actCountSA value 1

$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_2 playable 1
execute if score #test value matches 1 run scoreboard players add #actCountSA value 1

$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_3 playable 1
execute if score #test value matches 1 run scoreboard players add #actCountSA value 1

#portal race
scoreboard players set #actCountPR value 0
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_1 playable 1
execute if score #test value matches 1 run scoreboard players add #actCountPR value 1

$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_2 playable 1
execute if score #test value matches 1 run scoreboard players add #actCountPR value 1

$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_3 playable 1
execute if score #test value matches 1 run scoreboard players add #actCountPR value 1

$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_4 playable 1
execute if score #test value matches 1 run scoreboard players add #actCountPR value 1


#get special tags if we're missing entries for some gamemode
tag @s remove noScoreAttack
execute if score #actCountSA value matches ..0 run tag @s add noScoreAttack

tag @s remove noPortalRace
execute if score #actCountPR value matches ..0 run tag @s add noPortalRace