#"bars" (barriers. the visual bars have to be a custom model because minecraft hates us.)
fill 1868 81 -28 1873 84 -23 barrier replace structure_void

#summon the visual bars
kill @e[tag=moonlitCageVisual]
execute positioned 1870 82 -26 positioned ~.5 ~.75 ~.5 run summon item_display ~ ~ ~ {Tags:["moonlitCageVisual"],item_display:"head",billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.66f,0.66f,0.66f]},item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/object/moonlit_act_2_cage"}}}

#lamp indicators for each target
execute if score #act2target1 value matches 0 run setblock 1868 85 -28 redstone_lamp[lit=false]
execute if score #act2target1 value matches 1 run setblock 1868 85 -28 redstone_lamp[lit=true]

execute if score #act2target2 value matches 0 run setblock 1873 85 -28 redstone_lamp[lit=false]
execute if score #act2target2 value matches 1 run setblock 1873 85 -28 redstone_lamp[lit=true]

execute if score #act2target3 value matches 0 run setblock 1873 85 -23 redstone_lamp[lit=false]
execute if score #act2target3 value matches 1 run setblock 1873 85 -23 redstone_lamp[lit=true]

execute if score #act2target4 value matches 0 run setblock 1868 85 -23 redstone_lamp[lit=false]
execute if score #act2target4 value matches 1 run setblock 1868 85 -23 redstone_lamp[lit=true]
#i doubt these targets will ever be ON when this gets run, but y'never know

#roof
fill 1869 85 -27 1872 85 -24 stone

#rim of roof
fill 1868 85 -28 1873 85 -23 andesite_slab[type=bottom] replace air

#we did this. remember that we did this.
scoreboard players set #act2cage value 0