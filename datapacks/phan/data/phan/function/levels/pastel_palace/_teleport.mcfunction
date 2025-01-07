#old, de-referenced

#initial load teleport
#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run tp @s 993 110 1 180 0
#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run scoreboard players set @s soulAngle 0

#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run tp @s 1059 99 82 180 0
#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run scoreboard players set @s soulAngle 0

#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run tp @s 1138 99 48 180 0
#execute unless score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run scoreboard players set @s soulAngle 2

#"Go!" teleport location
#execute if score #teleportStart value matches 1 if score @s pCurrentArea matches ..1 run tp @s 994 100 0 90 0
#execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 2 run tp @s 1057 97 78 90 0
#execute if score #teleportStart value matches 1 if score @s pCurrentArea matches 3.. run tp @s 1138 97 52 180 0

#if we run this function, unlock the act we're playing in the Free Play menu
#execute if score @s pCurrentArea matches ..1 run scoreboard players set #d1a1Unlocked value 1
#execute if score @s pCurrentArea matches 2 run scoreboard players set #d1a2Unlocked value 1
#execute if score @s pCurrentArea matches 3.. run scoreboard players set #d1a3Unlocked value 1