#min: 13 sec, max: 35 seconds (then plus skill level multiplied by 2)
execute store result score @s botMistakeCooldown run random value 13..35
scoreboard players operation @s botMistakeCooldown += @s botSkill
scoreboard players operation @s botMistakeCooldown += @s botSkill
scoreboard players operation @s botMistakeCooldown *= #20 value
tag @s add hasDataToSend