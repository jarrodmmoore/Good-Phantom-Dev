#toggle music
scoreboard players set #test value 0
execute if entity @s[tag=navCompass] run scoreboard players set #test value 1
execute if score #test value matches 0 run tag @s add navCompass
execute if score #test value matches 1 run tag @s remove navCompass

#feedback
playsound minecraft:block.note_block.cow_bell master @s ~ 100000 ~ 100000 2
tellraw @s ["",{text:" "}]
execute if entity @s[tag=navCompass] run tellraw @s ["",{translate:"gp.misc.nav_compass",italic:false,with:[{translate:"gp.misc.on",color:"yellow",italic:false}]}]
execute if entity @s[tag=!navCompass] run tellraw @s ["",{translate:"gp.misc.nav_compass",italic:false,with:[{translate:"gp.misc.off",color:"yellow",italic:false},{text:"\n"}]}]

#reset trigger
scoreboard players reset @s navCompass