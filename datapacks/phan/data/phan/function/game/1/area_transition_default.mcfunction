#replay the start animation and stuff
execute if score #pCurrentArea value matches ..3 if score #pTransitionProgress value matches 100200.. run scoreboard players set #replayStartAnim value 1
execute if score #pCurrentArea value matches ..3 if score #pTransitionProgress value matches 100200.. run scoreboard players set #pGameTime value 100500

#transition before area 3 also goes straight up
scoreboard players set #followStraightUp value 1
tp @s ~ ~1 ~

#stop bgm during load screen unless this was the final portal
execute if score #pCurrentArea value matches ..3 as @a[tag=playing] if score @s playerID = #findID value run function phan:bgm/stop_bgm_self