#force non-admins to spectate an admin
execute as @a[tag=!admin,tag=doneWithIntro,gamemode=adventure] run gamemode spectator @s
execute as @a[tag=!admin,tag=doneWithIntro,gamemode=spectator] at @s run spectate @a[limit=1,sort=nearest,tag=admin] @s
execute as @a[tag=!admin,tag=doneWithIntro,gamemode=spectator] at @s run title @s actionbar ["",{"translate":"gp.game.spectator_viewpoint","with":[{"selector":"@a[limit=1,sort=nearest,tag=admin]","color":"aqua"}],"color":"white"}]

#admin disconnected or went afk? return players to adventure mode
execute if score #requireAdmin value matches 0 run function phan:game/2/force_spectate_admin_exit