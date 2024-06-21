#make sure all yellow platforms are solid and all blue platforms are pass-through

#rooftops near helicopter pad
execute if loaded 3268 90 -45 if block 3268 90 -45 light_blue_stained_glass run fill 3268 90 -45 3270 90 -43 cherry_pressure_plate[powered=true] replace light_blue_stained_glass
execute if loaded 3279 90 -45 if loaded 3280 90 -45 unless block 3279 90 -45 yellow_stained_glass run fill 3279 90 -45 3281 90 -43 yellow_stained_glass replace bamboo_pressure_plate
execute if loaded 3271 92 -64 unless block 3276 93 -64 yellow_stained_glass run fill 3271 92 -64 3278 93 -54 yellow_stained_glass replace bamboo_pressure_plate
execute if loaded 3271 92 -64 if block 3271 93 -64 light_blue_stained_glass run fill 3271 92 -64 3278 93 -54 cherry_pressure_plate[powered=true] replace light_blue_stained_glass
execute if loaded 3271 93 -68 unless block 3276 93 -68 yellow_stained_glass run fill 3271 93 -68 3278 93 -65 yellow_stained_glass replace bamboo_pressure_plate
execute if loaded 3271 93 -68 if block 3271 93 -68 light_blue_stained_glass run fill 3271 93 -68 3278 93 -65 cherry_pressure_plate[powered=true] replace light_blue_stained_glass

#weirdly shaped building before vertical climb
execute if loaded 3343 91 -113 if loaded 3344 91 -113 if loaded 3343 91 -112 if loaded 3344 91 -112 run function phan:levels/neon_nightway/area_3_platforms_yellow_b

#rooftop heights
execute if loaded 3396 108 -54 unless block 3396 108 -54 yellow_stained_glass run fill 3396 108 -54 3400 108 -52 yellow_stained_glass replace bamboo_pressure_plate
execute if loaded 3380 108 -57 if block 3380 108 -57 light_blue_stained_glass run fill 3380 108 -57 3383 108 -56 cherry_pressure_plate[powered=true] replace light_blue_stained_glass
execute if loaded 3351 108 -48 if block 3351 108 -48 light_blue_stained_glass run fill 3351 108 -48 3358 108 -47 cherry_pressure_plate[powered=true] replace light_blue_stained_glass