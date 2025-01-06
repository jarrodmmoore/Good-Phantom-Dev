#executed by "@e[tag=playerSoul]"
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches ..100090 facing 1878 92 2388 run tp @s ^ ^.6 ^.6
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches 100091..100100 facing 1878 92 2388 run tp @s ^-.3 ^.3 ^.6
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches 100101..100134 facing 1878 92 2388 run tp @s ^-.6 ^ ^.6
execute if score #pCurrentArea value matches ..2 if score #pTransitionProgress value matches 100135.. facing 1878 92 2388 run tp @s ^ ^ ^.8

#area 2 transition: just teleport straight to act 3 after a bit since it's not going to connect via loaded chunks
execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches 100200.. run scoreboard players set #replayStartAnim value 1
execute if score #pCurrentArea value matches 3 if score #pTransitionProgress value matches 100200.. run scoreboard players set #pGameTime value 100500

#transition before area 3 also goes straight up
execute if score #pCurrentArea value matches 3.. run scoreboard players set #followStraightUp value 1
execute if score #pCurrentArea value matches 3.. run tp @s ~ ~1 ~


#music transition!
execute if score #pCurrentArea value matches 3 as @a[tag=playing] if score @s playerID = #findID value run function phan:bgm/stop_bgm_self