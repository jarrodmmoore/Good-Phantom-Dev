execute if score #botHasSpawnpoint dataTransfer matches 0 run tag @s remove botHasSpawnpoint
execute if score #botHasSpawnpoint dataTransfer matches 1 run tag @s add botHasSpawnpoint

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
scoreboard players operation @s vsRespawnLaunch = #vsRespawnLaunch dataTransfer

scoreboard players operation @s ringID = #ringID dataTransfer
scoreboard players operation @s hitRingA_head = #hitRingA_head dataTransfer
scoreboard players operation @s hitRingB_head = #hitRingB_head dataTransfer
scoreboard players operation @s hitRing1a = #hitRing1a dataTransfer
scoreboard players operation @s hitRing2a = #hitRing2a dataTransfer
scoreboard players operation @s hitRing3a = #hitRing3a dataTransfer
scoreboard players operation @s hitRing4a = #hitRing4a dataTransfer
scoreboard players operation @s hitRing5a = #hitRing5a dataTransfer
scoreboard players operation @s hitRing6a = #hitRing6a dataTransfer
scoreboard players operation @s hitRing7a = #hitRing7a dataTransfer
scoreboard players operation @s hitRing8a = #hitRing8a dataTransfer
scoreboard players operation @s hitRing9a = #hitRing9a dataTransfer
scoreboard players operation @s hitRing10a = #hitRing10a dataTransfer
scoreboard players operation @s hitRing1b = #hitRing1b dataTransfer
scoreboard players operation @s hitRing2b = #hitRing2b dataTransfer
scoreboard players operation @s hitRing3b = #hitRing3b dataTransfer
scoreboard players operation @s hitRing4b = #hitRing4b dataTransfer
scoreboard players operation @s hitRing5b = #hitRing5b dataTransfer
scoreboard players operation @s hitRing6b = #hitRing6b dataTransfer
scoreboard players operation @s hitRing7b = #hitRing7b dataTransfer
scoreboard players operation @s hitRing8b = #hitRing8b dataTransfer
scoreboard players operation @s hitRing9b = #hitRing9b dataTransfer
scoreboard players operation @s hitRing10b = #hitRing10b dataTransfer

scoreboard players operation @s boxID = #boxID dataTransfer
scoreboard players operation @s hitBoxA_head = #hitBoxA_head dataTransfer
scoreboard players operation @s hitBoxB_head = #hitBoxB_head dataTransfer
scoreboard players operation @s hitBox1a = #hitBox1a dataTransfer
scoreboard players operation @s hitBox2a = #hitBox2a dataTransfer
scoreboard players operation @s hitBox3a = #hitBox3a dataTransfer
scoreboard players operation @s hitBox4a = #hitBox4a dataTransfer
scoreboard players operation @s hitBox5a = #hitBox5a dataTransfer
scoreboard players operation @s hitBox1b = #hitBox1b dataTransfer
scoreboard players operation @s hitBox2b = #hitBox2b dataTransfer
scoreboard players operation @s hitBox3b = #hitBox3b dataTransfer
scoreboard players operation @s hitBox4b = #hitBox4b dataTransfer
scoreboard players operation @s hitBox5b = #hitBox5b dataTransfer

scoreboard players operation @s lastItemPicked = #lastItemPicked dataTransfer
scoreboard players operation @s picksSinceSpeed = #picksSinceSpeed dataTransfer
scoreboard players operation @s picksSinceBigSpeed = #picksSinceBigSpeed dataTransfer
scoreboard players operation @s picksSinceOffense = #picksSinceOffense dataTransfer
scoreboard players operation @s picksSinceTrap = #picksSinceTrap dataTransfer
scoreboard players operation @s picksSinceGlobal = #picksSinceGlobal dataTransfer
scoreboard players operation @s picksSinceUtility = #picksSinceUtility dataTransfer

scoreboard players operation @s botHasItem1 = #botHasItem1 dataTransfer
scoreboard players operation @s botHasItem2 = #botHasItem2 dataTransfer
scoreboard players operation @s botHasItem3 = #botHasItem3 dataTransfer
scoreboard players operation @s botHasItem4 = #botHasItem4 dataTransfer
scoreboard players operation @s botHasItem5 = #botHasItem5 dataTransfer
scoreboard players operation @s botHasItem6 = #botHasItem6 dataTransfer
scoreboard players operation @s botHasItem7 = #botHasItem7 dataTransfer
scoreboard players operation @s botHasItem8 = #botHasItem8 dataTransfer
scoreboard players operation @s botHasItem9 = #botHasItem9 dataTransfer
scoreboard players operation @s botHasItem10 = #botHasItem10 dataTransfer
scoreboard players operation @s botHasItem11 = #botHasItem11 dataTransfer
scoreboard players operation @s botHasItem12 = #botHasItem12 dataTransfer
scoreboard players operation @s botHasItem13 = #botHasItem13 dataTransfer
scoreboard players operation @s botHasItem14 = #botHasItem14 dataTransfer
scoreboard players operation @s botHasItem15 = #botHasItem15 dataTransfer
scoreboard players operation @s botHasItem16 = #botHasItem16 dataTransfer
scoreboard players operation @s botHasItem17 = #botHasItem17 dataTransfer
scoreboard players operation @s botHasItem18 = #botHasItem18 dataTransfer
scoreboard players operation @s botHasItem19 = #botHasItem19 dataTransfer

#bots checks if it's on the final lap
execute if entity @s[tag=ai] run function phan:bots/race/determine_if_on_final_lap

#bot gets launched?
execute if score #test1 dataTransfer matches 1.. run function phan:bots/movement/bot_get_respawn_launch