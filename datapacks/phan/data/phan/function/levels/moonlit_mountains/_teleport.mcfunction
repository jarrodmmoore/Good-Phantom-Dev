#initial load teleport
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run tp @s 1980 56 14 0 0
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run scoreboard players set @s soulAngle 0

execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run tp @s 1874 59 45 0 0
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run scoreboard players set @s soulAngle 1

execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run tp @s 1979 56 -46 180 0
execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run scoreboard players set @s soulAngle 0

#"Go!" teleport location
execute if score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run tp @s 1980 46 14 0 0
execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run tp @s 1874 50 45 90 0
execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run tp @s 1980 46 -40 180 0

#if we run this function, unlock the act we're playing in the Free Play menu
execute if score @s pCurrentArea matches ..1 run scoreboard players set #d2a1Unlocked value 1
execute if score @s pCurrentArea matches 2 run scoreboard players set #d2a2Unlocked value 1
execute if score @s pCurrentArea matches 3.. run scoreboard players set #d2a3Unlocked value 1