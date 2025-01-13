#visuals
$time set $(time)
$weather $(weather)
$scoreboard players set @s skyboxSet $(skybox)

#per-player night vision on ourselves
effect clear @s night_vision
$scoreboard players set #test value $(night_vision)
tag @s remove getNightVisionInSA
execute if score #test value matches 1 run tag @s add getNightVisionInSA

#no music while editing. lobby song can easily become grating over hours of editing!
scoreboard players set @s musicTrack 0
scoreboard players set @s musicTime 0

#clear inventory, just in case...
clear @s

#while we're in here, give the player tips on how to editor mode
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[","color":"#BB33FF","bold":true},{"translate":"gp.tip.tip","color":"#BB33FF","bold":true},{"text":"]","color":"#BB33FF","bold":true},{"text":" "},{"translate":"gp.level_manager.editor_trigger","with":[{"translate":"/trigger editor","color":"aqua"}]}]
tellraw @s ["",{"text":"[","color":"#BB33FF","bold":true},{"translate":"gp.tip.tip","color":"#BB33FF","bold":true},{"text":"]","color":"#BB33FF","bold":true},{"text":" "},{"translate":"gp.level_manager.dream_manager_trigger","with":[{"translate":"/trigger dreamManager","color":"aqua"}]}]
