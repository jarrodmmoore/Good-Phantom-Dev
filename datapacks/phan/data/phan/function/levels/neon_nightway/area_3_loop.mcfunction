#swap platforms on timer
scoreboard players add #platformSwapTimer value 1
execute if score #platformSwapTimer value matches 30.. run function phan:levels/neon_nightway/area_3_platform_swap


#make sure platforms are set based on "#platformSwapAct3"

#blue solid when platformSwap is 0
execute if score #5Hz value matches 0 if score #platformSwapAct3 value matches 0 run function phan:levels/neon_nightway/area_3_platforms_blue

#yellow solid when platformSwap is 1
execute if score #5Hz value matches 1 if score #platformSwapAct3 value matches 1 run function phan:levels/neon_nightway/area_3_platforms_yellow


#reset players who fall down onto the plateau thing
execute as @a[tag=playing,gamemode=adventure,x=3339,y=61,z=-97,dx=67,dy=15,dz=84,scores={pCurrentArea=3}] at @s if block ~ ~-.5 ~ #phan:neon_nightway_reset run function phan:game/1/player_respawn
#3405 -14

