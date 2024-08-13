#recall the level of bots we beat (should be saved as "#math value" before running)
scoreboard players operation #offerTrophy value = #math value

#need our placement in the 10's digit of #offerTrophy
$scoreboard players add #offerTrophy value $(placement_score)

#now record it!
function phan:levels/_index_record_trophy



#player gets advancement for getting gold trophy at max difficulty
execute if score #offerTrophy value matches 35.. run advancement grant @s only phan:portal_race/try_harder

#player gets advancement for getting all gold trophies
execute if score @s dream1Trophy matches 30.. if score @s dream2Trophy matches 30.. if score @s dream3Trophy matches 30.. if score @s dream4Trophy matches 30.. if score @s dream5Trophy matches 30.. run advancement grant @s only phan:portal_race/go_for_gold

#player gets advancement for getting all gold trophies at max difficulty
execute if score @s dream1Trophy matches 35.. if score @s dream2Trophy matches 35.. if score @s dream3Trophy matches 35.. if score @s dream4Trophy matches 35.. if score @s dream5Trophy matches 35.. run advancement grant @s only phan:portal_race/phantom_menace