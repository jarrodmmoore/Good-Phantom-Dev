scoreboard players add #adminMode value 1
execute if score #adminMode value matches 2.. run scoreboard players set #adminMode value 0

#feedback
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 2

#tell self
execute if score #adminMode value matches 1 run tellraw @s[tag=!admin] ["",{translate:"gp.admin.tagged_as_admin",color:"yellow",with:[{text:"/tag <PLAYERNAME> add admin",color:"aqua"}]}]
execute if score #adminMode value matches 1 run tag @s add admin