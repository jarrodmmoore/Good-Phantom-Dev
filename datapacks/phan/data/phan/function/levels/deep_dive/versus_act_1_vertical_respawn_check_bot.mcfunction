#falling down before you've hit the proper checkpoint causes reset
execute if entity @s[tag=!vsHomeStretch,scores={check=..2,location_y=150..264}] at @s run tag @s add botRespawn
execute if entity @s[tag=!vsHomeStretch,scores={check=3..4,location_y=..245}] at @s run tag @s add botRespawn
execute if entity @s[tag=!vsHomeStretch,scores={check=5..6,location_y=..215}] at @s run tag @s add botRespawn
execute if entity @s[tag=!vsHomeStretch,scores={check=7..9,location_y=..185}] at @s run tag @s add botRespawn
execute if entity @s[tag=!vsHomeStretch,scores={check=10..11,location_y=..170}] at @s run tag @s add botRespawn
execute if entity @s[tag=!vsHomeStretch,scores={check=12,location_y=..105}] at @s run tag @s add botRespawn
execute if entity @s[tag=!vsHomeStretch,scores={check=13..15,location_y=..90}] at @s run tag @s add botRespawn