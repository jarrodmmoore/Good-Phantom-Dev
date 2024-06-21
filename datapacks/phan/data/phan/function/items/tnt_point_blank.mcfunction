#is there a player in range who does NOT have our idea? try to hit them
scoreboard players operation #checkID value = @s playerID
scoreboard players set #test value 0
execute as @e[tag=tntCanHit,distance=..5] unless score @s playerID = #checkID value run scoreboard players set #test value 1
execute as @e[tag=tntCanHit,distance=..4] unless score @s playerID = #checkID value run scoreboard players set #test value 2
execute as @e[tag=tntCanHit,distance=..3] unless score @s playerID = #checkID value run scoreboard players set #test value 3
execute if score #test value matches 1 run scoreboard players add @s age 5
execute if score #test value matches 2 run scoreboard players add @s age 12
execute if score #test value matches 3 run scoreboard players add @s age 100