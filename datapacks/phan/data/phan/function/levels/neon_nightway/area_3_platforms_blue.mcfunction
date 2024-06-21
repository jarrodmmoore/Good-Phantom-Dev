#make sure all blue platforms are solid and all yellow platforms are pass-through

#rooftops near helicopter pad
execute if loaded 3268 90 -45 unless block 3268 90 -45 light_blue_stained_glass run fill 3268 90 -45 3270 90 -43 light_blue_stained_glass replace cherry_pressure_plate
execute if loaded 3279 90 -45 if loaded 3280 90 -45 if block 3279 90 -45 yellow_stained_glass run fill 3279 90 -45 3281 90 -43 bamboo_pressure_plate[powered=true] replace yellow_stained_glass
execute if loaded 3271 92 -64 if block 3276 93 -64 yellow_stained_glass run fill 3271 92 -64 3278 93 -54 bamboo_pressure_plate[powered=true] replace yellow_stained_glass
execute if loaded 3271 92 -64 unless block 3271 93 -64 light_blue_stained_glass run fill 3271 92 -64 3278 93 -54 light_blue_stained_glass replace cherry_pressure_plate
execute if loaded 3271 93 -68 if block 3276 93 -68 yellow_stained_glass run fill 3271 93 -68 3278 93 -65 bamboo_pressure_plate[powered=true] replace yellow_stained_glass
execute if loaded 3271 93 -68 unless block 3271 93 -68 light_blue_stained_glass run fill 3271 93 -68 3278 93 -65 light_blue_stained_glass replace cherry_pressure_plate

#weirdly shaped building before vertical climb
execute if loaded 3343 91 -113 if loaded 3344 91 -113 if loaded 3343 91 -112 if loaded 3344 91 -112 run function phan:levels/neon_nightway/area_3_platforms_blue_b

#rooftop heights
execute if loaded 3396 108 -54 if block 3396 108 -54 yellow_stained_glass run fill 3396 108 -54 3400 108 -52 bamboo_pressure_plate[powered=true] replace yellow_stained_glass
execute if loaded 3380 108 -57 unless block 3380 108 -57 light_blue_stained_glass run fill 3380 108 -57 3383 108 -56 light_blue_stained_glass replace cherry_pressure_plate
execute if loaded 3351 108 -48 unless block 3351 108 -48 light_blue_stained_glass run fill 3351 108 -48 3358 108 -47 light_blue_stained_glass replace cherry_pressure_plate