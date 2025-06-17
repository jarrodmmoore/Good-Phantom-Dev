#play sound if we used reset item
tag @s add soundSelf
execute if items entity @s weapon.mainhand *[custom_data~{slot8:1b}] at @s run particle falling_dust{block_state:"red_concrete"} ~ ~1 ~ 0.3 0.3 0.3 0 10
execute if items entity @s weapon.mainhand *[custom_data~{slot8:1b}] at @s run playsound minecraft:entity.ender_dragon.hurt master @a[tag=!soundSelf] ~ ~ ~ 1.5 0.5
tag @s remove soundSelf

#go back to cabin
tp @s 198 -6 118 -90 0
effect give @s blindness 2 1 true
effect give @s slow_falling 1 0 true
effect clear @s night_vision
scoreboard players set @s skyboxSet 1
execute if score #gameState value matches 0 run tag @s remove playing
tag @s remove getNightVisionInSA

#if we're in creative and have been using the dream manager, send us back to the dream we were editing
execute if entity @s[gamemode=creative,scores={levelUID=1..}] run function phan:game/0/player/return_to_edited_level

#set back to night if there are no other creative mode players
execute at @s unless entity @a[gamemode=creative,distance=1..] run time set 18000

#reset scores and clear inventory
scoreboard players set @s energy 0
xp set @s 100 levels
xp set @s 0 points
clear @s
scoreboard players set @s pShowHUD 0
scoreboard players set @s pSubGameState 0
tag @s[tag=practiceCourse] remove practiceCourse

#play sound
execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.enderman.teleport",targets:"@s",pitch:".8"}

#music
function phan:bgm/adopt_global_music_track
function phan:bgm/set_self_bgm_delayed