scoreboard players set #noExplode value 0
scoreboard players operation #thisID value = @s playerID
execute if score @s playerID matches 1.. as @a[gamemode=adventure,distance=..3] if score @s playerID = #thisID value run scoreboard players set #noExplode value 1
execute if score #noExplode value matches 0 run tag @s add mineArmed