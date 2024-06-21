#intitial load teleport
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run tp @s 3004 82 0 0 0
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run scoreboard players set @s soulAngle 2

execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run tp @s 3280 68 172 180 0
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run scoreboard players set @s soulAngle 0

execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run tp @s 3274 105 -4 180 0
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run scoreboard players set @s soulAngle 3

#"Go!" teleport location
execute if score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run tp @s 3004 77 0 0 0
execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run tp @s 3280 62 172 180 0
execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run tp @s 3274 100 -4 180 0

#if we run this function, unlock the act we're playing in the Free Play menu
execute if score @s pCurrentArea matches ..1 run scoreboard players set #d4a1Unlocked value 1
execute if score @s pCurrentArea matches 2 run scoreboard players set #d4a2Unlocked value 1
execute if score @s pCurrentArea matches 3.. run scoreboard players set #d4a3Unlocked value 1