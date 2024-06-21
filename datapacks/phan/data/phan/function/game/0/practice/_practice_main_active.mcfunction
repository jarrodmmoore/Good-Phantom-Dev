#this is run globally

#check if we need to respawn stuff!
execute if score #area0SpawnA value matches 0 run function phan:game/1/spawning/reset/reset0a
execute if score #area1SpawnA value matches 0 run function phan:game/1/spawning/reset/reset1a
execute if score #area2SpawnA value matches 0 run function phan:game/1/spawning/reset/reset2a
execute if score #area3SpawnA value matches 0 run function phan:game/1/spawning/reset/reset3a
execute if score #area4SpawnA value matches 0 run function phan:game/1/spawning/reset/reset4a
execute if score #area5SpawnA value matches 0 run function phan:game/1/spawning/reset/reset5a

execute if score #area0SpawnB value matches 0 run function phan:game/1/spawning/reset/reset0b
execute if score #area5SpawnB value matches 0 run function phan:game/1/spawning/reset/reset5b

execute if score #area0SpawnC value matches 0 run function phan:game/1/spawning/reset/reset0c

#nodes respawn their stuff when told to
execute if score #5Hz value matches 0 as @e[type=marker,tag=nodeArea1] at @s run function phan:game/1/spawning/check_area_generic_a
execute if score #5Hz value matches 1 as @e[type=marker,tag=nodeArea2] at @s run function phan:game/1/spawning/check_area_generic_b
execute if score #5Hz value matches 2 as @e[type=marker,tag=nodeArea3] at @s run function phan:game/1/spawning/check_area_generic_c

#count how long it takes to open the portal
function phan:game/0/practice/time_to_portal

#operate the portal
function phan:game/0/practice/_portal_logic_practice

#shoot the target!
execute if score #2sec value matches 0 as @e[type=text_display,tag=shootTargetSign] run data merge entity @s {transformation:{scale:[1.5f,1.5f,1.5f]},background:16711680,text:'[{"translate":"gp.practice.shoot","fallback":"SHOOT!","color":"blue","bold":true,"italic":false},{"text":"\\n\\\\/"}]'}
execute if score #2sec value matches 10 as @e[type=text_display,tag=shootTargetSign] run data merge entity @s {transformation:{scale:[1.5f,1.5f,1.5f]},background:16711680,text:'[{"translate":"gp.practice.shoot","fallback":"SHOOT!","color":"aqua","bold":true,"italic":false},{"text":"\\n\\\\/"}]'}
execute if score #2sec value matches 20 as @e[type=text_display,tag=shootTargetSign] run data merge entity @s {transformation:{scale:[1.5f,1.5f,1.5f]},background:16711680,text:'[{"translate":"gp.practice.shoot","fallback":"SHOOT!","color":"blue","bold":true,"italic":false},{"text":"\\n\\\\/"}]'}
execute if score #2sec value matches 30 as @e[type=text_display,tag=shootTargetSign] run data merge entity @s {transformation:{scale:[1.5f,1.5f,1.5f]},background:16711680,text:'[{"translate":"gp.practice.shoot","fallback":"SHOOT!","color":"aqua","bold":true,"italic":false},{"text":"\\n\\\\/"}]'}

#strength pad: only exists when shattered city is unlocked
execute if score #2sec value matches 0 if score #d3a1Unlocked value matches 1.. if loaded 818 31 -1061 unless block 818 31 -1061 pink_glazed_terracotta run function phan:game/0/practice/strength_pad_place
execute if score #2sec value matches 0 if score #d3a1Unlocked value matches ..0 if loaded 818 31 -1061 if block 818 31 -1061 pink_glazed_terracotta run function phan:game/0/practice/strength_pad_remove

#handle targets on the practice course
#1
scoreboard players set #test value 0
execute if block 965 3 -905 melon if block 956 1 -883 melon if block 946 3 -893 melon if loaded 963 -6 -903 run scoreboard players set #test value 1
execute if score #test value matches 0 if score #practiceGate1 value matches 1.. if loaded 963 -6 -903 run function phan:game/0/practice/gate_1_close
execute if score #test value matches 1 run function phan:game/0/practice/gate_1_open
scoreboard players set #pcTargetG1Count value 0
execute if block 965 3 -905 melon run scoreboard players add #pcTargetG1Count value 1
execute if block 956 1 -883 melon run scoreboard players add #pcTargetG1Count value 1
execute if block 946 3 -893 melon run scoreboard players add #pcTargetG1Count value 1
#2
scoreboard players set #test value 0
execute if block 916 0 -854 melon if block 923 3 -843 melon if loaded 906 -3 -842 run scoreboard players set #test value 1
execute if score #test value matches 0 if score #practiceGate2 value matches 1.. if loaded 906 -3 -842 run function phan:game/0/practice/gate_2_close
execute if score #test value matches 1 run function phan:game/0/practice/gate_2_open
#3
scoreboard players set #test value 0
execute if block 846 9 -1015 melon if block 853 9 -1015 melon run scoreboard players set #test value 1
execute if score #test value matches 0 if score #practiceGate3 value matches 1.. if loaded 846 9 -1015 if loaded 853 9 -1015 run function phan:game/0/practice/gate_3_close
execute if score #test value matches 1 run function phan:game/0/practice/gate_3_open