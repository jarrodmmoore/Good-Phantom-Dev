#happy particles if level complete, sad particles if not
scoreboard players set #test value 0
execute if score @s nearPlayer matches 1 if score #dream1Completed value matches 1.. run scoreboard players set #test value 1
execute if score @s nearPlayer matches 2 if score #dream2Completed value matches 1.. run scoreboard players set #test value 1
execute if score @s nearPlayer matches 3 if score #dream3Completed value matches 1.. run scoreboard players set #test value 1
execute if score @s nearPlayer matches 4 if score #dream4Completed value matches 1.. run scoreboard players set #test value 1
execute if score @s nearPlayer matches 5 if score #dream5Completed value matches 1.. run scoreboard players set #test value 1
execute if score @s nearPlayer matches 6 if score #dream6Completed value matches 1.. run scoreboard players set #test value 1
execute if score @s nearPlayer matches 7 if score #dream7Completed value matches 1.. run scoreboard players set #test value 1
execute if score @s nearPlayer matches 8 if score #dream8Completed value matches 1.. run scoreboard players set #test value 1
execute if score @s nearPlayer matches 9 if score #dream9Completed value matches 1.. run scoreboard players set #test value 1
execute if score @s nearPlayer matches 10 if score #dream10Completed value matches 1.. run scoreboard players set #test value 1
#custom dreams always happy
execute if score @s nearPlayer matches 1000.. run scoreboard players set #test value 2

#happy
execute if score #test value matches 1 run particle happy_villager ~ ~2.2 ~ 0.16 0.1 0.16 1 2 force @a[distance=4..10]
execute if score #test value matches 1 run tag @s[tag=!happySleep] add happySleep

#sad
execute if score #test value matches 0 run particle angry_villager ~ ~1.5 ~ 0.16 0.1 0.16 1 1 force @a[distance=4..10]