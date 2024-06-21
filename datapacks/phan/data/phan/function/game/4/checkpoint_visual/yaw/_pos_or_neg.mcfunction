execute if score @s visualYaw matches 1.. run function phan:game/4/checkpoint_visual/yaw/p256
execute if score @s visualYaw matches 0 run function phan:game/4/checkpoint_visual/pitch/_pos_or_neg
execute if score @s visualYaw matches ..-1 run function phan:game/4/checkpoint_visual/yaw/n256