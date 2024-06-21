#close the cage if we haven't already
execute if score #act2cage value matches -1 run function phan:levels/moonlit_mountains/area_2_cage_close

#listen for targets
execute if score #act2target1 value matches 0 if block 1882 97 -44 melon run function phan:levels/moonlit_mountains/area_2_cage_target1
execute if score #act2target2 value matches 0 if block 1892 93 -29 melon run function phan:levels/moonlit_mountains/area_2_cage_target2
execute if score #act2target3 value matches 0 if block 1877 93 -13 melon run function phan:levels/moonlit_mountains/area_2_cage_target3
execute if score #act2target4 value matches 0 if block 1860 85 -20 melon run function phan:levels/moonlit_mountains/area_2_cage_target4

#all targets hit? open cage!
execute if score #act2cage value matches 0 if score #act2target1 value matches 1 if score #act2target2 value matches 1 if score #act2target3 value matches 1 if score #act2target4 value matches 1 run function phan:levels/moonlit_mountains/area_2_cage_open