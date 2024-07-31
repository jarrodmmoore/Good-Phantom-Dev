#other players' enderman thief can intercept the item!
scoreboard players set @s botHoldingItem 14
scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run return 0
#=====

#consume item
scoreboard players remove @s botHasItem14 1
#update held item
execute if score @s botHasItem14 matches 1.. run scoreboard players set @s botHoldingItem 14
execute if score @s botHasItem14 matches ..0 run scoreboard players set @s botHoldingItem 0
#tell controller our inventory changed
tag @s add hasDataToSend
#=====

#cancel flight if we're gliding
execute if function phan:bots/movement/check_for_vehicle run function phan:bots/movement/cancel_flight

#do the thing
function phan:items/use/warp

#target nearest waypoint
tag @s add botTargetNearestWP