#we at the taco bell
scoreboard players set #inLobby value 1

#announce when admins go afk or return to the game
function phan:game/0/admin_afk_logic

#show the general bossbar at all times
bossbar set general_buffer players @a[tag=doneWithIntro]
bossbar set general_bossbar players @a[tag=doneWithIntro]

#do stuff based on sub-state
execute if score #subGameState value matches 0 run function phan:game/2/tick_select
execute if score #subGameState value matches 1 run function phan:game/2/tick_team_select