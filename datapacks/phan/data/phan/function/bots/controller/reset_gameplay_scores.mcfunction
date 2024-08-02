#state tags
tag @s[type=block_display] remove botDisabled
tag @s remove finished
tag @s remove botHasSpawnpoint

#generic stuff
scoreboard players set @s energy 0

#game variables
scoreboard players set @s check -1
scoreboard players set @s botRememberCP -1
scoreboard players set @s botTimeSinceCP -999999
scoreboard players set @s checkFake -1
scoreboard players set @s enderEyes 0
scoreboard players set @s lap 0
#note if lap=0, then we try to send the bot to a player start node if they don't exist
scoreboard players set @s finishPos -1
scoreboard players set @s startGrid -1
scoreboard players set @s rawTime 0
scoreboard players set @s KOs 0
scoreboard players set @s deathsSinceKO 0
tag @s[tag=vsHomeStretch] remove vsHomeStretch
scoreboard players set @s itemLuck 1
scoreboard players set @s timeBehind1st 0
scoreboard players set @s timeInFirst 0

#fallback respawn coordinates are the log cabin in the overworld (chosen because it's in the spawn chunks)
scoreboard players set @s vsRespawnX 198
scoreboard players set @s vsRespawnY -7
scoreboard players set @s vsRespawnZ 118
scoreboard players set @s vsRespawnYaw 0
scoreboard players set @s vsRespawnDimension 1
scoreboard players set @s vsRespawnLaunch 0
tag @s remove botNeedMarkerToRespawn
tag @s remove botEntityMissing

#addpoints
scoreboard players set @s vsAddPoints 0

#ring stuff
scoreboard players set @s ringID 0
scoreboard players set @s hitRingA_head 0
scoreboard players set @s hitRingB_head 0
scoreboard players reset @s hitRing1a
scoreboard players reset @s hitRing2a
scoreboard players reset @s hitRing3a
scoreboard players reset @s hitRing4a
scoreboard players reset @s hitRing5a
scoreboard players reset @s hitRing6a
scoreboard players reset @s hitRing7a
scoreboard players reset @s hitRing8a
scoreboard players reset @s hitRing9a
scoreboard players reset @s hitRing10a
scoreboard players reset @s hitRing1b
scoreboard players reset @s hitRing2b
scoreboard players reset @s hitRing3b
scoreboard players reset @s hitRing4b
scoreboard players reset @s hitRing5b
scoreboard players reset @s hitRing6b
scoreboard players reset @s hitRing7b
scoreboard players reset @s hitRing8b
scoreboard players reset @s hitRing9b
scoreboard players reset @s hitRing10b

#item box stuff
scoreboard players set @s boxID 0
scoreboard players set @s hitBoxA_head 0
scoreboard players set @s hitBoxB_head 0
scoreboard players reset @s hitBox1a
scoreboard players reset @s hitBox2a
scoreboard players reset @s hitBox3a
scoreboard players reset @s hitBox4a
scoreboard players reset @s hitBox5a
scoreboard players reset @s hitBox1b
scoreboard players reset @s hitBox2b
scoreboard players reset @s hitBox3b
scoreboard players reset @s hitBox4b
scoreboard players reset @s hitBox5b

#reset info on previous items we recieved (on each individual player)
scoreboard players set @a lastItemPicked 0
scoreboard players set @a picksSinceSpeed 100
scoreboard players set @a picksSinceBigSpeed 0
scoreboard players set @a picksSinceOffense 100
scoreboard players set @a picksSinceTrap 100
scoreboard players set @a picksSinceGlobal 100
scoreboard players set @a picksSinceUtility 100

#items
function phan:bots/clear_inventory