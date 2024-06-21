scoreboard players remove @s[scores={dummy_pitch=1024..}] dummy_pitch 1024

execute unless score @s dummy_pitch matches 512.. run function phan:warp_to_saved_coords/pitch/p256
execute if score @s dummy_pitch matches 512.. rotated ~ ~512 run function phan:warp_to_saved_coords/pitch/p256