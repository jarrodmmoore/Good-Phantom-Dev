#don't advance until we're done watching
scoreboard players set #gameTime value 35

#hold the grand prix round timer in place while we're waiting
execute if score #grandPrixRoundAnimation value matches 30..35 run scoreboard players set #grandPrixRoundAnimation value 30

#slide sequence
scoreboard players add @s tutorialProgress 1

#setup
execute if score @s tutorialProgress matches 1 run title @s times 5 80 5
execute if score @s tutorialProgress matches 1 run title @s subtitle [""]

#slide 1: complete portal before time runs out
execute if score @s tutorialProgress matches 10 run title @s subtitle ["",{text:"\uE018"}]
execute if score @s tutorialProgress matches 10 run title @s title [""]
execute if score @s tutorialProgress matches 10..40 run title @s actionbar ["",{translate:"gp.tutorial.get_ender_eyes",with:[{translate:"gp.tutorial.ever_eyes",color:"light_purple"}]}]

#slide 2: press jump to open wings
execute if score @s tutorialProgress matches 110 run title @s subtitle ["",{text:"\uE020"}]
execute if score @s tutorialProgress matches 110 run title @s title [""]
execute if score @s tutorialProgress matches 110..140 run title @s actionbar ["",{translate:"gp.tutorial.hold_button_to_run",with:[{keybind:"key.sprint",color:"yellow"}]}]

#skip the final slide if sprinting is not allowed
execute if score #SPRINTING_ALLOWED value matches 0 if score @s tutorialProgress matches 210 run scoreboard players add @s tutorialProgress 100
#slide 3: hold sprint button
execute if score @s tutorialProgress matches 210 run title @s subtitle ["",{text:"\uE019"}]
execute if score @s tutorialProgress matches 210 run title @s title [""]
execute if score @s tutorialProgress matches 210..240 run title @s actionbar ["",{translate:"gp.tutorial.press_button_to_glide",with:[{keybind:"key.jump",color:"yellow"}]}]

#we're done!
execute if score @s tutorialProgress matches 310.. run function phan:player/set_title_times
execute if score @s tutorialProgress matches 310.. run scoreboard players set @s tutorialProgress 1000