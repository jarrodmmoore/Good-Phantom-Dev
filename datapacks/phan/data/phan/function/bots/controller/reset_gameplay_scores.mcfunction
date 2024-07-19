#state tags
tag @s remove botDisabled
tag @s remove finished

#generic stuff
scoreboard players set @s energy 0

#game variables
scoreboard players set @s check -1
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