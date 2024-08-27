#gate 1
execute if loaded 1344 103 2192 unless block 1344 103 2195 iron_bars run fill 1344 103 2192 1348 112 2196 iron_bars replace structure_void

#gate 2
execute if loaded 1325 101 2142 if loaded 1329 101 2142 unless block 1325 101 2142 dark_oak_planks run clone 1325 93 2142 1329 98 2142 1325 101 2142
#side gate
execute if loaded 1313 109 2141 unless block 1313 109 2141 iron_bars run fill 1313 109 2141 1315 112 2141 iron_bars replace structure_void

#gate 3
execute if loaded 1346 108 2115 unless block 1346 108 2116 glass_pane run fill 1346 108 2115 1346 113 2119 glass_pane replace structure_void

#gate 4
execute if loaded 1378 102 2128 unless block 1382 102 2128 iron_bars run fill 1378 102 2128 1382 108 2133 iron_bars replace structure_void

#gate 5
execute if loaded 1390 104 2177 if loaded 1400 115 2182 unless block 1390 104 2177 iron_bars run fill 1390 104 2177 1400 115 2182 iron_bars replace structure_void

#turn off the captainsparklez magic pad
execute if loaded 1392 103 2174 if loaded 1392 103 2176 unless block 1392 103 2174 brown_glazed_terracotta run fill 1392 103 2174 1394 103 2176 brown_glazed_terracotta