#reset players if they fall down
execute if score #vAct value matches 1 as @a[tag=playing,gamemode=adventure,scores={location_y=..35}] run function phan:game/4/race/respawn
execute if score #vAct value matches 2 as @a[tag=playing,gamemode=adventure,scores={location_y=..40}] run function phan:game/4/race/respawn
execute if score #vAct value matches 2 as @a[tag=playing,gamemode=adventure] at @s if block ~ -55 ~ #phan:area_check run scoreboard players set @s compassShowTime 20
execute if score #vAct value matches 3 as @a[tag=playing,gamemode=adventure,scores={location_y=..35}] run function phan:game/4/race/respawn