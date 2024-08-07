effect give @a[tag=doneWithIntro] blindness 5 4 true
execute if score #podiumSequenceDimension value matches 1 in overworld run function phan:game/5/players_teleport_to_podium_area_macro with storage phan:podium_sequence
execute if score #podiumSequenceDimension value matches 2 in the_nether run function phan:game/5/players_teleport_to_podium_area_macro with storage phan:podium_sequence
execute if score #podiumSequenceDimension value matches 3 in the_end run function phan:game/5/players_teleport_to_podium_area_macro with storage phan:podium_sequence
effect give @a[tag=doneWithIntro] slow_falling 4 1 true