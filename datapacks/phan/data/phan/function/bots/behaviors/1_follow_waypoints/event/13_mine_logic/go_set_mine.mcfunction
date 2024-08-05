#deny if we don't have a mine or trapped chest
execute if score @s botHasItem13 matches ..0 if score @s botHasItem18 matches ..0 run return 0

#deny if we're afraid of enderman
execute if score @s botFearsEnderman matches 1.. run return 0

#=====

#don't use boost or any other items for a second
scoreboard players set @s[scores={botItemThinkTime=..59}] botItemThinkTime 60
scoreboard players set @s[scores={botBoostThinkTime=..59}] botBoostThinkTime 60

#set mine next time we collect a waypoint
tag @s add botSetMineAtNextWaypoint

#take alt route
scoreboard players set #botChoseAltRoute value 1