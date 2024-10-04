#recall the level of bots we beat (should be saved as "#math value" before running)
scoreboard players operation #offerTrophy value = #math value

#need our placement in the 10's digit of #offerTrophy
$scoreboard players add #offerTrophy value $(placement_score)

#now record it!
function phan:levels/_index_record_trophy



#player gets advancement for getting gold trophy at max difficulty
execute if score #offerTrophy value matches 35.. run advancement grant @s only phan:portal_race/try_harder

#player gets advancement for getting all gold trophies
execute if score @s dream1Trophy matches 30.. run advancement grant @s only phan:portal_race/go_for_gold gfg_dream1
execute if score @s dream2Trophy matches 30.. run advancement grant @s only phan:portal_race/go_for_gold gfg_dream2
execute if score @s dream3Trophy matches 30.. run advancement grant @s only phan:portal_race/go_for_gold gfg_dream3
execute if score @s dream4Trophy matches 30.. run advancement grant @s only phan:portal_race/go_for_gold gfg_dream4
execute if score @s dream5Trophy matches 30.. run advancement grant @s only phan:portal_race/go_for_gold gfg_dream5

#player gets advancement for getting all gold trophies at max difficulty
execute if score @s dream1Trophy matches 35.. run advancement grant @s only phan:portal_race/phantom_menace pm_dream1
execute if score @s dream2Trophy matches 35.. run advancement grant @s only phan:portal_race/phantom_menace pm_dream2
execute if score @s dream3Trophy matches 35.. run advancement grant @s only phan:portal_race/phantom_menace pm_dream3
execute if score @s dream4Trophy matches 35.. run advancement grant @s only phan:portal_race/phantom_menace pm_dream4
execute if score @s dream5Trophy matches 35.. run advancement grant @s only phan:portal_race/phantom_menace pm_dream5