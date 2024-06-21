scoreboard players operation #enemyHP value = @s enemyHP
scoreboard players operation #enemyMaxHP value = @s enemyMaxHP
#if HP changed, send our HP values to the display and then make it update
execute unless score @s enemyHP = @s dEnemyHP on passengers if entity @s[type=text_display] run function phan:game/1/objects/enemy/update_hp_display_fake_go
#otherwise just keep the display alive
execute if score @s enemyHP = @s dEnemyHP on passengers if entity @s[type=text_display] run scoreboard players set @s lifespan 3