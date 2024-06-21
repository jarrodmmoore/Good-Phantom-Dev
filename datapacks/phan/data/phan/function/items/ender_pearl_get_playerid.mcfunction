scoreboard players set #getID value -1
execute on origin run scoreboard players operation #getID value = @s playerID
execute if score #getID value matches 1.. run scoreboard players operation @s playerID = #getID value