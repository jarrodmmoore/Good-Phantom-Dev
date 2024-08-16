#do sidebar stuff
execute if score #vGameType value matches 1 run function phan:bots/race/publish_positions
execute if score #vGameType value matches 2 run function phan:bots/battle/publish_positions