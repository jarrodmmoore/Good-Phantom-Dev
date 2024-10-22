#do nothing if we used random track select. cooldown is already handled!
execute if score #usingRandomLevelSelect value matches 1 run return run scoreboard players set #usingRandomLevelSelect value 0

#=====

#count down randomization cooldown on all levels
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown=1..}] randomCooldown 1

#apply randomization cooldown to the chosen act of the chosen level
execute if score #gameState value matches 1..3 run scoreboard players operation #test value = @s pCurrentArea
execute if score #gameState value matches 4 run scoreboard players operation #test value = #vAct value

#now do index
execute if score #chosenLevel value matches 1 run function phan:levels/pastel_palace/_randomization_cooldown
execute if score #chosenLevel value matches 2 run function phan:levels/moonlit_mountains/_randomization_cooldown
execute if score #chosenLevel value matches 3 run function phan:levels/shattered_city/_randomization_cooldown
execute if score #chosenLevel value matches 4 run function phan:levels/neon_nightway/_randomization_cooldown
execute if score #chosenLevel value matches 5 run function phan:levels/deep_dive/_randomization_cooldown