#do stuff based on what we are
execute if entity @s[tag=enderEye] unless score @s hitstun matches 1.. run function phan:game/1/objects/ender_eye
execute if entity @s[tag=spawner] run function phan:game/1/objects/spawner
execute if entity @s[tag=baddy] run function phan:game/1/objects/enemy_generic
execute if entity @s[tag=present] run function phan:game/1/objects/present
execute if entity @s[tag=bigTarget] run function phan:game/1/objects/big_target
