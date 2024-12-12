#toggle checkpoint auto reset
scoreboard players set #test value 0
execute if entity @s[tag=noAutoReset] run scoreboard players set #test value 1
execute if score #test value matches 0 run tag @s add noAutoReset
execute if score #test value matches 1 run tag @s remove noAutoReset

#feedback
playsound minecraft:block.note_block.cow_bell master @s ~ 100000 ~ 100000 2
tellraw @s ["",{"text":" "}]
execute if entity @s[tag=noAutoReset] run tellraw @s ["",{"translate":"gp.misc.checkpoint_auto_reset","italic":false,"with":[{"translate":"gp.misc.off","color":"yellow","italic":false}]}]
execute if entity @s[tag=!noAutoReset] run tellraw @s ["",{"translate":"gp.misc.checkpoint_auto_reset","italic":false,"with":[{"translate":"gp.misc.on","color":"yellow","italic":false},{"text":"\n"}]}]

#reset trigger
scoreboard players reset @s toggleAutoReset