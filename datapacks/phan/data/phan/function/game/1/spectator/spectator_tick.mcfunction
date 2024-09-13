#initial level load
execute unless score @s specDoneLoading matches 600.. run function phan:game/1/spectator/spectator_tick_loading

#done loading! blindness gone. we spectate now.
execute if score @s specDoneLoading matches 600.. run function phan:game/1/spectator/spectator_tick_ready