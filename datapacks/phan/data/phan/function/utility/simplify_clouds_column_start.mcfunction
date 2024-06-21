#################################
##fill inbetweens with lapis

##set endpoint
#execute positioned ~ 156 ~ if block ~ ~ ~ air run setblock ~ ~ ~ structure_void

#scoreboard players set #findBlock value 0
#scoreboard players set #recursions value 80
#execute positioned ~ 180 ~ run function phan:utility/simplify_clouds_down

#scoreboard players set #findBlock value 0
#scoreboard players set #recursions value 80
#execute positioned ~ 157 ~ run function phan:utility/simplify_clouds_up

##swap voids back to air
#fill ~ 156 ~ ~ 180 ~ air replace structure_void
#################################


#################################
#cut lapis from inbetween
scoreboard players set #recursions value 40
execute if block ~ ~ ~ air run function phan:utility/cleanup_up
#################################