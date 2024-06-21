#crown the leading player
function phan:game/4/give_crown_to_point_leader
scoreboard players set #allowCrown value 1

#this session is over! can't earn any more points in here.
execute if score #freePlay value matches 0 run function phan:game/4/new_versus_session

#it's the lobby innit ?
scoreboard players set #lastLevelPlayed value 0
function phan:game/0/_0_init