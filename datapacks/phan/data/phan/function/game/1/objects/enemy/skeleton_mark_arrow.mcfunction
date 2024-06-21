#coreboard players set #test value 0
#execute on owner if entity @s[tag=baddy] run scoreboard players set #test value 1
#execute if score #test value matches 1 run tag @s add hurtfulArrow
tag @s add hurtfulArrow
tag @s add arrowMarked