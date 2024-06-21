scoreboard players add @s age 1

#don't use vanilla explosions! they will destroy everything and everyone we care about
data merge entity @s {fuse:10000}

#visuals
particle large_smoke ~ ~ ~ .05 .05 .05 .01 1 force
#glowing is given on the second tick so the client will stop eating its own boogers and render the tnt where it actually is
execute if entity @s[scores={age=2}] run team join colorRed
execute if entity @s[scores={age=2}] run data merge entity @s {Glowing:1}

#explode faster if there are players nearby
#also try to explode on direct impact
execute if entity @s[scores={age=..9}] at @s if entity @e[tag=tntCanHit,distance=..5] run function phan:items/tnt_point_blank
execute if entity @s[scores={age=10..}] at @s if entity @e[tag=tntCanHit,distance=..5] run scoreboard players add @s age 5
execute if entity @s[scores={age=10..}] at @s if entity @e[tag=tntCanHit,distance=..4] run scoreboard players add @s age 12
execute if entity @s[scores={age=10..}] at @s if entity @e[tag=tntCanHit,distance=..3] run scoreboard players add @s age 100

#explode when age reaches 100
#execute if entity @s[scores={age=100..}] at @s if entity @a[gamemode=adventure,scores={fallFlying=1},distance=..3] at @a[limit=1,sort=nearest,gamemode=adventure,scores={fallFlying=1},distance=..3] positioned ^ ^ ^-.2 run tp @s ~ ~ ~
execute if entity @s[tag=!enemyTNT,scores={age=100..}] at @s run function phan:items/generic_explode_friendly
execute if entity @s[tag=enemyTNT,scores={age=100..}] at @s run function phan:items/generic_explode
kill @s[scores={age=100..}]