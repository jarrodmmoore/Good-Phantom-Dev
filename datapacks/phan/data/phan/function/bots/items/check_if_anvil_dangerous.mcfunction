scoreboard players operation #checkID value = @s playerID
#is an anvil targeting us? take action!
execute as @e[tag=anvilEntity,type=armor_stand,distance=..8] if score @s playerID = #checkID value run return 1
#otherwise don't care
return 0