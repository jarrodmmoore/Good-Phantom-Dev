$scoreboard players set $(username) racePosDisplay2 6
$execute if entity @s[tag=!finished] run scoreboard players display numberformat $(username) racePosDisplay2 fixed ["",{text:"➂",color:"white",bold:false}]
