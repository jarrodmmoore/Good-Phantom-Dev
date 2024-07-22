#roll a random number. bot skill and item luck boosts the number
execute store result score #random value run random value -5..6
scoreboard players operation #random value += @s botSkill
scoreboard players operation #random value += @s itemLuck
execute if score @s botSkill matches 5.. run scoreboard players add #random value 2
execute if score @s botSkill matches 6.. run scoreboard players add #random value 3

#bad decision event? deny if roll 2 or higher
execute if score #waypointEventSkill value matches 1 if score #random value matches 2.. run return 1
#also deny if we're on mistake cooldown
execute if score #waypointEvent value matches 1 if score @s botMistakeCooldown matches 1.. run return 1
#making a mistake? set cooldown on making more mistakes
execute if score #waypointEvent value matches 1 run function phan:bots/bot_set_mistake_cooldown

#high skill event? deny if we roll 9 or lower
execute if score #waypointEventSkill value matches 2 if score #random value matches ..9 run return 1

#no skill specified? deny if we roll 6 or lower
execute if score #random value matches ..6 run return 1

#still here? do it
return 0