#manually run function
#...unless in the future we set up some automated way to automatically generate new rooms with associated dreams in them

execute as @e[type=armor_stand,tag=levelEntry,distance=..10,limit=1,sort=nearest] at @s run function phan:level_manager/create_new_go