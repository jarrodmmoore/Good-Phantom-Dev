#get player at the front of the queue
scoreboard players set #lowest value 2147483647
scoreboard players operation #lowest value < @a[tag=!playing,tag=doneWithIntro,scores={teamRequest=2}] playQueue
execute as @a[tag=!playing,tag=doneWithIntro,scores={teamRequest=2}] if score @s playQueue = #lowest value run function phan:player_queue/tag_player

#recursion maybe
scoreboard players remove #pickPlayers value 1
execute if score #pickPlayers value matches 1.. run function phan:player_queue/pick_player_recursive