#take inventory on what items we have

#lightning strike
#blinding squid
#anvil of justice
#enderman thief

#start with nothing viable
execute in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] remove improvViable

#make things viable depending on what items we have

#lightning strike -- 1
execute if score @s botHasItem9 matches 1.. run tag 00000000-0000-0328-0000-000000000001 add improvViable
#blinding squid -- 1
execute if score @s botHasItem10 matches 1.. run tag 00000000-0000-0328-0000-000000000002 add improvViable
#anvil of justice -- 1
execute if score @s botHasItem11 matches 1.. run tag 00000000-0000-0328-0000-000000000003 add improvViable
#enderman thief -- 1
execute if score @s botHasItem16 matches 1.. run tag 00000000-0000-0328-0000-000000000004 add improvViable

#=====
#pick one at random
scoreboard players set #improvPick value 99
execute in overworld run scoreboard players operation #improvPick value = @e[limit=1,sort=random,tag=improvViable,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] r

execute if score #improvPick value matches 1 run return run function phan:bots/items/9_lightning_strike/think
execute if score #improvPick value matches 2 run return run function phan:bots/items/10_blinding_squid/think
execute if score #improvPick value matches 3 run return run function phan:bots/items/11_anvil_of_justice/think
execute if score #improvPick value matches 4 run return run function phan:bots/items/16_enderman_thief/think
execute if score #improvPick value matches 5.. run scoreboard players set @s botHoldingItem 0