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
execute if score #enderEyes value matches ..6 positioned ~ ~ ~ if block ~ ~ ~ #phan:not_solid run function phan:game/4/spawning/drop_eye_on_death
#drop more eyes if we have a lot (and lose them from inventory)
execute if score #enderEyes value matches 7.. positioned ~.5 ~ ~ if block ~ ~ ~ #phan:not_solid run function phan:game/4/spawning/drop_eye_on_death
execute if score #enderEyes value matches 13.. positioned ~-.25 ~ ~.4 if block ~ ~ ~ #phan:not_solid run function phan:game/4/spawning/drop_eye_on_death
execute if score #enderEyes value matches 19.. positioned ~-.25 ~ ~-.4 if block ~ ~ ~ #phan:not_solid run function phan:game/4/spawning/drop_eye_on_death
execute if score #enderEyes value matches 7.. run scoreboard players remove @s enderEyes 1
execute if score #enderEyes value matches 13.. run scoreboard players remove @s enderEyes 1
execute if score #enderEyes value matches 19.. run scoreboard players remove @s enderEyes 1

#die!
scoreboard players set #playerDied value 1
execute if entity @s[type=player] run function phan:game/4/battle/respawn
execute if entity @s[tag=ai] run tag @s add botRespawn