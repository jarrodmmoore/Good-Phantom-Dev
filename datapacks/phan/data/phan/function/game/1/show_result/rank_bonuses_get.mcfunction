#calculate bonuses
function phan:game/1/show_result/rank_bonuses_calculate

#add the points for realsies
scoreboard players operation @s scoreTotal += #bonusTotal value
scoreboard players operation @s scoreBonus = #bonusTotal value