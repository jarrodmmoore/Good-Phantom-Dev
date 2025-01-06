#don't bother if it's a stock level and is already cached
execute if score #cachedLevel value = #chosenLevel value if score #chosenLevel value matches ..999 run return 0
#=====

#copy data of chosenLevel into the active dream storage
execute store result storage phan:level_index level_id int 1 run scoreboard players get #chosenLevel value
data modify storage phan:level_index filename set value 'phan_dream_active'
function phan:level_manager/export_dream_go with storage phan:level_index
#^ i'm going to keep the code more maintainable by re-using the export dream function

#Q: why do this?
#A: so it's easier to access the dream's data during gameplay without having to index it with a macro every dang time


#keep track of whether we should be doing custom area transitions in Score Attack mode
execute store result score #saCustomAreaTransition1 value run data get storage phan_dream_active:sa_act_1 use_area_transition
execute store result score #saCustomAreaTransition2 value run data get storage phan_dream_active:sa_act_2 use_area_transition
execute store result score #saCustomAreaTransition3 value run data get storage phan_dream_active:sa_act_3 use_area_transition

#generate and store indexes for "random" level music (in case any acts are using it)
execute store result score #bgmRandomAct1 value run random value 1..12
execute store result score #bgmRandomAct2 value run random value 1..12
execute store result score #bgmRandomAct3 value run random value 1..12
execute store result score #bgmRandomAct4 value run random value 1..12