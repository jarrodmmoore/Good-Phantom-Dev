#HEALTH
#check health
scoreboard players add @s enemyHP 0
execute if entity @s[tag=hasDisplayHP] run function phan:game/1/objects/enemy/update_hp_display_fake
scoreboard players operation @s dEnemyHP = @s enemyHP
execute if entity @s[tag=!artificialHP] store result score @s enemyHP run data get entity @s Health
execute if entity @s[tag=ohKO] run scoreboard players set @s enemyHP 500

#need an HP display but don't have one? make one!
execute if entity @s[tag=needsDisplayHP] run function phan:game/1/objects/enemy/create_hp_display

#update health display if our health changed
execute if entity @s[tag=!hasDisplayHP] unless score @s enemyHP = @s dEnemyHP run function phan:game/1/objects/enemy/update_hp_display


#BEHAVIOR
#do we have a vehicle? manage it
execute if entity @s[tag=enemyHasVehicle] run function phan:game/1/objects/enemy/vehicle_prepare

#special code for individual enemy types
execute if entity @s[tag=enemySpecialCode] run function phan:game/1/objects/enemy/_special_code_index

#die in water
execute if entity @s[tag=dieInWater] if block ~ ~ ~ water run scoreboard players set @s enemyHP 500


#DEATH
#die if below 500hp
execute if score @s enemyHP matches ..500 run function phan:game/1/objects/enemy_generic_die
#this used to be 1000hp, but it turns out that minecraft will only represent health up to 1028... but only on certain servers? weird.
#i caught this issue just a few days before release & reduced the health/maxhp of every enemy in the game by 500.
#i really hope this change doesn't have any side effects...