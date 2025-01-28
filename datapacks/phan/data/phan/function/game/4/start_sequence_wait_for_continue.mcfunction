#time stands still until input
execute if entity @a[tag=playing] if score #gameTime value matches 30..34 run scoreboard players set #gameTime value 30

#count up how long we've been here
scoreboard players add #321go value 1
#if it's been longer than a minute, admin loses control over starting the round
execute if score #321go value matches 1300 if score #requireAdmin value matches 1.. run tellraw @a[tag=doneWithIntro] ["",{"translate":"gp.misc.admin_idle","italic":true}]
execute if score #321go value matches 1300.. if score #requireAdmin value matches 1.. run scoreboard players set #requireAdmin value 0

#hold the grand prix round timer in place while we're waiting
execute if score #grandPrixRoundAnimation value matches 60..65 run scoreboard players set #grandPrixRoundAnimation value 60

#tell players to input after 2sec delay
execute if score #321go value matches 110.. if score #2sec value matches ..19 run title @a[tag=doneWithIntro] actionbar ["",{"text":">  "},{"translate":"gp.lobby.press_key_to_continue","with":[{"keybind":"key.use","color":"white"}]},{"text":"  <"}]
execute if score #321go value matches 110.. if score #2sec value matches 20.. run title @a[tag=doneWithIntro] actionbar ["",{"text":"> ","color":"aqua"},{"translate":"gp.lobby.press_key_to_continue","with":[{"keybind":"key.use","color":"white"}]},{"text":" <","color":"aqua"}]

#players try to make input to continue
execute if score #321go value matches 110.. as @a[tag=doneWithIntro,scores={carrotInput=1..,inputCooldown=..0}] run function phan:game/4/start_sequence_try_continue


#no players in a game that expects players? skip to gameTime 100 so we can exit immediately
execute unless entity @a[tag=playing] unless score #botsOnly value matches 1.. run scoreboard players set #gameTime value 100

#done? stop messing with the countdown variable, then
execute if score #gameTime value matches 35.. run scoreboard players set #321go value 99
execute if score #gameTime value matches 35.. run title @a[tag=doneWithIntro] actionbar [""]

#restore admin requirement again to prevent exploits
execute if score #adminMode value matches 1.. if entity @a[tag=admin,scores={idleTime=..3600}] run scoreboard players set #requireAdmin value 1
#i mean, it's incredibly unlikely, but a 1 tick window is still a vulnerability and i don't like that.