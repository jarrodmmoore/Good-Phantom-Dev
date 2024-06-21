#players announce their score for the act they just completed
tellraw @a ["",{"text":" "}]
scoreboard players operation #vAct value = #freePlayAct value
execute as @a[tag=doneWithIntro] run function phan:levels/_index_title_act
#execute as @a[limit=1,tag=playing] run tellraw @a[tag=doneWithIntro] ["",{"translate":"gp.game.act_number","with":[{"score":{"name":"@s","objective":"pCurrentArea"},"color":"yellow","bold":true}],"color":"yellow","bold":true},{"text":" -- "},{"selector":"@s","color":"aqua"}]
execute as @a[limit=1,tag=playing] run tellraw @a[tag=doneWithIntro] ["",{"selector":"@s","color":"aqua"}]
execute as @a[limit=1,tag=playing] run function phan:game/1/show_result/time_raw_print
tellraw @a ["",{"text":" "}]

#now go back to lobby
function phan:game/0/_0_init