#executed by the controller item pickup at @s

#particles, so the item looks more inviting
execute if score #requireAdmin value matches 0 if score #5Hz value matches 1 run particle instant_effect ~ ~.25 ~ 0.25 0.25 0.25 0.01 1 force @a[distance=..12]
execute if score #requireAdmin value matches 1 if score #5Hz value matches 1 run particle instant_effect ~ ~.25 ~ 0.25 0.25 0.25 0.01 1 force @a[tag=admin,distance=..12]

#if admin required, tell non-admins they can't use the controller
execute if score #requireAdmin value matches 1 run scoreboard players set @a[distance=..1,tag=!admin] actionbarDelay 5
execute if score #requireAdmin value matches 1 run title @a[distance=..1,tag=!admin] actionbar ["",{translate:"gp.misc.need_admin_tag",color:"red"}]

#nearby player picks up controller and takes control
execute if score #requireAdmin value matches 0 as @a[gamemode=!spectator,distance=..1] run function phan:phantom_racer/player_pick_up_controller
execute if score #requireAdmin value matches 1 as @a[gamemode=!spectator,tag=admin,distance=..1] run function phan:phantom_racer/player_pick_up_controller