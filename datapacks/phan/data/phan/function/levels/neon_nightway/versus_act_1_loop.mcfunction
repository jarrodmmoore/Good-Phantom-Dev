#act 1

#teleport pad
execute as @a[tag=playing] at @s if block ~ ~-1 ~ red_glazed_terracotta run function phan:levels/neon_nightway/versus_act_1_teleport



#make sure gates are closed on lap 1
execute if score #nnAct1State value matches 0 if loaded -3097 66 149 if loaded -3087 66 149 if block -3097 66 149 structure_void run fill -3097 66 149 -3087 72 149 orange_stained_glass replace structure_void
execute if score #nnAct1State value matches 0 if loaded -3236 81 240 if block -3236 81 240 structure_void run fill -3236 81 240 -3236 87 250 orange_stained_glass replace structure_void

#clear rings from on-ramp after lap 1
execute if score #nnAct1State value matches 0 if entity @a[tag=playing,scores={check=10..}] run function phan:levels/neon_nightway/versus_act_1_clear_start_rings

#open gate 1 on lap 2
execute if score #nnAct1State value matches 1 if entity @a[tag=playing,scores={lap=2..}] if loaded -3097 66 149 if loaded -3087 66 149 if block -3097 66 149 orange_stained_glass run fill -3097 66 149 -3087 72 149 structure_void replace orange_stained_glass
execute if score #nnAct1State value matches 1 if entity @a[tag=playing,scores={lap=3..}] run scoreboard players add #nnAct1State value 1

#open gate 2 on lap 3
execute if score #nnAct1State value matches 2 if entity @a[tag=playing,scores={lap=3..}] if loaded -3236 81 240 if block -3236 81 240 orange_stained_glass run fill -3236 81 240 -3236 87 250 structure_void replace orange_stained_glass
execute if score #nnAct1State value matches 2 if entity @a[tag=playing,scores={lap=4..}] run scoreboard players add #nnAct1State value 1

#close gate 1 again on lap 3
execute if score #nnAct1State value matches 3 if entity @a[tag=playing,scores={lap=4..}] if loaded -3097 66 149 if loaded -3087 66 149 if block -3097 66 149 structure_void run fill -3097 66 149 -3087 72 149 orange_stained_glass replace structure_void
