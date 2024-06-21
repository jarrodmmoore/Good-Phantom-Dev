#reset players if they fall down
execute if score #vAct value matches 1 as @a[tag=playing,gamemode=adventure,scores={location_y=..70}] run function phan:game/4/race/respawn
execute if score #vAct value matches 2 as @a[tag=playing,gamemode=adventure,scores={location_y=..40}] run function phan:game/4/race/respawn
execute if score #vAct value matches 3 as @a[tag=playing,gamemode=adventure,scores={location_y=..50}] run function phan:game/4/race/respawn