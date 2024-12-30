#executed by levelEntry armor_stand

#selectable
tag @s add levelSelectable
$execute store result score #test value run data get storage phan_dream_$(level_id):score_attack selectable 1
execute if score #test value matches 0 run tag @s remove levelSelectable

#figure out which acts are playable
tag @s add act1SelectableSA
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_1 playable 1
execute if score #test value matches 0 run tag @s add act1SelectableSA

tag @s add act2SelectableSA
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_2 playable 1
execute if score #test value matches 0 run tag @s remove act2SelectableSA

tag @s add act3SelectableSA
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_3 playable 1
execute if score #test value matches 0 run tag @s remove act3SelectableSA

#get digits for medal times
$execute store result score #digit1BronzeTA value run data get storage phan_dream_$(level_id):score_attack time_bronze[0] 1
$execute store result score #digit2BronzeTA value run data get storage phan_dream_$(level_id):score_attack time_bronze[1] 1
$execute store result score #digit3BronzeTA value run data get storage phan_dream_$(level_id):score_attack time_bronze[2] 1

$execute store result score #digit1SilverTA value run data get storage phan_dream_$(level_id):score_attack time_silver[0] 1
$execute store result score #digit2SilverTA value run data get storage phan_dream_$(level_id):score_attack time_silver[1] 1
$execute store result score #digit3SilverTA value run data get storage phan_dream_$(level_id):score_attack time_silver[2] 1

$execute store result score #digit1GoldTA value run data get storage phan_dream_$(level_id):score_attack time_gold[0] 1
$execute store result score #digit2GoldTA value run data get storage phan_dream_$(level_id):score_attack time_gold[1] 1
$execute store result score #digit3GoldTA value run data get storage phan_dream_$(level_id):score_attack time_gold[2] 1

$execute store result score #digit1DiamondTA value run data get storage phan_dream_$(level_id):score_attack time_diamond[0] 1
$execute store result score #digit2DiamondTA value run data get storage phan_dream_$(level_id):score_attack time_diamond[1] 1
$execute store result score #digit3DiamondTA value run data get storage phan_dream_$(level_id):score_attack time_diamond[2] 1