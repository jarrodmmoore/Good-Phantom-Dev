#do nothing if we used random track select. cooldown is already handled!
execute if score #usingRandomLevelSelect value matches 1 run return run scoreboard players set #usingRandomLevelSelect value 0

#=====

#count down randomization cooldown on all levels
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown=1..}] randomCooldown 1
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown2=1..}] randomCooldown2 1
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown3=1..}] randomCooldown3 1
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown4=1..}] randomCooldown4 1

#apply randomization cooldown to the chosen act of the chosen level
execute if score #gameState value matches 1..3 run scoreboard players operation #test value = @s pCurrentArea
execute if score #gameState value matches 4 run scoreboard players operation #test value = #vAct value

#chosen level gets cooldown on the chosen act
execute if score #test value matches 1 as @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s levelUID = #chosenLevel value if score @s randomCooldown < #TRACK_PICK_COOLDOWN value run scoreboard players operation @s randomCooldown = #TRACK_PICK_COOLDOWN value
execute if score #test value matches 2 as @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s levelUID = #chosenLevel value if score @s randomCooldown2 < #TRACK_PICK_COOLDOWN value run scoreboard players operation @s randomCooldown2 = #TRACK_PICK_COOLDOWN value
execute if score #test value matches 3 as @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s levelUID = #chosenLevel value if score @s randomCooldown3 < #TRACK_PICK_COOLDOWN value run scoreboard players operation @s randomCooldown3 = #TRACK_PICK_COOLDOWN value
execute if score #test value matches 4 as @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s levelUID = #chosenLevel value if score @s randomCooldown4 < #TRACK_PICK_COOLDOWN value run scoreboard players operation @s randomCooldown4 = #TRACK_PICK_COOLDOWN value
