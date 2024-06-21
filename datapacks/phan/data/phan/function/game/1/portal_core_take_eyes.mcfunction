scoreboard players add @s enderEyes 0

#only take what we NEED
scoreboard players operation #takePearls value = #pearlsNeeded value
scoreboard players operation #takePearls value -= @s enderEyes

#remember the last person to fill the portal in
tag @a[tag=lastDonor] remove lastDonor
tag @a[limit=1,tag=playing,gamemode=adventure,distance=..8,scores={enderEyes=1..}] add lastDonor
scoreboard players operation @s playerID = @a[tag=lastDonor] playerID

#take the pearl
scoreboard players remove @a[limit=1,tag=playing,gamemode=adventure,distance=..8,scores={enderEyes=1..}] enderEyes 1
scoreboard players add @s enderEyes 1

#recursion until we've taken everything we need & can have
execute if score #takePearls value matches 2.. if entity @a[limit=1,tag=playing,gamemode=adventure,distance=..8,scores={enderEyes=1..}] run function phan:game/1/portal_core_take_eyes


#advancement for finishing portal in deep dive 1 without using the teleporter
execute if score #chosenLevel value matches 5 if score #assist_enabled value matches 0 if score #takePearls value matches ..1 run advancement grant @a[tag=lastDonor,scores={pCurrentArea=1,teleportersUsed=..0}] only phan:good_phantom/one_and_done