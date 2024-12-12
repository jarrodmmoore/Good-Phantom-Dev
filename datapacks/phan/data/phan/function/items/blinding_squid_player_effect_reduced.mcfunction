scoreboard players set @s[scores={squidBlindTime=20..}] squidBlindTime 19

#blindness effect
#execute if score @s squidBlindTime matches 20.. run effect give @s blindness 5 14 false
#execute if score @s squidBlindTime matches 19 run effect clear @s blindness
#execute if score @s squidBlindTime matches 19 run effect give @s blindness 1 20 false
#execute if score @s squidBlindTime matches ..-30 run effect clear @s blindness

#clear darkness earlier

#done
execute if score @s squidBlindTime matches ..-30 run scoreboard players reset @s squidBlindTime