playsound minecraft:block.dispenser.fail master @s ~ 100000 ~ 100000 1.2

scoreboard players set @s inputCooldownB 12
scoreboard players reset @s carrotInput

#message in practice mode
execute if score #gameState value matches 0 if entity @s[tag=!practiceCourse] run title @s actionbar ["",{translate:"gp.practice.out_of_magic",color:"blue"}]