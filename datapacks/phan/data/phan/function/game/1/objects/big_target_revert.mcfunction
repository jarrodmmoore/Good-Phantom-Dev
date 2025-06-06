#change state using editArg1
scoreboard players set @s editArg1 0
item replace entity @s container.0 with red_wool[item_model="gp/object/big_target_red"]

#we can be shot once again
tag @s add shootable