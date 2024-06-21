#fallback
scoreboard players set #pickPlayers value 1
#set number of players to bring in depending on gamemode
execute if score #desiredGamemode value matches 1 run scoreboard players set #pickPlayers value 3
execute if score #desiredGamemode value matches 3 run scoreboard players set #pickPlayers value 24

#give "playing" tag to people in queue order 
function phan:player_queue/pick_player_recursive

#start the party
function phan:game/2/start_game