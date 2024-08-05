#clean up tag
tag @s remove botSetMineAtNextWaypoint

#do nothing if we have no item or are one input cooldown
execute if score @s botHasItem13 matches ..0 if score @s botHasItem18 matches ..0 run return 0
execute if score @s inputCooldown matches 1.. run return 0

#=====

#use a mine/trapped chest if we got one
execute if entity @s[scores={botHasItem18=1..}] run return run function phan:bots/items/18_trapped_chest/use
execute if entity @s[scores={botHasItem13=1..}] run return run function phan:bots/items/13_mine/use