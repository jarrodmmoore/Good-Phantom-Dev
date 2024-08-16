#pre-condition:
# 00000309-0000-0000-0000-00000000000a exists and we would like to shoot at them with something
# "#test value" is set to 1

#post-condition:
# "#test value" is set to 0 if we shot something. otherwise it remains at 1


#exit out if we don't have any of the items that could shoot the thing
execute if score @s botHasItem1 matches ..0 if score @s botHasItem2 matches ..0 if score @s botHasItem3 matches ..0 run return 0

#exit out if we're on cooldown
execute if score @s inputCooldown matches 1.. run return 0
#=====

#shoot rocket
execute if score @s botHasItem1 matches 1.. run scoreboard players set #test value 0
execute if score @s botHasItem1 matches 1.. run return run execute facing entity 00000309-0000-0000-0000-00000000000a eyes run function phan:bots/items/1_red_rocket/use

#shoot homing rocket
execute if score @s botHasItem2 matches 1.. run scoreboard players set #test value 0
execute if score @s botHasItem2 matches 1.. run return run execute facing entity 00000309-0000-0000-0000-00000000000a eyes run function phan:bots/items/2_homing_rocket/use

#throw tnt
execute if score @s botHasItem3 matches 1.. run scoreboard players set #test value 0
execute if score @s botHasItem3 matches 1.. run return run execute facing entity 00000309-0000-0000-0000-00000000000a eyes run function phan:bots/items/3_throwable_tnt/use