#fail if admin required and we're not admin
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run function phan:game/0/admin_required
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run return 0

#set level based on who we entered the dream of
scoreboard players operation #chosenLevel value = @s nearPlayer

#either start the game or choose mode, depending if there are options available
function phan:game/2/_2_init