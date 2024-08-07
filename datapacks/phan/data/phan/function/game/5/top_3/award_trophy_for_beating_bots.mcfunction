#recall the level of bots we beat (should be saved as "#math value" before running)
scoreboard players operation #offerTrophy value = #math value

#need our placement in the 10's digit of #offerTrophy
$scoreboard players add #offerTrophy value $(placement_score)

#now record it!
function phan:levels/_index_record_trophy


#we can be sure we won't have to run this again for any lower placements
#because the high score recorder will just bounce them anyway
scoreboard players set #math value 0