#confirmed: we exist
scoreboard players set #followStraightUp value 1

#fly up
tp @s ~ ~0.8 ~
scoreboard players add @s age 1

#vanish if we run into a ceiling
execute at @s unless block ~ ~.8 ~ #phan:not_solid run scoreboard players add @s age 80
execute if score @s age matches 80.. run function phan:game/1/player_soul_vanish