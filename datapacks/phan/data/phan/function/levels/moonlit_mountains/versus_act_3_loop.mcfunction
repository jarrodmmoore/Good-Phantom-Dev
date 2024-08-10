#respawn if fallen into the void
execute as @a[tag=playing,gamemode=adventure,scores={location_y=..35}] run function phan:game/4/race/respawn
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,scores={location_y=..35}] run tag @s add botRespawn

#fun setup phase stuff
execute if score #gameTime value matches ..300 run function phan:levels/moonlit_mountains/versus_act_3_countdown