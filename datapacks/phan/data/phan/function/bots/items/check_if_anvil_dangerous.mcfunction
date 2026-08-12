scoreboard players operation #checkID value = @s playerID
#is an anvil targeting us? take action!
execute as @e[type=armor_stand,tag=anvilEntity,distance=..8] if score @s playerID = #checkID value run return 1
#otherwise don't care
return 0