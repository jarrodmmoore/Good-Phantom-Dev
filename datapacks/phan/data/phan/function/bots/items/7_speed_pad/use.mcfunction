#other players' enderman thief can intercept the item!
scoreboard players set @s botHoldingItem 7
scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run return 0
#=====

#consume item
scoreboard players remove @s botHasItem7 1
#update held item
execute if score @s botHasItem7 matches 1.. run scoreboard players set @s botHoldingItem 7
execute if score @s botHasItem7 matches ..0 run scoreboard players set @s botHoldingItem 0
#tell controller our inventory changed
tag @s add hasDataToSend
#=====

#using speed pad cancels flight
function phan:bots/movement/cancel_flight

#if in mid-air, there's a chance we'll jump off the pad and maybe even enter flight
execute if score @s botMoveState matches 1..2 run function phan:bots/items/7_speed_pad/consider_flying_after_boost

#do the thing
function phan:items/use/speed_pad

#delayed jump
execute if entity @s[tag=botDelayPadJump] run function phan:bots/movement/jump/_jump_index
tag @s remove botDelayPadJump