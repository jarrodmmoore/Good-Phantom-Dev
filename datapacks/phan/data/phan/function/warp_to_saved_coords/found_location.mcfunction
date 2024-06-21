#maybe some other stuff here?
execute if entity @s[tag=keepRotation] run tp @s ~ ~ ~
execute unless entity @s[tag=keepRotation] run function phan:warp_to_saved_coords/yaw/_pos_or_neg