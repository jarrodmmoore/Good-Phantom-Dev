particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"15"}}} ~ ~1 ~ 0 0 0 1 1 force @a[tag=!vsHomeStretch,scores={check=11}]
execute if entity @s[tag=checkWarn] run particle block_marker{block_state:"barrier"} ~ ~1 ~ 0 0 0 1 1 normal @a[tag=playing,scores={check=..10,inputCooldownB=..0}]
execute if entity @s[tag=checkWrongWay] run particle block_marker{block_state:"barrier"} ~ ~1 ~ 0 0 0 1 1 normal @a[tag=playing,scores={checkFake=13..}]

#draw an eye at half length
scoreboard players remove #halfLength value 1
execute if score #halfLength value matches 0 if score #drawEyes value matches 1.. run function phan:game/4/checkpoint_visual/draw_eye_editor

scoreboard players remove #temp2 visualLength 1

execute if score #temp2 visualLength matches 1.. positioned ^ ^ ^1 run function phan:game/4/checkpoint_visual/draw_good/12