particle dust{color:[0.7,0.0,0.9],scale:0.8} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

#player collects if nearby
execute if entity @a[tag=playing,gamemode=adventure,distance=..2] run return run function phan:game/1/objects/ender_eye_collect
execute if score #botsEnabled value matches 1.. if entity @s[tag=!hiddenMusicDisc] if entity @e[tag=ai,type=zombie,distance=..2] run return run function phan:game/1/objects/ender_eye_collect_bot

#bob up and down
scoreboard players remove @s bobTime 1
execute if score @s bobTime matches ..0 run function phan:game/1/objects/ender_eye_bob