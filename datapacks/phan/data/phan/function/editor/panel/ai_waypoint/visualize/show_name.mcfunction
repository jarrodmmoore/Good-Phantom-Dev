#show name
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:5,CustomNameVisible:1b,CustomName:["",{text:"waypoint $(number)",color:"red"}]}

#show other slower particles while we're in here
execute if entity @s[tag=AIBC_midAir] run particle cloud ~ ~ ~ 0.25 0.25 0.25 0.05 1 force
execute if entity @s[tag=AIBC_requireGround] run particle block{block_state:"minecraft:stone"} ~ ~-.1 ~ 0.25 0 0.25 0 3 force

#low height
execute if entity @s[tag=AIBC_lowHeight] run summon area_effect_cloud ~ ~.5 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"can't collect at high height",color:"#BBBBBB"}]}

#hook
execute if entity @s[tag=AIBC_hookLeft,tag=!AIBC_hookRight] run return run summon area_effect_cloud ~ ~-.2 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:5,CustomNameVisible:1b,CustomName:["",{text:"<-",color:"white"}]}
execute if entity @s[tag=!AIBC_hookLeft,tag=AIBC_hookRight] run return run summon area_effect_cloud ~ ~-.2 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:5,CustomNameVisible:1b,CustomName:["",{text:"->",color:"white"}]}
execute if entity @s[tag=AIBC_hookLeft,tag=AIBC_hookRight] run summon area_effect_cloud ~ ~-.2 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:5,CustomNameVisible:1b,CustomName:["",{text:"<- ->",color:"white"}]}
#(this was placed here because it produced duplicates when in "visualize/waypoint_go". god only knows why)