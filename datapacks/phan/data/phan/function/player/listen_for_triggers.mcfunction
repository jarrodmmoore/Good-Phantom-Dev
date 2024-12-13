#music toggle trigger
scoreboard players enable @s musicToggle
execute if score @s musicToggle matches 1.. run function phan:bgm/music_toggle

#nav compass trigger
scoreboard players enable @s navCompass
execute if score @s navCompass matches 1.. run function phan:player/toggle_nav_compass

#show tip trigger
scoreboard players enable @s tip
execute if score @s tip matches 1.. run function phan:game/0/tip_show

#checkpoint auto reset toggle trigger
scoreboard players enable @s toggleAutoReset
execute if score @s toggleAutoReset matches 1.. run function phan:player/toggle_auto_reset

#auto jump pad toggle
scoreboard players enable @s toggleAutoJumpPads
execute if score @s toggleAutoJumpPads matches 1.. run function phan:player/toggle_auto_jump_pads
