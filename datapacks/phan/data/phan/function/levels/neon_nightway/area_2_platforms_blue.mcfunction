#make sure all blue platforms are solid and all yellow platforms are pass-through

#outside pipe building
execute if loaded 3279 61 143 if loaded 3280 61 143 if loaded 3279 61 144 if loaded 3280 61 144 if block 3269 64 140 yellow_stained_glass run fill 3269 64 140 3290 62 153 bamboo_pressure_plate[powered=true] replace yellow_stained_glass

#inside pipe building
execute if loaded 3280 68 80 unless block 3280 66 93 light_blue_stained_glass run fill 3280 66 80 3295 70 94 light_blue_stained_glass replace cherry_pressure_plate
execute if loaded 3280 68 80 if block 3280 69 88 yellow_stained_glass run fill 3280 69 88 3288 70 88 bamboo_pressure_plate[powered=true] replace yellow_stained_glass
execute if loaded 3267 68 80 if block 3267 69 88 yellow_stained_glass run fill 3267 69 88 3279 70 88 bamboo_pressure_plate[powered=true] replace yellow_stained_glass
execute if loaded 3295 69 79 unless block 3295 69 79 light_blue_stained_glass run fill 3295 69 75 3295 70 79 light_blue_stained_glass replace cherry_pressure_plate
execute if loaded 3295 69 79 if block 3285 70 70 yellow_stained_glass run fill 3285 70 70 3292 70 72 bamboo_pressure_plate[powered=true] replace yellow_stained_glass

#cynet lobby
execute if loaded 3218 69 44 if loaded 3204 71 47 if loaded 3204 71 48 unless block 3204 71 48 light_blue_stained_glass run fill 3204 69 44 3218 71 48 light_blue_stained_glass replace cherry_pressure_plate
execute if loaded 3214 69 31 if loaded 3214 69 32 if block 3214 69 30 yellow_stained_glass run fill 3214 69 30 3214 71 34 bamboo_pressure_plate[powered=true] replace yellow_stained_glass

#rooftop
execute if loaded 3256 83 84 if loaded 3264 83 84 if block 3256 83 84 yellow_stained_glass run fill 3256 83 84 3274 84 84 bamboo_pressure_plate[powered=true] replace yellow_stained_glass
execute if loaded 3285 83 84 if loaded 3303 84 84 unless block 3285 83 84 light_blue_stained_glass run fill 3285 83 84 3303 84 84 light_blue_stained_glass replace cherry_pressure_plate

#path to side route
execute if loaded 3290 69 33 if loaded 3306 71 39 unless block 3290 69 33 light_blue_stained_glass run fill 3290 69 33 3306 71 39 light_blue_stained_glass replace cherry_pressure_plate

#doors at the bottom of vertical building
execute if loaded 3362 70 100 if loaded 3362 70 84 unless block 3362 70 84 light_blue_stained_glass run fill 3362 70 84 3362 75 100 light_blue_stained_glass replace cherry_pressure_plate
execute if loaded 3345 70 107 if block 3345 70 107 yellow_stained_glass run fill 3345 70 107 3354 75 107 bamboo_pressure_plate[powered=true] replace yellow_stained_glass