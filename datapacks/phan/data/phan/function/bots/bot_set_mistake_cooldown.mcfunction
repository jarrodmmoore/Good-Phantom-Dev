#min: 10 sec, max: 26 seconds
execute store result score @s botMistakeCooldown run random value 9..20
scoreboard players operation @s botMistakeCooldown += @s botSkill
scoreboard players operation @s botMistakeCooldown *= #20 value