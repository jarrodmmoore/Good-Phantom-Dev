#relevant arguments:
#(model)
#(rotation)
#(tag)

$summon item_display ~ ~-10 ~ {Tags:["lobbyProp","actPreviewImage","$(tag)","rotateMe"],brightness:{block:15,sky:15},item:{id:"stone",components:{"minecraft:item_model":"$(model)"}}}
$execute as @e[type=item_display,tag=rotateMe] at @s run tp @s ~ ~10 ~ $(rotation) ~
tag @e[type=item_display,tag=rotateMe] remove rotateMe