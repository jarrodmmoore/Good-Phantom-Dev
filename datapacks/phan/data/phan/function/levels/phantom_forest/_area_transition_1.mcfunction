#executed by "@e[tag=playerSoul]"
tp @s ~ ~0.9 ~
scoreboard players set #followStraightUp value -1

#need to replay the start animation
execute if score #pTransitionProgress value matches 100200.. run scoreboard players set #replayStartAnim value 1
execute if score #pTransitionProgress value matches 100200.. run scoreboard players set #pGameTime value 100500