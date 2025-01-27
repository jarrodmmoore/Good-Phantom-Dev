#best best option: use boost
execute if score #vGameType value matches 1 if score @s energy matches 3.. run tag @s add botUseBoostSoon
execute if score #vGameType value matches 1 if score @s energy matches 3.. run tag @s remove botFlightPanic

#don't do anything if we're afraid of enderman stealing our protection
execute if score @s botFearsEnderman matches 1.. run return 0
#bot will just wait and hope somebody screws up and triggers the enderman so it can eventually use item to stop the anvil
#=====


#fourth best option: use ender pearl
execute if score @s botHasItem15 matches 1.. run scoreboard players set @s botHoldingItem 15
execute if score @s botHasItem15 matches 1.. run tag @s add botUseItemSoon

#third best option: speed pad
execute if score @s botHasItem7 matches 1.. run scoreboard players set @s botHoldingItem 7
execute if score @s botHasItem7 matches 1.. run tag @s add botUseItemSoon

#second best option: diamond speed pad
execute if score @s botHasItem8 matches 1.. run scoreboard players set @s botHoldingItem 8
execute if score @s botHasItem8 matches 1.. run tag @s add botUseItemSoon

#use firework (CUT, because it almost always results in the bot doing it poorly)
#execute if score @s botHasItem17 matches 1.. run scoreboard players set @s botHoldingItem 17
#execute if score @s botHasItem17 matches 1.. run tag @s add botUseItemSoon