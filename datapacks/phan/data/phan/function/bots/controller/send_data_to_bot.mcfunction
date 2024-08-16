#write down what we wanna send
function phan:bots/stage_data_for_transfer

#bot will now read what we sent
scoreboard players operation #getID value = @s botID
execute as @e[type=zombie,tag=ai] if score @s botID = #getID value run function phan:bots/receive_data_from_transfer