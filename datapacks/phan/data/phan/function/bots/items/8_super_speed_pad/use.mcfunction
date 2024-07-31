#other players' enderman thief can intercept the item!
scoreboard players set @s botHoldingItem 8
scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run return 0
#=====

#consume item
scoreboard players remove @s botHasItem8 1
#update held item
execute if score @s botHasItem8 matches 1.. run scoreboard players set @s botHoldingItem 8
execute if score @s botHasItem8 matches ..0 run scoreboard players set @s botHoldingItem 0
#tell controller our inventory changed
tag @s add hasDataToSend
#=====

#if in mid-air, there's a chance we'll jump off the pad and maybe even enter flight
execute if score @s botMoveState matches 1..2 run function phan:bots/items/7_speed_pad/consider_flying_after_boost

#do the thing
function phan:items/use/super_speed_pad