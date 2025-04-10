#nothing
execute if score #show value matches 0 run bossbar set hud10b name [""]

#show time add/subtract message
execute if score #show value matches 1 run bossbar set hud10b name ["",{nbt:"display.timer_add",storage:"phan:data",interpret:true}]