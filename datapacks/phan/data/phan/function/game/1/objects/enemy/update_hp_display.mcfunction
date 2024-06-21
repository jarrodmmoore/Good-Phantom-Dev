#choose a display based on our max HP
execute if score @s enemyMaxHP matches ..510 run function phan:game/1/objects/enemy/update_hp_display_1
execute if score @s enemyMaxHP matches 511..520 run function phan:game/1/objects/enemy/update_hp_display_2
execute if score @s enemyMaxHP matches 521..530 run function phan:game/1/objects/enemy/update_hp_display_3
execute if score @s enemyMaxHP matches 531..540 run function phan:game/1/objects/enemy/update_hp_display_4
execute if score @s enemyMaxHP matches 541..550 run function phan:game/1/objects/enemy/update_hp_display_5
execute if score @s enemyMaxHP matches 551.. run function phan:game/1/objects/enemy/update_hp_display_6