#deny if we don't have a shield active or in our inventory
execute if score @s botHasItem19 matches ..0 unless score @s shieldTime matches 61.. run return 0

#=====

#use shield ASAP if we don't have one active
execute unless score @s shieldTime matches 61.. run scoreboard players set @s botItemThinkTime 0
execute unless score @s shieldTime matches 61.. run scoreboard players set @s botHoldingItem 19
execute unless score @s shieldTime matches 61.. run tag @s add botUseItemSoon

#don't boost for 3 seconds
scoreboard players set @s botBoostThinkTime 60

#prepare to mine boost
scoreboard players set @s botPreparedToBoostTrap 100

#take alt route
scoreboard players set #botChoseAltRoute value 1