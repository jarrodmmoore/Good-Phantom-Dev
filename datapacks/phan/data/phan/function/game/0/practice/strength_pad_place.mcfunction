fill 818 31 -1061 819 31 -1060 pink_glazed_terracotta
fill 818 32 -1061 819 32 -1060 light
kill @e[type=text_display,tag=strengthPadText]
execute positioned 818 33 -1061 positioned ~.5 ~.5 ~.5 run summon text_display ~ ~ ~ {Tags:["practiceProp","strengthPadText"],alignment:"center",billboard:"center",text:'{"translate":"gp.practice.strength_pad","color":"red","bold":true,"italic":false}'}