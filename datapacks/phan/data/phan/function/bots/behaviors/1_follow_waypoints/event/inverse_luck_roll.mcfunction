#roll a random number. luck boosts the number
execute store result score #random value run random value 0..6
scoreboard players operation #random value += @s itemLuck

#roll a second number. bot skill boosts the number
execute store result score #random2 value run random value -2..8
scoreboard players operation #random2 value += @s botSkill

#bad decision event? deny if skill roll 2 or higher
execute if score #waypointEventSkill value matches 1 if score #random2 value matches 2.. run return 1
#also deny if we're on mistake cooldown
execute if score #waypointEvent value matches 1 if score @s botMistakeCooldown matches 1.. run return 1
#making a mistake? set cooldown on making more mistakes
execute if score #waypointEvent value matches 1 run function phan:bots/bot_set_mistake_cooldown

#high skill event? deny if skill roll 7 or lower
execute if score #waypointEventSkill value matches 2 if score #random2 value matches ..7 run return 1


#didn't get filtered by skill? do it by luck, now.
#deny if we roll 6 or higher
execute if score #random value matches 6.. run return 1

#still here? do it
return 0