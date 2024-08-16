scoreboard players add #varyTeleportNPC value 1
execute if score #varyTeleportNPC value matches 10.. run scoreboard players set #varyTeleportNPC value 1

execute if score #varyTeleportNPC value matches 1 positioned ~ ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 2 positioned ~ ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 3 positioned ~ ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 4 positioned ~1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 5 positioned ~-1 ~ ~ run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleportNPC value matches 6 positioned ~-1 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 7 positioned ~-1 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 8 positioned ~1 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 9 positioned ~1 ~ ~1 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleportNPC value matches 2 positioned ~ ~ ~2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 3 positioned ~ ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 4 positioned ~2 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 5 positioned ~-2 ~ ~ run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleportNPC value matches 6 positioned ~-2 ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 7 positioned ~-2 ~ ~2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 8 positioned ~2 ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleportNPC value matches 9 positioned ~2 ~ ~2 run tp @s ~ ~ ~ ~ ~