#executed by a player on themselves

#conditions
$time set $(time)
$weather $(weather)
$scoreboard players set @s skyboxSet $(skybox)

#night vision?
tag @s remove getNightVisionInSA
$scoreboard players set #test2 value $(night_vision)
execute if score #test2 value matches 1 run tag @s add getNightVisionInSA
execute unless score #test2 value matches 1 run effect clear @s night_vision

#bright mines? apply it now. why not
$scoreboard players set #brightMines value $(bright_mines)