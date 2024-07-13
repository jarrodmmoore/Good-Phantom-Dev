#write down what we wanna send
#...

#bot will now read what we sent
scoreboard players operation #getID value = @s botID
execute as @e[type=zombie,tag=ai] if score @s botID = #getID value run function phan:bots/controller/send_data_to_bot_recieve