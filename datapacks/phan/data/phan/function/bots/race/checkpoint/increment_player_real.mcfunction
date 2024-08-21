function phan:game/4/race/checkpoint/operate/checkpoint_add_1
#sync checkFake with check
scoreboard players operation @s checkFake = @s check

#add ender eyes
execute if score @s playerGetEyes matches ..-1 run scoreboard players set @s playerGetEyes 0
scoreboard players operation @s eyesToAdd += @s playerGetEyes
scoreboard players set @s playerGetEyes 0

#manage the lists of rings and boxes the player recently hit
scoreboard players add @s ringID 1
execute if score @s ringID matches 2.. run scoreboard players set @s ringID 0
execute if score @s ringID matches 0 run function phan:game/4/objects/ring_clear_list_a
execute if score @s ringID matches 1 run function phan:game/4/objects/ring_clear_list_b
scoreboard players add @s boxID 1
execute if score @s boxID matches 2.. run scoreboard players set @s boxID 0
execute if score @s boxID matches 0 run function phan:game/4/objects/box_clear_list_a
execute if score @s boxID matches 1 run function phan:game/4/objects/box_clear_list_b


#check or record timestamp on this checkpoint to figure out item balancing
function phan:game/4/race/checkpoint/timestamp/_index

#players further behind get free energy
function phan:game/4/race/checkpoint/energy_bonus_from_checkpoint


#refresh the number of reroutes we can do
scoreboard players operation @s botAllowedReroutes = #BOT_ALLOWED_REROUTES value

#clear tags
tag @s[tag=incrementCheckReal] remove incrementCheckReal
#this overrides any optional check increment
tag @s[tag=incrementCheckOptional] remove incrementCheckOptional

#send data to controller
tag @s add hasDataToSend