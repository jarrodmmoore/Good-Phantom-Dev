#all items are gone? return to lobby as a fail-safe
execute unless entity @e[type=item,tag=modeSelect] run function phan:game/2/return_to_cabin_auto


#make the level previews look nice and inviting
execute if score #10Hz value matches 0 as @e[type=item,tag=actSelect] at @s run particle end_rod ~ ~.25 ~ 0.2 0.2 0.2 0.025 1 force @a[tag=doneWithIntro,distance=..75]


#admin active? all non-admin players spectate the admin until they go afk
execute if score #forceSpecAdmin value matches 1 positioned 198 -22 118 run function phan:game/2/force_spectate_admin

#if an item gets picked up, that means we selected that thing
execute as @a if items entity @s hotbar.* *[custom_data~{actSelectItem:1}] run function phan:game/2/select_act_generic {act:1}
execute as @a if items entity @s hotbar.* *[custom_data~{actSelectItem:2}] run function phan:game/2/select_act_generic {act:2}
execute as @a if items entity @s hotbar.* *[custom_data~{actSelectItem:3}] run function phan:game/2/select_act_generic {act:3}
execute as @a if items entity @s hotbar.* *[custom_data~{actSelectItem:4}] run function phan:game/2/select_act_generic {act:4}

#go home?
execute as @a if items entity @s hotbar.* *[custom_data~{modeSelectCabin:1b}] run function phan:game/2/try_return_to_cabin