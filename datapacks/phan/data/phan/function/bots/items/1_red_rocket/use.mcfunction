#other players' enderman thief can intercept the item!
scoreboard players set @s botHoldingItem 1
scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run return 0
#=====

#consume item
scoreboard players remove @s botHasItem1 1
#update held item
execute if score @s botHasItem1 matches 1.. run scoreboard players set @s botHoldingItem 1
execute if score @s botHasItem1 matches ..0 run scoreboard players set @s botHoldingItem 0
#tell controller our inventory changed
tag @s add hasDataToSend
#=====

#face the direction we're shooting in for a second
scoreboard players set #setTime value 12
function phan:bots/movement/face_direction_temporarily

#do the thing
function phan:items/use/red_rocket