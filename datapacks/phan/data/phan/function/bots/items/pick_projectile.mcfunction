#take inventory on what items we have

#red rocket
#homing rocket
#tnt

#start with nothing viable
execute in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] remove improvViable

#make things viable depending on what items we have

#red rocket -- 1
execute if score @s botHasItem1 matches 1.. run tag 00000000-0000-0328-0000-000000000001 add improvViable
#homing rocket -- 2
execute if score @s botHasItem2 matches 1.. run tag 00000000-0000-0328-0000-000000000002 add improvViable
#tnt -- 3
execute if score @s botHasItem3 matches 1.. run tag 00000000-0000-0328-0000-000000000003 add improvViable

#=====
#pick one at random
scoreboard players set #improvPick value 99
execute in overworld run scoreboard players operation #improvPick value = @e[limit=1,sort=random,tag=improvViable,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] r

execute if score #improvPick value matches 1 run return run function phan:bots/items/1_red_rocket/think
execute if score #improvPick value matches 2 run return run function phan:bots/items/2_homing_rocket/think
execute if score #improvPick value matches 3 run return run function phan:bots/items/3_throwable_tnt/think
execute if score #improvPick value matches 4.. run scoreboard players set @s botHoldingItem 0