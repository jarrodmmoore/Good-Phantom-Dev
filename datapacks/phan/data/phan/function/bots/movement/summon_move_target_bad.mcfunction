execute if loaded ^ ^ ^0.001 run summon marker ^ ^ ^0.001 {UUID:[I;123987,0,0,1]}
#also known as
#0001e453-0000-0000-0000-000000000001

execute as 0001e453-0000-0000-0000-000000000001 run function phan:bots/movement/summon_move_target_post_summon

#we will need to respawn soon
execute if score #vGameType value matches 1 run tag @s add botRespawnAdvance