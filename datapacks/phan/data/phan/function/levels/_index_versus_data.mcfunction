#load from storage
scoreboard players set #success value 0
execute if score #vAct value matches 1 run function phan:level_manager/load/load_versus_data_act_1 with storage phan_dream_active:pr_act_1
execute if score #vAct value matches 2 run function phan:level_manager/load/load_versus_data_act_2 with storage phan_dream_active:pr_act_2
execute if score #vAct value matches 3 run function phan:level_manager/load/load_versus_data_act_3 with storage phan_dream_active:pr_act_3
execute if score #vAct value matches 4 run function phan:level_manager/load/load_versus_data_act_4 with storage phan_dream_active:pr_act_4
execute if score #success value matches 0 run tellraw @a ["",{text:"[ ! ] Something went wrong while loading the data for this act! Please make sure your dream's data is formatted correctly.",color:"red"}]

#do versus init
function phan:level_manager/load/function_init_versus with storage phan_dream_active:dream_data

#set randomization cooldown on the act we're currently on
function phan:levels/_index_randomization_cooldown

#adding 1 tick to max time limit so it stops on an even number if a player DNF's ;)
scoreboard players add #vTimeLimit value 1
#whoever finishes a race on the last possible tick thanks to this change: you're welcome

#determine which checkpoints exist (so we can be a cheapskate and only try to @e the ones that exist)
execute store result score #check1exists value if score #vCheckPoints value matches 1..
execute store result score #check2exists value if score #vCheckPoints value matches 2..
execute store result score #check3exists value if score #vCheckPoints value matches 3..
execute store result score #check4exists value if score #vCheckPoints value matches 4..
execute store result score #check5exists value if score #vCheckPoints value matches 5..
execute store result score #check6exists value if score #vCheckPoints value matches 6..
execute store result score #check7exists value if score #vCheckPoints value matches 7..
execute store result score #check8exists value if score #vCheckPoints value matches 8..
execute store result score #check9exists value if score #vCheckPoints value matches 9..
execute store result score #check10exists value if score #vCheckPoints value matches 10..
execute store result score #check11exists value if score #vCheckPoints value matches 11..
execute store result score #check12exists value if score #vCheckPoints value matches 12..
execute store result score #check13exists value if score #vCheckPoints value matches 13..
execute store result score #check14exists value if score #vCheckPoints value matches 14..
execute store result score #check15exists value if score #vCheckPoints value matches 15..
execute store result score #check16exists value if score #vCheckPoints value matches 16..
execute store result score #check17exists value if score #vCheckPoints value matches 17..
execute store result score #check18exists value if score #vCheckPoints value matches 18..
execute store result score #check19exists value if score #vCheckPoints value matches 19..
execute store result score #check20exists value if score #vCheckPoints value matches 20..
execute store result score #check21exists value if score #vCheckPoints value matches 21..
execute store result score #check22exists value if score #vCheckPoints value matches 22..
execute store result score #check23exists value if score #vCheckPoints value matches 23..
execute store result score #check24exists value if score #vCheckPoints value matches 24..
execute store result score #check25exists value if score #vCheckPoints value matches 25..

#assist mode: get extra time
execute if score #assist_time_limit value matches 1 run scoreboard players operation #vTimeLimit value *= #CONST_ASSIST_TIME value
execute if score #assist_time_limit value matches 1 run scoreboard players operation #vTimeLimit value /= #100 value
#assist mode: no time limit
execute if score #assist_time_limit value matches 2 run scoreboard players set #vTimeLimit value 900000000