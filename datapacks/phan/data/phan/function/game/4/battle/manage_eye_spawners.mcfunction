#count number active
execute store result score #test2 value run execute if entity @e[type=marker,tag=vsEyeSpawner,scores={versusSpawn=1,editArg3=..999}]

#activeBattlePlayers=..4 = 5 eyes on the field
#activeBattlePlayers=5..8 = 6 eyes on the field
#activeBattlePlayers=9..12 = 7 eyes on the field
#activeBattlePlayers=13..18 = 8 eyes on the field
#activeBattlePlayers=19.. = 9 eyes on the field

#need to spawn another? do just that!
execute if score #activeBattlePlayers value matches ..4 if score #test2 value matches ..4 run function phan:game/4/battle/manage_eye_spawners_go
execute if score #activeBattlePlayers value matches 5..8 if score #test2 value matches ..5 run function phan:game/4/battle/manage_eye_spawners_go
execute if score #activeBattlePlayers value matches 9..12 if score #test2 value matches ..6 run function phan:game/4/battle/manage_eye_spawners_go
execute if score #activeBattlePlayers value matches 13..18 if score #test2 value matches ..7 run function phan:game/4/battle/manage_eye_spawners_go
execute if score #activeBattlePlayers value matches 19.. if score #test2 value matches ..8 run function phan:game/4/battle/manage_eye_spawners_go