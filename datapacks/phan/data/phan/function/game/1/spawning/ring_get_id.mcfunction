scoreboard players add #ringID value 1
execute if score #ringID value matches ..0 run scoreboard players set #ringID value 1
scoreboard players operation @s ringID = #ringID value