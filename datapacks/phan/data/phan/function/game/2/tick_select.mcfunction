#all items are gone? return to lobby as a fail-safe
execute unless entity @e[type=item,tag=modeSelect] run function phan:game/2/return_to_cabin_auto

#block off versus mode if there's not enough players
#execute store result score #test value run execute if entity @a[tag=doneWithIntro]
#execute if score #test value matches ..1 run fill 204 -21 122 206 -19 124 barrier replace structure_void
#execute if score #test value matches ..1 if score #5Hz value matches 0 positioned 205 -21 123 run particle block_marker{block_state:"barrier"} ~ ~2.5 ~ 0 0 0 1 1 force @a[tag=doneWithIntro]
#execute if score #test value matches 2.. run fill 204 -21 122 206 -19 124 structure_void replace barrier

#admin active? all non-admin players spectate the admin until they go afk
execute if score #forceSpecAdmin value matches 1 positioned 198 -22 118 run function phan:game/2/force_spectate_admin

#tell players they can sneak to do a thing
execute as @a[gamemode=adventure,tag=doneWithIntro] run function phan:game/2/inform_player_about_sneak_select

#visuals?

#if an item gets picked up, that means we selected that thing
execute as @a[tag=!sneaking] if items entity @s hotbar.* *[custom_data~{modeSelectScore:1b}] run function phan:game/2/start_mode_score_attack
execute as @a[tag=!sneaking] if items entity @s hotbar.* *[custom_data~{modeSelectTime:1b}] run function phan:game/2/start_mode_time_attack
execute as @a[tag=!sneaking] if items entity @s hotbar.* *[custom_data~{modeSelectVersus:1b}] run function phan:game/2/start_mode_versus

execute as @a[tag=sneaking] if items entity @s hotbar.* *[custom_data~{modeSelectScore:1b}] run function phan:game/2/go_to_act_select {desired_gamemode:1}
execute as @a[tag=sneaking] if items entity @s hotbar.* *[custom_data~{modeSelectTime:1b}] run function phan:game/2/go_to_act_select {desired_gamemode:2}
execute as @a[tag=sneaking] if items entity @s hotbar.* *[custom_data~{modeSelectVersus:1b}] run function phan:game/2/go_to_act_select {desired_gamemode:3}

execute as @a if items entity @s hotbar.* *[custom_data~{modeSelectCabin:1b}] run function phan:game/2/try_return_to_cabin