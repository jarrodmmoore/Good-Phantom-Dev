#do stuff based on what we are
execute if entity @s[tag=stardustYellow] run particle dust{color:[1,1,0],scale:1} ~ ~.5 ~ 0.1 0.1 0.1 1 1 normal
execute if entity @s[tag=stardustRed] run particle dust{color:[1,0,0],scale:1} ~ ~.5 ~ 0.1 0.1 0.1 1 1 normal
execute if entity @s[tag=ring,tag=ringLittle] run function phan:game/1/objects/ring_small
execute if entity @s[tag=ring,tag=ringBig] run function phan:game/1/objects/ring_big
execute if entity @s[tag=itemHolder] run function phan:game/1/objects/item_holder
execute if entity @s[tag=itemBox] run function phan:game/4/objects/item_box