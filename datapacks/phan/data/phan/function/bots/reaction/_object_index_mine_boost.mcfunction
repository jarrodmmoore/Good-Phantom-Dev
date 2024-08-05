#executed by the entity our bot is reacting to


#=====
#potential temporary targets (the objects checked first will probably take priority)

#boost off of mines if we're ready to do that
execute if score #botSkill value matches 3.. if score #targetExists value matches 0 positioned ^ ^ ^5 if entity @s[tag=botRecognizesTrap,distance=..5] positioned ^ ^ ^-5 run function phan:bots/reaction/mine_boost

#=====