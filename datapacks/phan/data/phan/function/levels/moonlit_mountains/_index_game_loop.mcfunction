#old, kill plane beneath level
#execute as @a[tag=playing,gamemode=adventure,scores={pCurrentArea=1,location_y=..20}] run function phan:game/1/player/respawn
#execute as @a[tag=playing,gamemode=adventure,scores={pCurrentArea=2,location_y=..20}] run function phan:game/1/player/respawn
#execute as @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3,location_y=..10}] run function phan:game/1/player/respawn

#area 2 cage and teleport
execute if entity @a[tag=playing,scores={pCurrentArea=2}] run function phan:levels/moonlit_mountains/area_2_loop
execute if entity @a[tag=playing,scores={pCurrentArea=3}] run function phan:levels/moonlit_mountains/area_3_respawns