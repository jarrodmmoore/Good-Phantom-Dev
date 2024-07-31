#don't do anything if we're afraid of enderman stealing our protection
execute if score #botFearsEnderman value matches 1.. run return 0
#bot will just wait and hope somebody screws up and triggers the enderman so it can eventually use item to stop the anvil


#third best option: use ender pearl
execute if score @s botHasItem15 matches 1.. run scoreboard players set @s botHoldingItem 15
execute if score @s botHasItem15 matches 1.. run tag @s add botUseItemSoon

#second best option: use shield
execute if score @s botHasItem19 matches 1.. run scoreboard players set @s botHoldingItem 19
execute if score @s botHasItem19 matches 1.. run tag @s add botUseItemSoon

#best option: use sonic blast
execute if score @s botHasItem12 matches 1.. run scoreboard players set @s botHoldingItem 12
execute if score @s botHasItem12 matches 1.. run tag @s add botUseItemSoon