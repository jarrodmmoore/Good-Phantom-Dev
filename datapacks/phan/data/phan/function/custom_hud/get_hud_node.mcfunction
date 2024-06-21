#hud nodes are considered not available until proven otherwise
scoreboard players set #hudNodesAvailable value 0

#check through nodes 1-32 to see if there's an open one
scoreboard players set #hudNode value 1
function phan:custom_hud/get_hud_node_recursive