scoreboard players operation @s energy = #energy dataTransfer

scoreboard players operation @s check = #check dataTransfer
scoreboard players operation @s checkFake = #checkFake dataTransfer
scoreboard players operation @s enderEyes = #enderEyes dataTransfer
scoreboard players operation @s lap = #lap dataTransfer

scoreboard players operation @s finishPos = #finishPos dataTransfer
scoreboard players operation @s startGrid = #startGrid dataTransfer
scoreboard players operation @s rawTime = #rawTime dataTransfer
scoreboard players operation @s KOs = #KOs dataTransfer
scoreboard players operation @s deathsSinceKO = #deathsSinceKO dataTransfer
execute if score #vsHomeStretch dataTransfer matches 0 run tag @s remove vsHomeStretch
execute if score #vsHomeStretch dataTransfer matches 1 run tag @s add vsHomeStretch
scoreboard players operation @s itemLuck = #itemLuck dataTransfer
scoreboard players operation @s timeBehind1st = #timeBehind1st dataTransfer
scoreboard players operation @s timeInFirst = #timeInFirst dataTransfer

scoreboard players operation @s vsRespawnX = #vsRespawnX dataTransfer
scoreboard players operation @s vsRespawnY = #vsRespawnY dataTransfer
scoreboard players operation @s vsRespawnZ = #vsRespawnZ dataTransfer
scoreboard players operation @s vsRespawnYaw = #vsRespawnYaw dataTransfer
scoreboard players operation @s vsRespawnDimension = #vsRespawnDimension dataTransfer