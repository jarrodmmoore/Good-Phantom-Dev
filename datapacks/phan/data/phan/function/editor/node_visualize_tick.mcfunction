#selected node shows no matter what
execute if entity @s[tag=selected] run return run function phan:editor/node_visualize

#other nodes must be within 60m of player
execute if entity @a[tag=phan_edit,distance=..60] run function phan:editor/node_visualize