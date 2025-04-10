#give tip if we're out of mana and haven't bitten anything
execute if score @s energy matches ..1 run scoreboard players remove @s biteAware 1
execute if score @s biteAware matches ..-200 run tellraw @s ["",{translate:"gp.misc.brackets",color:"yellow",bold:true,with:[{translate:"gp.tip.tip"}]},{text:" "},{translate:"gp.tip.bite",with:[{translate:"gp.game.bite",color:"aqua"}]}]
execute if score @s biteAware matches ..-200 run scoreboard players set @s biteAware 1

#if we bite for any reason, then we don't need to hear this noise
execute if score @s inputCooldownA matches 1.. run scoreboard players set @s biteAware 1