#other players' enderman thief can intercept the item!
scoreboard players set @s botHoldingItem 5
scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run return 0
#=====

#consume item
scoreboard players remove @s botHasItem5 1
#update held item
execute if score @s botHasItem5 matches 1.. run scoreboard players set @s botHoldingItem 5
execute if score @s botHasItem5 matches ..0 run scoreboard players set @s botHoldingItem 0
#tell controller our inventory changed
tag @s add hasDataToSend
#=====

#do the thing
function phan:items/use/swiftness_potion