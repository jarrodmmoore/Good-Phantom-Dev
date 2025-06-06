#change state using editArg1
scoreboard players set @s editArg1 20
#output log kiss-up
item replace entity @s container.0 with red_wool[item_model="gp/object/big_target_green"]

#can't be shot again... until cooldown expires and we turn red again
tag @s remove shootable

#feedback
execute at @s run playsound minecraft:block.crop.break master @a ~ ~ ~ 2.4 1.3
execute at @s run particle block{block_state:"lime_concrete"} ~ ~.5 ~ 0.7 0.7 0.7 1 20