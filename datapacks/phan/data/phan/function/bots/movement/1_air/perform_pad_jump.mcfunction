#use item if we got it
execute if score @s botHasItem7 matches 1.. run return run function phan:bots/items/7_speed_pad/use
execute if score @s botHasItem8 matches 1.. run return run function phan:bots/items/8_super_speed_pad/use

#(tag will be cleared inside item usage the function)