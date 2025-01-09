#area 1
execute if entity @a[tag=playing,scores={pCurrentArea=1}] run function phan:levels/deep_dive/area_1_loop

#area 2
execute if entity @a[tag=playing,scores={pCurrentArea=2}] run function phan:levels/deep_dive/area_2_loop

#area 3
execute if entity @a[tag=playing,scores={pCurrentArea=3}] run function phan:levels/deep_dive/area_3_loop

#singleplayer: gates are shut whenever a cutscene is NOT playing
execute if score #multiplayer value matches 0 if score #5Hz value matches 2 if entity @a[tag=playing,gamemode=adventure] run function phan:levels/deep_dive/keep_all_gates_shut
#multiplayer: gates are always shut
execute if score #multiplayer value matches 1.. if score #5Hz value matches 2 run function phan:levels/deep_dive/keep_all_gates_shut