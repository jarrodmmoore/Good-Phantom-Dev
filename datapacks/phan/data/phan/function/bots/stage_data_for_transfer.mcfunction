scoreboard players operation #energy dataTransfer = @s energy

scoreboard players operation #check dataTransfer = @s check
scoreboard players operation #checkFake dataTransfer = @s checkFake
scoreboard players operation #enderEyes dataTransfer = @s enderEyes
scoreboard players operation #lap dataTransfer = @s lap

scoreboard players operation #finishPos dataTransfer = @s finishPos
scoreboard players operation #startGrid dataTransfer = @s startGrid
scoreboard players operation #rawTime dataTransfer = @s rawTime
scoreboard players operation #KOs dataTransfer = @s KOs
scoreboard players operation #deathsSinceKO dataTransfer = @s deathsSinceKO
execute store result score #vsHomeStretch dataTransfer run execute if entity @s[tag=vsHomeStretch]
scoreboard players operation #itemLuck dataTransfer = @s itemLuck
scoreboard players operation #timeBehind1st dataTransfer = @s timeBehind1st
scoreboard players operation #timeInFirst dataTransfer = @s timeInFirst

scoreboard players operation #vsRespawnX dataTransfer = @s vsRespawnX
scoreboard players operation #vsRespawnY dataTransfer = @s vsRespawnY
scoreboard players operation #vsRespawnZ dataTransfer = @s vsRespawnZ
scoreboard players operation #vsRespawnYaw dataTransfer = @s vsRespawnYaw
scoreboard players operation #vsRespawnDimension dataTransfer = @s vsRespawnDimension


#=====
#bot entity only beyond here
execute if entity @s[tag=!ai] run return 0

#clean-up
scoreboard players set #botDataUpdate value 1
tag @s remove hasDataToSend