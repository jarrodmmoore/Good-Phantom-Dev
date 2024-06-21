#return to lobby or boot the next act?
scoreboard players set #vsReturnToLobby value 1
execute if score #freePlay value matches 0 if score #vAct value matches ..2 run scoreboard players set #vsReturnToLobby value 0


#advance to next act
#(i think this is all we need to advance to next round? glad i set that up nicely for myself)
execute if score #vsReturnToLobby value matches 0 run function phan:game/4/_4_init


#mark level completion if we finished all 3 acts
execute if score #vsReturnToLobby value matches 1 if score #freePlay value matches 0 as @a[tag=playing] run function phan:levels/_index_record_completion
execute if score #vsReturnToLobby value matches 1 if score #freePlay value matches 0 as @a[tag=playerReservation] run function phan:levels/_index_record_completion

#return to lobby
execute if score #vsReturnToLobby value matches 1 run function phan:game/4/_4_exit