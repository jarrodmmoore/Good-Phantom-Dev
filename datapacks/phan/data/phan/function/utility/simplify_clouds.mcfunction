#this was a utility used in Shattered City to optimize the clouds in the background of the level.

#by "optimize" i mean it got rid of a few million air pockets inside the clouds that destroyed the GPU of lower end machines (like my own)

#Q: how does getting rid of air pockets improve performance?
#A: less exposed blocks means less vertices/triangles need to be used in the meshes that visually make up minecraft chunks
#   and with less going on in the meshes, the game renders faster.
#   yeah, i know minecraft tries really hard to cull things. but minecraft's culling can't really stop overdraw within individual chunks


scoreboard players add #simplifyTimer value 1
execute if score #simplifyTimer value matches 10.. run scoreboard players set #simplifyTimer value 1

#do at various locations
execute if score #simplifyTimer value matches 1 positioned ~ ~ ~ run function phan:utility/simplify_clouds_locations
execute if score #simplifyTimer value matches 2 positioned ~5 ~ ~ run function phan:utility/simplify_clouds_locations
execute if score #simplifyTimer value matches 3 positioned ~-5 ~ ~ run function phan:utility/simplify_clouds_locations

execute if score #simplifyTimer value matches 4 positioned ~ ~ ~5 run function phan:utility/simplify_clouds_locations
execute if score #simplifyTimer value matches 5 positioned ~5 ~ ~5 run function phan:utility/simplify_clouds_locations
execute if score #simplifyTimer value matches 6 positioned ~-5 ~ ~5 run function phan:utility/simplify_clouds_locations

execute if score #simplifyTimer value matches 7 positioned ~ ~ ~-5 run function phan:utility/simplify_clouds_locations
execute if score #simplifyTimer value matches 8 positioned ~5 ~ ~-5 run function phan:utility/simplify_clouds_locations
execute if score #simplifyTimer value matches 9 positioned ~-5 ~ ~-5 run function phan:utility/simplify_clouds_locations