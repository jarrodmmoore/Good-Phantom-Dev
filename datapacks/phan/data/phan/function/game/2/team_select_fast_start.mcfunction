scoreboard players set #timeUntilStart value -1

#free play: it is possible to watch a game with only bots
execute if score #freePlay value matches 1.. run scoreboard players set #timeUntilStart value -99

execute as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.beacon.power_select",targets:"@s",pitch:"2"}