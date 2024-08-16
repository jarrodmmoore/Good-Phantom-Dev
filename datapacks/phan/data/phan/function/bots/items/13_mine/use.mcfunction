#other players' enderman thief can intercept the item!
scoreboard players set @s botHoldingItem 13
scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run return 0
#=====

#consume item
scoreboard players remove @s botHasItem13 1
#update held item
execute if score @s botHasItem13 matches 1.. run scoreboard players set @s botHoldingItem 13
execute if score @s botHasItem13 matches ..0 run scoreboard players set @s botHoldingItem 0
#tell controller our inventory changed
tag @s add hasDataToSend

#hard+ bot: put away mine after using it once
execute if score @s botSkill matches 4.. run scoreboard players set @s botHoldingItem 0
#=====

#do the thing
function phan:items/use/mine