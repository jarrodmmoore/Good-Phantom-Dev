#figure out what trophy to offer
function phan:game/5/calculate_trophy_offered
#(output is in "#math value")

#value changed? do something about it
execute unless score #math value = #offerTrophy value run function phan:game/2/bots/trophy/update_trophy