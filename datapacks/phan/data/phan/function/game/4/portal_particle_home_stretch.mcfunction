particle instant_effect ~ ~10 ~ 1.2 5 1.2 1 2 force @a
execute if score #2sec value matches 0 run particle block_marker{block_state:"barrier"} ~ ~2 ~ 0 0 0 1 1 force @a[tag=playing,tag=!vsHomeStretch,distance=..10]