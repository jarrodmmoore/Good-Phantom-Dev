#scoreboard players operation #setID value = @s playerID
data modify storage phan:uuid_storage uuid set from entity @s UUID
scoreboard players operation #test1 value = @s checkFake
scoreboard players operation #test2 value = @s lap
execute store result score #test3 value run execute if entity @s[tag=vsHomeStretch]

execute summon interaction run function phan:game/4/race/summon_pos_marker_entity