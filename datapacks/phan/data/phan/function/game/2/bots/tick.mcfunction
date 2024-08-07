#check if there's only 1 player and they have a bot with them
scoreboard players set #editArg1 value 0
execute store result score #editArg2 value run execute if entity @a[tag=doneWithIntro]
execute if score #editArg2 value matches 1 unless entity @a[tag=doneWithIntro,scores={teamRequest=1..2}] run scoreboard players set #editArg2 value 0
execute if score #botCount value matches 1.. if score #editArg2 value matches 1 run scoreboard players set #editArg1 value 1
execute if score #editArg2 value matches 1 if score #freePlay value matches 1 if entity @a[tag=doneWithIntro,scores={teamRequest=2}] run scoreboard players set #editArg1 value 1

#give inventory controls to players
execute if score #requireAdmin value matches 1 as @a[tag=admin,tag=doneWithIntro] run function phan:game/2/bots/player_hotbar_menu
execute if score #requireAdmin value matches 1 as @a[tag=!admin,tag=doneWithIntro] run function phan:game/2/bots/player_hotbar_menu_empty
execute unless score #requireAdmin value matches 1 as @a[tag=doneWithIntro] run function phan:game/2/bots/player_hotbar_menu