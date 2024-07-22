scoreboard players set #timeUntilStart value -1

#free play: it is possible to watch a game with only bots
execute if score #freePlay value matches 1.. run scoreboard players set #timeUntilStart value -99

execute as @a[tag=doneWithIntro] at @s run playsound minecraft:block.beacon.power_select master @s ~ 100000 ~ 100000 2