execute if score @s combo matches 2..99 if score @s actionbarDelay matches ..0 run function phan:game/1/player/combo_show
execute if score @s combo matches 100.. if score @s actionbarDelay matches ..0 run function phan:game/1/player/combo_show_gold
execute if score @s combo matches ..1 if score @s actionbarDelay matches ..0 run title @s actionbar [""]