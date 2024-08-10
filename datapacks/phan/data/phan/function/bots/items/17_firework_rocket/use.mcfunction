#other players' enderman thief can intercept the item!
scoreboard players set @s botHoldingItem 17
scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run return 0
#=====

#consume item
scoreboard players remove @s botHasItem17 1
#update held item
execute if score @s botHasItem17 matches 1.. run scoreboard players set @s botHoldingItem 17
execute if score @s botHasItem17 matches ..0 run scoreboard players set @s botHoldingItem 0
#tell controller our inventory changed
tag @s add hasDataToSend
#=====

#bots have their own special code for using a firework rocket

#feedback
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 3 1
particle firework ~ ~1 ~ .6 .6 .6 .1 20

#have particles and aim upwards for a little bit
scoreboard players set @s botFireworkTime 35

#get boost!
function phan:bots/items/17_firework_rocket/boost_velocity


#cooldown
scoreboard players set @s inputCooldown 10