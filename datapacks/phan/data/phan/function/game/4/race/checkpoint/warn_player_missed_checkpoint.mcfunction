scoreboard players set @s actionbarDelay 10
execute if score #5Hz value matches 0 run title @s actionbar ["",{translate:"gp.game.missed_checkpoint",bold:true,color:"#F04040"}]
execute if score #5Hz value matches 1 run title @s actionbar ["",{translate:"gp.game.missed_checkpoint",bold:true,color:"#E03030"}]
execute if score #5Hz value matches 2 run title @s actionbar ["",{translate:"gp.game.missed_checkpoint",bold:true,color:"#D02020"}]
execute if score #5Hz value matches 3 run title @s actionbar ["",{translate:"gp.game.missed_checkpoint",bold:true,color:"#C01010"}]