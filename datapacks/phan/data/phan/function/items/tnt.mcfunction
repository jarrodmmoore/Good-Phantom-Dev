scoreboard players add @s age 1

#bots will start noticing the tnt after a few ticks
execute if score @s age matches 10 run function phan:items/tnt_bot_recogntion_setup

#get a unique ID (for bot temporary target system)
scoreboard players add #uniqieBoxID value 1
execute if score #uniqieBoxID value matches 0 run scoreboard players add #uniqieBoxID value 1
scoreboard players operation @e[tag=setMe,type=item_display,distance=..4] ringID = #uniqieBoxID value

#don't use vanilla explosions! they will destroy everything and everyone we care about
data merge entity @s {fuse:10000}

#visuals
particle large_smoke ~ ~ ~ .05 .05 .05 .01 1 force
#glowing is given on the second tick so the client will stop eating its own boogers and render the tnt where it actually is
execute if entity @s[scores={age=2}] run team join colorRed
execute if entity @s[scores={age=2}] run data merge entity @s {Glowing:1b}

#explode faster if there are players nearby
#also try to explode on direct impact
execute if entity @s[scores={age=2..9}] at @s if entity @e[tag=tntCanHit,distance=..5] run function phan:items/tnt_point_blank
execute if entity @s[scores={age=10..}] at @s if entity @e[tag=tntCanHit,distance=..5] run scoreboard players add @s age 5
execute if entity @s[scores={age=10..}] at @s if entity @e[tag=tntCanHit,distance=..4] run scoreboard players add @s age 12
execute if entity @s[scores={age=10..}] at @s if entity @e[tag=tntCanHit,distance=..3] run scoreboard players add @s age 100

#explode when age reaches 100
execute if entity @s[tag=!enemyTNT,scores={age=100..}] at @s run function phan:items/generic_explode_friendly
execute if entity @s[tag=enemyTNT,scores={age=100..}] at @s run function phan:items/generic_explode
kill @s[scores={age=100..}]