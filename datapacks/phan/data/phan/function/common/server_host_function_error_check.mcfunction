#throw up a warning if the server host can't handle running functions properly
execute if entity @a[limit=1] run scoreboard players add #errorCheck value 1
execute if score #errorCheck value matches 100 run tellraw @a ["",{"text":"[ ! ] Functions are not running properly!\nGood Phantom can NOT be played in this state.\nPlease report this to your server host.","color":"red"}]
#errorCheck gets set to 0 every time "phan:game/_state_index" executes properly.

#some servers don't seem to like it when you re-use a scoreboard objective over and over.
#in our case, that objective would be "value".
#"value" is used for global variables and temporary variables for calculations.
#fakeplayers commonly used as temporary variables include "#test", "#test2", "#math", "#math2", "#success".

#fussy servers will typically fail to run "phan:game/_state_index" all the way to the end.
#game/_state_index is basically the starting point for all game logic in Good Phantom.
#if we get "function failed due to an unexpected error" in there, that's a good indicator that things have gone horribly wrong.