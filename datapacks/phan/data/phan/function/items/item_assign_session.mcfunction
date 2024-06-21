tag @s add itemAssignSession
tag @s add stay
scoreboard players set @s itemValidSpawn 1

#while we're here: grab the playerID of our owner
scoreboard players set #getID value 0
execute on origin run scoreboard players operation #getID value = @s playerID
scoreboard players operation @s playerID = #getID value

#tag ourselves if we have groundDeploy behavior (we'll do this here instead of checking repeatedly...)
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @s add groundDeploy