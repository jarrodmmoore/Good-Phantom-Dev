$scoreboard players set $(username) racePosDisplay2 2
$execute if entity @s[tag=!finished] run scoreboard players display numberformat $(username) racePosDisplay2 fixed ["",{text:"➆",color:"white",bold:false}]
