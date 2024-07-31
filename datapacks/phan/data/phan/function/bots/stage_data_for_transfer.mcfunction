execute store result score #botHasSpawnpoint dataTransfer run execute if entity @s[tag=botHasSpawnpoint]

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
scoreboard players operation #vsRespawnLaunch dataTransfer = @s vsRespawnLaunch

scoreboard players operation #ringID dataTransfer = @s ringID
scoreboard players operation #hitRingA_head dataTransfer = @s hitRingA_head
scoreboard players operation #hitRingB_head dataTransfer = @s hitRingB_head
scoreboard players operation #hitRing1a dataTransfer = @s hitRing1a
scoreboard players operation #hitRing2a dataTransfer = @s hitRing2a
scoreboard players operation #hitRing3a dataTransfer = @s hitRing3a
scoreboard players operation #hitRing4a dataTransfer = @s hitRing4a
scoreboard players operation #hitRing5a dataTransfer = @s hitRing5a
scoreboard players operation #hitRing6a dataTransfer = @s hitRing6a
scoreboard players operation #hitRing7a dataTransfer = @s hitRing7a
scoreboard players operation #hitRing8a dataTransfer = @s hitRing8a
scoreboard players operation #hitRing9a dataTransfer = @s hitRing9a
scoreboard players operation #hitRing10a dataTransfer = @s hitRing10a
scoreboard players operation #hitRing1b dataTransfer = @s hitRing1b
scoreboard players operation #hitRing2b dataTransfer = @s hitRing2b
scoreboard players operation #hitRing3b dataTransfer = @s hitRing3b
scoreboard players operation #hitRing4b dataTransfer = @s hitRing4b
scoreboard players operation #hitRing5b dataTransfer = @s hitRing5b
scoreboard players operation #hitRing6b dataTransfer = @s hitRing6b
scoreboard players operation #hitRing7b dataTransfer = @s hitRing7b
scoreboard players operation #hitRing8b dataTransfer = @s hitRing8b
scoreboard players operation #hitRing9b dataTransfer = @s hitRing9b
scoreboard players operation #hitRing10b dataTransfer = @s hitRing10b

scoreboard players operation #boxID dataTransfer = @s boxID
scoreboard players operation #hitBoxA_head dataTransfer = @s hitBoxA_head
scoreboard players operation #hitBoxB_head dataTransfer = @s hitBoxB_head
scoreboard players operation #hitBox1a dataTransfer = @s hitBox1a
scoreboard players operation #hitBox2a dataTransfer = @s hitBox2a
scoreboard players operation #hitBox3a dataTransfer = @s hitBox3a
scoreboard players operation #hitBox4a dataTransfer = @s hitBox4a
scoreboard players operation #hitBox5a dataTransfer = @s hitBox5a
scoreboard players operation #hitBox1b dataTransfer = @s hitBox1b
scoreboard players operation #hitBox2b dataTransfer = @s hitBox2b
scoreboard players operation #hitBox3b dataTransfer = @s hitBox3b
scoreboard players operation #hitBox4b dataTransfer = @s hitBox4b
scoreboard players operation #hitBox5b dataTransfer = @s hitBox5b

scoreboard players operation #lastItemPicked dataTransfer = @s lastItemPicked
scoreboard players operation #picksSinceSpeed dataTransfer = @s picksSinceSpeed
scoreboard players operation #picksSinceBigSpeed dataTransfer = @s picksSinceBigSpeed
scoreboard players operation #picksSinceOffense dataTransfer = @s picksSinceOffense
scoreboard players operation #picksSinceTrap dataTransfer = @s picksSinceTrap
scoreboard players operation #picksSinceGlobal dataTransfer = @s picksSinceGlobal
scoreboard players operation #picksSinceUtility dataTransfer = @s picksSinceUtility

scoreboard players operation #botHasItem1 dataTransfer = @s botHasItem1
scoreboard players operation #botHasItem2 dataTransfer = @s botHasItem2
scoreboard players operation #botHasItem3 dataTransfer = @s botHasItem3
scoreboard players operation #botHasItem4 dataTransfer = @s botHasItem4
scoreboard players operation #botHasItem5 dataTransfer = @s botHasItem5
scoreboard players operation #botHasItem6 dataTransfer = @s botHasItem6
scoreboard players operation #botHasItem7 dataTransfer = @s botHasItem7
scoreboard players operation #botHasItem8 dataTransfer = @s botHasItem8
scoreboard players operation #botHasItem9 dataTransfer = @s botHasItem9
scoreboard players operation #botHasItem10 dataTransfer = @s botHasItem10
scoreboard players operation #botHasItem11 dataTransfer = @s botHasItem11
scoreboard players operation #botHasItem12 dataTransfer = @s botHasItem12
scoreboard players operation #botHasItem13 dataTransfer = @s botHasItem13
scoreboard players operation #botHasItem14 dataTransfer = @s botHasItem14
scoreboard players operation #botHasItem15 dataTransfer = @s botHasItem15
scoreboard players operation #botHasItem16 dataTransfer = @s botHasItem16
scoreboard players operation #botHasItem17 dataTransfer = @s botHasItem17
scoreboard players operation #botHasItem18 dataTransfer = @s botHasItem18
scoreboard players operation #botHasItem19 dataTransfer = @s botHasItem19

#=====
#bot entity only beyond here
execute if entity @s[tag=!ai] run return 0

#clean-up
scoreboard players set #botDataUpdate value 1
tag @s remove hasDataToSend