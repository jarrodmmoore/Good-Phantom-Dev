#target cage
execute if block 1070 105 140 target unless block 1070 99 140 purple_glazed_terracotta run function phan:levels/pastel_palace/a2_cage_close
execute if block 1070 105 140 melon if block 1070 99 140 purple_glazed_terracotta run function phan:levels/pastel_palace/a2_cage_open

#teleport
execute as @a[tag=playing,gamemode=adventure,scores={pCurrentArea=2}] at @s if block ~ ~-.2 ~ red_glazed_terracotta run function phan:levels/pastel_palace/a2_teleport