#close gate
execute if block 1002 105 -5 target if block 1002 105 6 target run scoreboard players set #d1targetDoor value 0
execute if block 1002 105 -5 target if block 1002 105 6 target unless block 1000 100 -1 smooth_stone_slab[type=double] run fill 1000 100 -1 1000 103 2 smooth_stone_slab[type=double]

#open gate
execute if block 1002 105 -5 melon if block 1002 105 6 melon run scoreboard players add #d1targetDoor value 1

#tell the player to shoot targets if they get stuck here too long
execute if score #5Hz value matches 1 run scoreboard players add @a[gamemode=adventure,x=1001,y=100,z=-10,dx=20,dy=20,dz=20,scores={pCurrentArea=1}] shootAware 1
execute as @a[gamemode=adventure,x=1001,y=100,z=-10,dx=20,dy=20,dz=20,scores={pCurrentArea=1,shootAware=50..99999}] run function phan:levels/pastel_palace/tell_player_to_shoot_targets
execute if score #d1targetDoor value matches 3 run scoreboard players set @a[gamemode=adventure,scores={pCurrentArea=1}] shootAware 100000

#door animates
execute if score #d1targetDoor value matches 1 run fill 1000 100 -1 1000 100 2 smooth_stone_slab[type=top]
execute if score #d1targetDoor value matches 3 run fill 1000 100 -1 1000 100 2 air
execute if score #d1targetDoor value matches 5 run fill 1000 101 -1 1000 101 2 smooth_stone_slab[type=top]
execute if score #d1targetDoor value matches 7 run fill 1000 101 -1 1000 101 2 air
execute if score #d1targetDoor value matches 9 run fill 1000 102 -1 1000 102 2 smooth_stone_slab[type=top]
execute if score #d1targetDoor value matches 11 run fill 1000 102 -1 1000 102 2 air
execute if score #d1targetDoor value matches 13 run fill 1000 103 -1 1000 103 2 smooth_stone_slab[type=top]
execute if score #d1targetDoor value matches 15 run fill 1000 100 -1 1000 103 2 air