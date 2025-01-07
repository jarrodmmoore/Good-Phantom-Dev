#executed by a levelEntry armor_stand in the lobby


#don't create duplicate data!
execute if score @s levelUID matches -2147483648..2147483647 run return run tellraw @a ["",{"text":"[ ! ] The data for this dream has already been created!","color":"red"}]
execute unless score @s nearPlayer matches -2147483648..2147483647 run return run tellraw @a ["",{"text":"[ ! ] Armor stand is missing a level index! (score=nearPlayer)","color":"red"}]
#=====

#assign UID so we can reference an associated storage
#scoreboard players add #levelUID value 1
#scoreboard players operation @s levelUID = #levelUID value
scoreboard players operation @s levelUID = @s nearPlayer

#get storage arg ready
data modify storage phan:level_index sleeping_player set value 'steve'
data modify storage phan:level_index function_index set value 1
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
#phan:level_index act_id

#generate data and fill it all with defaults
function phan:level_manager/generate_default_data with storage phan:level_index