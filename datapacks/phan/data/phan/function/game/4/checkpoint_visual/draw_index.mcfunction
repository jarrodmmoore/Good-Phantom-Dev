execute if score #draw_mode value matches 1 run function phan:game/4/checkpoint_visual/draw_editor

execute if score #draw_mode value matches 2 run function phan:game/4/checkpoint_visual/draw_good/_index

execute if score #draw_mode value matches -1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:2,Tags:["setme_v1"]}
