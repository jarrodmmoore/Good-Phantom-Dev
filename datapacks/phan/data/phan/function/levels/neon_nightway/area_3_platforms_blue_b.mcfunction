#make sure all yellow platforms are solid and all blue platforms are pass-through

execute unless block 3341 91 -114 light_blue_stained_glass run fill 3341 91 -119 3358 95 -102 light_blue_stained_glass replace cherry_pressure_plate
execute if block 3341 91 -110 yellow_stained_glass run fill 3341 91 -119 3358 95 -102 bamboo_pressure_plate[powered=true] replace yellow_stained_glass