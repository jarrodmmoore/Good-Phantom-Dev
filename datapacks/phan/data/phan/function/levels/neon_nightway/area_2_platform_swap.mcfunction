#reset target state if we're a target
execute if entity @s[tag=targetNode] run scoreboard players add @s editArg1 1
execute if entity @s[tag=targetNode,scores={editArg1=15..}] run function phan:game/1/spawning/target_setup

#do a swap this tick!
scoreboard players set #platformSwapImpulse value 1
#(we can't do this right here, though. it's possible that multiple targets will get hit at once and swap us back again)

#count how many times this happened
scoreboard players add @a[tag=playing,scores={pCurrentArea=2}] targetsShot 1