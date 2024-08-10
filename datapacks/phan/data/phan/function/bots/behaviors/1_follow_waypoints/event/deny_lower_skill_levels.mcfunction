#always ok if this is a bad decision event
execute if score #waypointEventSkill value matches 1 run return 0

#never allow non-rival v.easy bots
execute if score @s[tag=!botRival] botSkill matches 1 run return 1

#easy bot or v.easy rival bot? some % chance of denying
execute if score @s itemLuck matches ..1 store result score #random value run random value -3..10
execute if score @s itemLuck matches 2 store result score #random value run random value -1..10
execute if score @s itemLuck matches 3 store result score #random value run random value 1..10
#better odds for easy rival bot
execute if entity @s[tag=botRival,scores={botSkill=2}] run scoreboard players add #random value 3

#deny if we roll 5 or lower
execute if score #random value matches ..5 run return 1

#otherwise ok
return 0