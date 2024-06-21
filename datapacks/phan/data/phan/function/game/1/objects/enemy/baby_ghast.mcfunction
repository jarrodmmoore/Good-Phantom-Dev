#editArg1 tracks whether we're aggro or not
#editArg2 is shoot cooldown
#editArg3 controls facial expression

#use the "age" variable to check LOS to player every few ticks
scoreboard players add @s age 1
execute if score @s age matches 10.. if entity @s[tag=!declawed] run function phan:game/1/objects/enemy/baby_ghast_check_los

#targeting a player? run aggro code
execute if score @s editArg1 matches 1 run function phan:game/1/objects/enemy/baby_ghast_aggro

#otherwise be normal
execute unless score @s editArg1 matches 1 run function phan:game/1/objects/enemy/baby_ghast_neutral

#facial expressions
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
execute if score @s editArg3 matches 1 run function phan:game/1/objects/enemy/baby_ghast_facial_angry
execute if score @s editArg3 matches 10 run function phan:game/1/objects/enemy/baby_ghast_facial_normal

#animate the legs properly
execute at @s rotated ~ 0 on passengers if entity @s[tag=babyGhastLegs] run function phan:game/1/objects/enemy/baby_ghast_legs