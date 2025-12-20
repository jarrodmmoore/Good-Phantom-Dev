#show respawn progress using a text display (it always renders full bright regardless of camera angle)
scoreboard players operation #test value = @s age
execute positioned ~ ~.6 ~ if loaded ~ ~ ~ summon text_display run function phan:game/4/item_box_respawn_particles_summon