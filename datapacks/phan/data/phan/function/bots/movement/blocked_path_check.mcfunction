execute store result score #test value run execute unless block ^ ^ ^0.6 #phan:not_solid
execute unless block ^0.6 ^ ^0.8 #phan:not_solid run scoreboard players add #test value 1
execute unless block ^-0.6 ^ ^0.8 #phan:not_solid run scoreboard players add #test value 1

#something blocking our goofy mug? try and get around
execute if score #test value matches 1.. run function phan:bots/movement/blocked_path_avoid