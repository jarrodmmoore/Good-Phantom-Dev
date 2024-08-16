#don't advance until we're done watching
scoreboard players set @s pGameTime 35

#slide sequence
scoreboard players add @s tutorialProgress 1

execute if score @s tutorialProgress matches 1 run title @s times 5 80 5
execute if score @s tutorialProgress matches 1 run title @s subtitle [""]

execute if score @s tutorialProgress matches 10 run title @s subtitle ["",{"text":"\uE018"}]
execute if score @s tutorialProgress matches 10 run title @s title [""]
execute if score @s tutorialProgress matches 10..40 run title @s actionbar ["",{"translate":"gp.tutorial.get_ender_eyes","with":[{"translate":"gp.tutorial.ever_eyes","color":"light_purple"}]}]

execute if score @s tutorialProgress matches 110 run title @s subtitle ["",{"text":"\uE019"}]
execute if score @s tutorialProgress matches 110 run title @s title [""]
execute if score @s tutorialProgress matches 110..140 run title @s actionbar ["",{"translate":"gp.tutorial.hold_button_to_run","with":[{"keybind":"key.sprint","color":"yellow"}]}]

execute if score @s tutorialProgress matches 210 run title @s subtitle ["",{"text":"\uE020"}]
execute if score @s tutorialProgress matches 210 run title @s title [""]
execute if score @s tutorialProgress matches 210..240 run title @s actionbar ["",{"translate":"gp.tutorial.press_button_to_glide","with":[{"keybind":"key.jump","color":"yellow"}]}]

#we're done!
execute if score @s tutorialProgress matches 310.. run function phan:player/set_title_times
execute if score @s tutorialProgress matches 310.. run scoreboard players set @s tutorialProgress 1000