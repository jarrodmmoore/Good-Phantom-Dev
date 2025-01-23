#player remembers the last 10 rings they went through in 2 separate areas. (so that's up to 20 total)
#if they try to go through a ring who's ID already exists in their lists, they can't collect it
#note: one of these lists (A or B) gets reset when the player hits a checkpoint

execute if score @s hitRing1a = #thisRingID value run return 0
execute if score @s hitRing2a = #thisRingID value run return 0
execute if score @s hitRing3a = #thisRingID value run return 0
execute if score @s hitRing4a = #thisRingID value run return 0
execute if score @s hitRing5a = #thisRingID value run return 0
execute if score @s hitRing6a = #thisRingID value run return 0
execute if score @s hitRing7a = #thisRingID value run return 0
execute if score @s hitRing8a = #thisRingID value run return 0
execute if score @s hitRing9a = #thisRingID value run return 0
execute if score @s hitRing10a = #thisRingID value run return 0

execute if score @s hitRing1b = #thisRingID value run return 0
execute if score @s hitRing2b = #thisRingID value run return 0
execute if score @s hitRing3b = #thisRingID value run return 0
execute if score @s hitRing4b = #thisRingID value run return 0
execute if score @s hitRing5b = #thisRingID value run return 0
execute if score @s hitRing6b = #thisRingID value run return 0
execute if score @s hitRing7b = #thisRingID value run return 0
execute if score @s hitRing8b = #thisRingID value run return 0
execute if score @s hitRing9b = #thisRingID value run return 0
execute if score @s hitRing10b = #thisRingID value run return 0



#if we made it this far, we should collect the ring and record its id
function phan:game/4/objects/ring_record_collected

#get energy and play sound
execute if score #ringBoost value matches ..0 run scoreboard players add @s[scores={energy=..17}] energy 1
#scoreboard players add @s[scores={energy=..17}] energy 1
#scoreboard players add @s[scores={energy=..17}] energy 1
function phan:player/tell_spectators
execute if score @s combo matches ..0 at @s run playsound minecraft:custom_sfx/nights master @a[tag=tellMe] ~ ~ ~ 2.5 1
execute if score @s combo matches 1 at @s run playsound minecraft:custom_sfx/nights master @a[tag=tellMe] ~ ~ ~ 2.5 1.5
execute if score @s combo matches 2 at @s run playsound minecraft:custom_sfx/nights master @a[tag=tellMe] ~ ~ ~ 2.5 1.25
execute if score @s combo matches 3 at @s run playsound minecraft:custom_sfx/nights master @a[tag=tellMe] ~ ~ ~ 2.5 1.8
execute if score @s combo matches 4.. at @s run playsound minecraft:custom_sfx/nights master @a[tag=tellMe] ~ ~ ~ 2.5 2
function phan:game/1/player/count_combo
scoreboard players add @s[type=player] addScore 1

#ring boost
execute if score #ringBoost value matches 1.. at @s run function phan:game/1/player/ring_boost