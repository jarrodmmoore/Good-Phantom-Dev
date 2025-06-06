function phan:common/playsound_positionless_macro {sound:"minecraft:block.dispenser.fail",targets:"@s",pitch:"1.2",volume:"1"}

scoreboard players set @s inputCooldownB 12
scoreboard players reset @s carrotInput

#message in practice mode
execute if score #gameState value matches 0 if entity @s[tag=!practiceCourse] run title @s actionbar ["",{translate:"gp.practice.out_of_magic",color:"blue"}]