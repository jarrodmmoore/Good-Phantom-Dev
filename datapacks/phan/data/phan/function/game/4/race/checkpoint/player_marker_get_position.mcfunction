#assign position to the player we represent
execute if entity @s[tag=!nonPlayer] on target run function phan:game/4/race/checkpoint/player_get_position

#execute on target via interaction entity doesn't work on non-players. super lame...
execute if entity @s[tag=nonPlayer] run scoreboard players operation #checkID value = @s playerID
execute if entity @s[tag=nonPlayer] at @s as @e[tag=ai,type=zombie,distance=..1] if score @s playerID = #checkID value run function phan:game/4/race/checkpoint/player_get_position

#we've done our job. we're gone
kill @s