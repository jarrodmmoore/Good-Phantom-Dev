#target cage
execute if block 1209 112 132 target if block 1220 109 124 air run clone 1220 105 124 1220 107 126 1220 109 124
execute if block 1209 112 132 melon unless block 1220 109 124 air run fill 1220 109 124 1220 111 126 air

#teleport
execute as @a[gamemode=adventure,tag=playing,scores={pCurrentArea=3}] at @s if block ~ ~-.1 ~ red_glazed_terracotta run function phan:levels/pastel_palace/a3_teleport