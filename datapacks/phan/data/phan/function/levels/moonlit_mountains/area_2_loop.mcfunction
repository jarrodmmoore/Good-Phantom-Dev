#start caring about the cage if its chunks are loaded for more than 1 second
execute if score #act2cageDelay value matches 1.. if loaded 1871 85 -28 if loaded 1873 85 -28 if loaded 1877 93 -13 if loaded 1892 93 -29 if loaded 1882 97 -44 run scoreboard players remove #act2cageDelay value 1

#only run logic if the cage chunks are loaded and a player is nearby!
execute if score #act2cageDelay value matches ..0 if entity @a[tag=playing,gamemode=adventure,x=1808,y=68,z=-59,dx=110,dy=60,dz=80] run function phan:levels/moonlit_mountains/area_2_cage_logic