scoreboard players add #gameCycle value 1

#players announce their score for the act they just completed
execute if score #gameCycle value matches ..3 run tellraw @a[tag=doneWithIntro] ["",{"text":" "}]
execute if score #gameCycle value matches ..3 if score #freePlay value matches 0 as @a[tag=playerReservation,scores={pCurrentArea=1}] run tellraw @a[tag=doneWithIntro] ["",{"translate":"gp.game.act_number","with":[{"text":"1","color":"yellow","bold":true}],"color":"yellow","bold":true},{"text":" -- "},{"selector":"@s","color":"aqua"},{"text":" -- "},{"translate":"gp.game.points","with":[{"score":{"name":"@s","objective":"scoreArea1"},"color":"yellow"}],"color":"yellow"}]
execute if score #gameCycle value matches ..3 if score #freePlay value matches 0 as @a[tag=playerReservation,scores={pCurrentArea=2}] run tellraw @a[tag=doneWithIntro] ["",{"translate":"gp.game.act_number","with":[{"text":"2","color":"yellow","bold":true}],"color":"yellow","bold":true},{"text":" -- "},{"selector":"@s","color":"aqua"},{"text":" -- "},{"translate":"gp.game.points","with":[{"score":{"name":"@s","objective":"scoreArea2"},"color":"yellow"}],"color":"yellow"}]
execute if score #gameCycle value matches ..3 if score #freePlay value matches 0 as @a[tag=playerReservation,scores={pCurrentArea=3}] run tellraw @a[tag=doneWithIntro] ["",{"translate":"gp.game.act_number","with":[{"text":"3","color":"yellow","bold":true}],"color":"yellow","bold":true},{"text":" -- "},{"selector":"@s","color":"aqua"},{"text":" -- "},{"translate":"gp.game.points","with":[{"score":{"name":"@s","objective":"scoreArea3"},"color":"yellow"}],"color":"yellow"}]
execute if score #freePlay value matches 1 run scoreboard players operation #vAct value = #freePlayAct value
execute if score #freePlay value matches 1 as @a[tag=doneWithIntro] run function phan:levels/_index_title_act
execute if score #freePlay value matches 1 if score #freePlayAct value matches 1 as @a[tag=playerReservation] run tellraw @a[tag=doneWithIntro] ["",{"selector":"@s","color":"aqua"},{"text":" -- "},{"translate":"gp.game.points","with":[{"score":{"name":"@s","objective":"scoreArea1"},"color":"yellow"}],"color":"yellow"}]
execute if score #freePlay value matches 1 if score #freePlayAct value matches 2 as @a[tag=playerReservation] run tellraw @a[tag=doneWithIntro] ["",{"selector":"@s","color":"aqua"},{"text":" -- "},{"translate":"gp.game.points","with":[{"score":{"name":"@s","objective":"scoreArea2"},"color":"yellow"}],"color":"yellow"}]
execute if score #freePlay value matches 1 if score #freePlayAct value matches 3 as @a[tag=playerReservation] run tellraw @a[tag=doneWithIntro] ["",{"selector":"@s","color":"aqua"},{"text":" -- "},{"translate":"gp.game.points","with":[{"score":{"name":"@s","objective":"scoreArea3"},"color":"yellow"}],"color":"yellow"}]
execute if score #freePlay value matches 1 if score #assist_enabled_scoreattack value matches 1.. run tellraw @a[tag=doneWithIntro] ["",{"text":"❤","color":"#DD33FF"}]
execute if score #gameCycle value matches ..3 run tellraw @a[tag=doneWithIntro] ["",{"text":" "}]

#reset stuff in the level
function phan:levels/_index_init
function phan:game/1/spawning/reset_all

#manage item entities
function phan:items/reset_valid_objective

#stop music for everyone
scoreboard players set @a musicTrack 0
function phan:bgm/set_bgm
scoreboard players set #startMusic value 0

#revoke trigger for players that weren't always spectator
scoreboard players reset @a spectatorView
scoreboard players set #hurryUp value 0

#next game cycle!
execute if score #gameCycle value matches ..3 as @a[tag=playerReservation] run function phan:game/1/next_act_player
execute if score #gameCycle value matches ..3 run scoreboard players set @a specDoneLoading 0
execute if score #gameCycle value matches ..3 run scoreboard players set #showNametags value 0
execute if score #gameCycle value matches ..3 run team modify player nametagVisibility never

#finished the last game cycle? start showing end results
execute if score #gameCycle value matches 4.. if score #gameTime value matches ..999999 run scoreboard players set #gameTime value 1000000