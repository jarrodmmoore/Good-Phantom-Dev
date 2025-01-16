#count down randomization cooldown on all levels
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown=1..}] randomCooldown 1
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown2=1..}] randomCooldown2 1
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown3=1..}] randomCooldown3 1
scoreboard players remove @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={randomCooldown4=1..}] randomCooldown4 1

#what cooldown are we going to apply?
execute if score #grandPrixActive value matches 1.. run scoreboard players operation #test value = #grandPrixMaxRounds value
execute if score #grandPrixActive value matches ..0 run scoreboard players operation #test value = #TRACK_PICK_COOLDOWN value

#chosen level gets cooldown on the chosen act
execute if score #vAct value matches 1 as @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s levelUID = #chosenLevel value if score @s randomCooldown < #test value run scoreboard players operation @s randomCooldown = #test value
execute if score #vAct value matches 2 as @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s levelUID = #chosenLevel value if score @s randomCooldown2 < #test value run scoreboard players operation @s randomCooldown2 = #test value
execute if score #vAct value matches 3 as @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s levelUID = #chosenLevel value if score @s randomCooldown3 < #test value run scoreboard players operation @s randomCooldown3 = #test value
execute if score #vAct value matches 4 as @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s levelUID = #chosenLevel value if score @s randomCooldown4 < #test value run scoreboard players operation @s randomCooldown4 = #test value
