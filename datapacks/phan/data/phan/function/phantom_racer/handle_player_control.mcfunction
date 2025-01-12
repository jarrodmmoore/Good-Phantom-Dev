#keep track of whether a player actually exists
scoreboard players set #success value 0

#execute on passenger of armor_stand
execute as @e[type=armor_stand,tag=gameControllerPlayerHolder,distance=..10] on passengers if entity @s[type=player] at @s run function phan:phantom_racer/handle_player_control_go

#no player in control? go back to non-control state
execute if score #success value matches 0 run function phan:phantom_racer/return_to_non_control_state