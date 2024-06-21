#intitial load teleport
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 in minecraft:the_end run tp @s 1721 94 2227 0 0
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run scoreboard players set @s soulAngle 1

execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 in minecraft:the_end run tp @s 1856 95 2387 90 0
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run scoreboard players set @s soulAngle 2

execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. in minecraft:the_end run tp @s 1472 127 2264 135 0
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run scoreboard players set @s soulAngle 3

#"Go!" teleport location
execute if score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 in minecraft:the_end run tp @s 1721 85 2227 180 0
execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 2 in minecraft:the_end run tp @s 1878 93 2388 90 0
execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. in minecraft:the_end run tp @s 1472 121 2264 135 -15

#if we run this function, unlock the act we're playing in the Free Play menu
execute if score @s pCurrentArea matches ..1 run scoreboard players set #d3a1Unlocked value 1
execute if score @s pCurrentArea matches 2 run scoreboard players set #d3a2Unlocked value 1
execute if score @s pCurrentArea matches 3.. run scoreboard players set #d3a3Unlocked value 1