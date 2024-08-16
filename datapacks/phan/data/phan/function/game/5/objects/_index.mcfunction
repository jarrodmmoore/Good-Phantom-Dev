#do thing
execute if entity @s[tag=podiumPlayerCamera] run function phan:game/5/objects/podium_player_camera

#DELETE if we're no longer valid
execute if entity @s[tag=act1Spawn] run function phan:game/1/objects/check_valid_act1
execute if entity @s[tag=act2Spawn] run function phan:game/1/objects/check_valid_act2
execute if entity @s[tag=act3Spawn] run function phan:game/1/objects/check_valid_act3