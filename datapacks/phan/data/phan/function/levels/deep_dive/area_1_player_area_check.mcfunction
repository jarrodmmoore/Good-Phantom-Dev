#we're using volumes instead of the usual x,z detection since this act is totally vertical

#we're also gonna have each trigger spawn the items of the area that follows immediately after the trigger zone, unlike other courses which do 1 in advance
#this will cause some noticeable pop-in, but will also help players navigate better through more effective breadcrumbing

#AREA TRANSITION ZONES (placed at choke points that players have to go through)
#start point at top
execute if entity @s[x=3990,y=284,z=90,dx=20,dy=20,dz=20] run scoreboard players set @s currentLoad 1
#tower in center middle after big jump
execute if entity @s[x=3994,y=274,z=-28,dx=11,dy=100,dz=10] run scoreboard players set @s currentLoad 2
execute if entity @s[scores={currentLoad=1,location_y=..270}] run scoreboard players set @s currentLoad 2
#vertical tower above 3rd tier of waterfall
execute if entity @s[x=4050,y=194,z=-6,dx=12,dy=50,dz=12] run scoreboard players set @s currentLoad 3
execute if entity @s[scores={currentLoad=2,location_y=..218}] run scoreboard players set @s currentLoad 3
#drop-down in the center to 4th tier of waterfall
execute if entity @s[x=3995,y=109,z=-5,dx=11,dy=81,dz=11] run scoreboard players set @s currentLoad 4
execute if entity @s[scores={currentLoad=3,location_y=..172}] run scoreboard players set @s currentLoad 4
#drop-down into the last 2 tiers
execute if score @s location_y matches ..98 run scoreboard players set @s currentLoad 5


#new area? load stuff
execute unless score @s currentLoad = @s previousLoad run function phan:game/1/player_area_new

#update previousLoad
scoreboard players operation @s previousLoad = @s currentLoad

#respawn if we go beyond x=4084
execute if score @s location_x matches 4084.. run function phan:game/1/player_respawn


#=====
#UNRELATED, but while we've got the player as the execution context, let's handle the teleporter at the bottom

#teleport
execute at @s if block ~ ~-.1 ~ red_glazed_terracotta run function phan:levels/deep_dive/a1_teleport
