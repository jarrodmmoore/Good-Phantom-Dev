#don't randomly select an un-selectable act, please

#score attack acts
$execute store result score #test4 value run data get storage phan_dream_$(level_id):sa_act_1 playable
execute if score #test4 value matches 0 run scoreboard players set @s randomCooldownS1 2147483647

$execute store result score #test4 value run data get storage phan_dream_$(level_id):sa_act_2 playable
execute if score #test4 value matches 0 run scoreboard players set @s randomCooldownS2 2147483647

$execute store result score #test4 value run data get storage phan_dream_$(level_id):sa_act_3 playable
execute if score #test4 value matches 0 run scoreboard players set @s randomCooldownS3 2147483647

#portal race acts
$execute store result score #test4 value run data get storage phan_dream_$(level_id):pr_act_1 playable
execute if score #test4 value matches 0 run scoreboard players set @s randomCooldown 2147483647

$execute store result score #test4 value run data get storage phan_dream_$(level_id):pr_act_2 playable
execute if score #test4 value matches 0 run scoreboard players set @s randomCooldown2 2147483647

$execute store result score #test4 value run data get storage phan_dream_$(level_id):pr_act_3 playable
execute if score #test4 value matches 0 run scoreboard players set @s randomCooldown3 2147483647

$execute store result score #test4 value run data get storage phan_dream_$(level_id):pr_act_4 playable
execute if score #test4 value matches 0 run scoreboard players set @s randomCooldown4 2147483647