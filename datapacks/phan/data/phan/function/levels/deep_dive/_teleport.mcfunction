#old, de-referenced

#initial load teleport
#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run tp @s 3999 290 102 180 0
#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run scoreboard players set @s soulAngle 2

#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run tp @s 4045 -10 1 270 0
#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run scoreboard players set @s soulAngle 13

#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run tp @s 4235 15 -36 180 0
#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run scoreboard players set @s soulAngle 12

#"Go!" teleport location
#execute if score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run tp @s 3999 287 100 180 0
#execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run tp @s 4045 -14 1 270 0
#execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run tp @s 4235 11 -36 180 0

#if we run this function, unlock the act we're playing in the Free Play menu
#execute if score @s pCurrentArea matches ..1 run scoreboard players set #d5a1Unlocked value 1
#execute if score @s pCurrentArea matches 2 run scoreboard players set #d5a2Unlocked value 1
#execute if score @s pCurrentArea matches 3.. run scoreboard players set #d5a3Unlocked value 1