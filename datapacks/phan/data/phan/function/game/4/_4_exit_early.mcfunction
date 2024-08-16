#need to wipe points from this cancelled session if this is NOT free play mode
execute if score #freePlay value matches 0 run function phan:game/4/new_versus_session

#it's the lobby innit ?
function phan:game/0/_0_init