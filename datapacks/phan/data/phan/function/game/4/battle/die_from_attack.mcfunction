#need to have been attacked by something to die!
execute unless score @s attackerID matches 1.. run return 0
execute unless score @s hurtfulTime matches 1.. run return 0

#give KO credit to attacker
function phan:items/ko_credit

#particle
execute at @s positioned ~ ~1 ~ run particle large_smoke ~ ~ ~ 0.2 0.2 0.2 0.2 7 force

#summon eyes
scoreboard players operation #enderEyes value = @s enderEyes
#guaranteed one eye dropped
execute positioned ~ ~ ~ if block ~ ~ ~ #phan:not_solid run function phan:game/4/spawning/drop_eye_on_death
execute if score #enderEyes value matches 5.. run scoreboard players remove @s enderEyes 1
#drop more eyes if we have a lot (and lose them from inventory)
execute if score #enderEyes value matches 11.. positioned ~-.25 ~ ~.4 if block ~ ~ ~ #phan:not_solid run function phan:game/4/spawning/drop_eye_on_death
execute if score #enderEyes value matches 11.. run scoreboard players remove @s enderEyes 1
execute if score #enderEyes value matches 19.. positioned ~-.25 ~ ~-.4 if block ~ ~ ~ #phan:not_solid run function phan:game/4/spawning/drop_eye_on_death
execute if score #enderEyes value matches 19.. run scoreboard players remove @s enderEyes 1

#give unique ID to the set of eyes we spawned
scoreboard players remove #uniqueEyeID value 1
execute if score #uniqueEyeID value matches 0.. run scoreboard players set #uniqueEyeID value -1
scoreboard players operation @e[type=item_display,tag=dropEyeGiveID,distance=..3] eyeSpawnerID = #uniqueEyeID value
tag @e[type=item_display,tag=dropEyeGiveID,distance=..3] remove dropEyeGiveID

#die!
scoreboard players set #playerDied value 1
execute if entity @s[type=player] run function phan:game/4/battle/respawn
tag @s[tag=ai] add hasDataToSend
execute if entity @s[tag=ai] run tag @s add botRespawn