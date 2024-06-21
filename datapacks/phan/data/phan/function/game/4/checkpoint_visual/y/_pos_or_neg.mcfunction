execute if score @s visualYoffset matches 1.. run function phan:game/4/checkpoint_visual/y/p2048
execute if score @s visualYoffset matches 0 run function phan:game/4/checkpoint_visual/z/_pos_or_neg
execute if score @s visualYoffset matches ..-1 run function phan:game/4/checkpoint_visual/y/n2048
