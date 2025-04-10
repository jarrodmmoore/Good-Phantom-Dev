#scoreboard players set @s teamRequest 0
execute if block ~ -32 ~ light_blue_wool run scoreboard players set @s teamRequest 2
execute if block ~ -32 ~ pink_wool run scoreboard players set @s teamRequest 1

#feedback
execute if score @s teamRequest matches 0 run title @s actionbar [""]
execute if score @s teamRequest matches 1 run title @s actionbar ["",{translate:"gp.misc.spectating",color:"light_purple",italic:true}]
execute if score @s teamRequest matches 2 run title @s actionbar ["",{translate:"gp.misc.playing",color:"aqua",italic:true}]