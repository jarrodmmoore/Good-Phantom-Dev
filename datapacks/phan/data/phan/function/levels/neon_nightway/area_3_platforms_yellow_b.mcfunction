#make sure all yellow platforms are solid and all blue platforms are pass-through

execute if block 3341 91 -114 light_blue_stained_glass run fill 3341 91 -119 3358 95 -102 cherry_pressure_plate[powered=true] replace light_blue_stained_glass
execute unless block 3341 91 -110 yellow_stained_glass run fill 3341 91 -119 3358 95 -102 yellow_stained_glass replace bamboo_pressure_plate