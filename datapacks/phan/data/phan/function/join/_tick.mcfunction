#check yourself before you wreck yourself
execute as @a at @s run function phan:join/player_check

#global time goes up every tick so we can check if a player went out of sync due to disconnecting
#(it's okay if this overflows!)
scoreboard players add #join_global value 1
#i also have it on good authority that players will never desync due to poor connection.
#the server will handle them fine up until the moment they're disconnected from the server