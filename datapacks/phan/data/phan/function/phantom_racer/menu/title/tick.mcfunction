#animation
scoreboard players add #tvAnimation value 1
execute as @e[type=text_display,distance=..7,tag=tvLogo] at @s run function phan:phantom_racer/menu/title/logo_animate
#press jump button text
execute if score #tvAnimation value matches 25.. as @e[type=text_display,distance=..5,tag=tvPressStart] at @s run function phan:phantom_racer/menu/title/press_start_animate

#listen for any button pressed (after animation is done)
execute if score #tvAnimation value matches 25.. if score #tvCooldown value matches ..0 if score #tvInputJump value matches 1.. run function phan:phantom_racer/menu/title/go_to_mode_select
