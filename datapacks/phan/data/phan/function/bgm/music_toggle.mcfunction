#toggle music
scoreboard players set #test value 0
execute if entity @s[tag=musicDisable] run scoreboard players set #test value 1
execute if score #test value matches 0 run tag @s add musicDisable
execute if score #test value matches 0 run stopsound @s record
execute if score #test value matches 1 run tag @s remove musicDisable
scoreboard players set @s musicTime 1

#feedback
playsound minecraft:block.note_block.cow_bell master @s ~ 100000 ~ 100000 2
tellraw @s ["",{text:" "}]
execute if entity @s[tag=!musicDisable] run tellraw @s ["",{translate:"gp.misc.music",italic:false,with:[{translate:"gp.misc.on",color:"yellow",italic:false}]}]
execute if entity @s[tag=!musicDisable] run tellraw @s ["",{translate:"gp.misc.music_info",color:"gray",italic:true}]
execute if entity @s[tag=musicDisable] run tellraw @s ["",{translate:"gp.misc.music",italic:false,with:[{translate:"gp.misc.off",color:"yellow",italic:false},{text:"\n"}]}]

#reset trigger
scoreboard players reset @s musicToggle