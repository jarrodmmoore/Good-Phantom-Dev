#area 1 targets
execute if entity @a[tag=playing,scores={pCurrentArea=1}] run function phan:levels/pastel_palace/area_1_loop

#area 2 cage and teleport
execute if entity @a[tag=playing,scores={pCurrentArea=2}] run function phan:levels/pastel_palace/area_2_loop

#area 3 secret
execute if entity @a[tag=playing,scores={pCurrentArea=3}] run function phan:levels/pastel_palace/area_3_loop