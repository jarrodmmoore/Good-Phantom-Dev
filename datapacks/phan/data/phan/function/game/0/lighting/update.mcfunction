#central room is lit brighter as more dreams are completed
execute if score #dreamsCompleted value matches ..0 run function phan:game/0/lighting/0
execute if score #dreamsCompleted value matches 1 run function phan:game/0/lighting/1
execute if score #dreamsCompleted value matches 2 run function phan:game/0/lighting/2
execute if score #dreamsCompleted value matches 3 run function phan:game/0/lighting/3
execute if score #dreamsCompleted value matches 4 run function phan:game/0/lighting/4
execute if score #dreamsCompleted value matches 5.. run function phan:game/0/lighting/5

#a few lights are always the same
setblock 198 -7 118 light[level=11]
execute if score #scoresRecorded value matches ..0 run setblock 193 -7 125 air
execute if score #scoresRecorded value matches 1.. run setblock 193 -7 125 light[level=11]
execute if score #scoresRecorded value matches ..0 run setblock 195 -7 125 air
execute if score #scoresRecorded value matches 1.. run setblock 195 -7 125 light[level=11]
setblock 193 -7 111 light[level=11]
setblock 195 -7 111 light[level=11]
fill 204 -7 112 204 -7 114 light[level=11] replace light
fill 204 -7 122 204 -7 124 light[level=11] replace light

#lanterns depending on what dreams are open
execute if score #dream1Completed value matches ..0 run setblock 199 2 107 gray_candle
execute if score #dream1Completed value matches 1.. run setblock 199 2 107 lantern[hanging=false]

execute if score #dream2Completed value matches ..0 run function phan:game/0/lighting/rim_lantern_off
execute if score #dream2Completed value matches 1.. run function phan:game/0/lighting/rim_lantern_on

#stop doors from emitting light when they're not open
#room 2
scoreboard players operation #test value = #dream1Completed value
execute if score #test value matches ..0 run setblock 203 -1 105 smooth_quartz
execute if score #test value matches ..0 run setblock 206 -1 105 smooth_quartz
execute if score #test value matches ..0 run fill 204 -1 104 205 1 104 smooth_quartz
execute if score #test value matches 1.. run setblock 203 -1 105 smooth_quartz_stairs[facing=south]
execute if score #test value matches 1.. run setblock 206 -1 105 smooth_quartz_stairs[facing=south]
execute if score #test value matches 1.. run fill 204 -1 104 205 1 104 air
#room 4
scoreboard players operation #test value = #dream2Completed value
execute if score #test value matches ..0 run setblock 200 -7 131 blackstone
execute if score #test value matches ..0 run setblock 203 -7 131 blackstone
execute if score #test value matches ..0 run fill 201 -7 132 202 -6 132 blackstone
execute if score #test value matches 1.. run setblock 200 -7 131 blackstone_stairs[facing=north]
execute if score #test value matches 1.. run setblock 203 -7 131 blackstone_stairs[facing=north]
execute if score #test value matches 1.. run fill 201 -7 132 202 -6 132 air
#room 5
scoreboard players operation #test value = #dream2Completed value
execute if score #test value matches ..0 run setblock 200 -7 105 blackstone
execute if score #test value matches ..0 run setblock 203 -7 105 blackstone
execute if score #test value matches ..0 run fill 201 -7 104 202 -6 104 blackstone
execute if score #test value matches 1.. run setblock 200 -7 105 blackstone_stairs[facing=south]
execute if score #test value matches 1.. run setblock 203 -7 105 blackstone_stairs[facing=south]
execute if score #test value matches 1.. run fill 201 -7 104 202 -6 104 air
#room 3
scoreboard players set #test value 0
execute if score #dream4Completed value matches 1.. if score #dream5Completed value matches 1.. run scoreboard players set #test value 1
execute if score #test value matches 0 run fill 216 -1 117 216 2 119 smooth_quartz
execute if score #test value matches 1 run setblock 215 -1 116 smooth_quartz_stairs[facing=west]
execute if score #test value matches 1 run setblock 215 -1 120 smooth_quartz_stairs[facing=west]
execute if score #test value matches 1 run fill 216 -1 117 216 2 119 air
#extra decorations if room 3 unlocked
execute if score #test value matches 0 run setblock 213 2 115 gray_candle
execute if score #test value matches 0 run setblock 213 2 121 gray_candle
execute if score #test value matches 1 run setblock 213 2 115 lantern[hanging=false]
execute if score #test value matches 1 run setblock 213 2 121 lantern[hanging=false]
execute if score #test value matches 0 run setblock 215 -1 116 smooth_quartz
execute if score #test value matches 0 run setblock 215 -1 120 smooth_quartz