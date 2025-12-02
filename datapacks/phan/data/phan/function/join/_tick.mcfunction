#check yourself before you wreck yourself
execute as @a at @s run function phan:join/player_check

#hunger to disable sprinting?
execute if score #SPRINTING_ALLOWED value matches 0 run effect give @a hunger infinite 255 true
execute if score #SPRINTING_ALLOWED value matches 0 if score #2sec value matches 1 run effect give @a saturation 1 0 true
execute if score #SPRINTING_ALLOWED value matches 1 run effect give @a saturation 10 10 true

#global time goes up every tick so we can check if a player went out of sync due to disconnecting
#(it's okay if this overflows!)
scoreboard players add #join_global value 1
#i also have it on good authority that players will never desync due to poor connection.
#the server will handle them fine up until the moment they're disconnected from the server