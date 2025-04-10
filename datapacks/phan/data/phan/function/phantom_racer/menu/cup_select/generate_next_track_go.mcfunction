#$(level_id) = dream
#$(act) = act

#read what level we're trying to load
$scoreboard players set #test2 value $(level_id)
$scoreboard players set #test3 value $(act)

#might override models in special cases:

#random track
execute if score #test2 value matches 0 if score #test3 value matches ..1 run data modify storage phan:level_index model set value ["",{text:"\uE501",color:"white"}]
execute if score #test2 value matches 0 if score #test3 value matches 2 run data modify storage phan:level_index model set value ["",{text:"\uE502",color:"white"}]
execute if score #test2 value matches 0 if score #test3 value matches 3.. run data modify storage phan:level_index model set value ["",{text:"\uE503",color:"white"}]
#exit out and render it right now! don't try to look up data on a level that doesn't exist.
execute if score #test2 value matches ..0 run return run function phan:phantom_racer/menu/cup_select/generate_next_track_go_2 with storage phan:level_index
#=====

#ok, we can look up the level just fine.

#get the true model
$data modify storage phan:level_index model set from storage phan_dream_$(level_id):pr_act_$(act) thumbnail_text

#level ids below 1000: replace image with static if we haven't discovered the level yet
#$execute if score #test2 value matches ..999 if score #d$(level_id)a$(act)Unlocked value matches 0 run data modify storage phan:level_index model set value ["",{text:"\uE500",color:"white"}]
#^ jk, i decided to remove the static for undiscovered dreams here.
#Q: why?
#A:
#   1) it would confuse players and probably make them assume they can't play a cup
#   2) i decided to switch from item_display models to text_display font character so the lighting didn't look horrible. this means no more animated textures.

#we need to go deeper...
function phan:phantom_racer/menu/cup_select/generate_next_track_go_2 with storage phan:level_index