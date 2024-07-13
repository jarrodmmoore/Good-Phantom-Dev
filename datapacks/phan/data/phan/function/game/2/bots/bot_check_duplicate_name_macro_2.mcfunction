#no human players online with our name? all is well. leave now
$execute unless entity $(username) run return 0

#some has the name? ok, just add a 2 at the end
$data modify storage phan:bot_data_$(botid) username set value "$(username)2"
$execute unless entity $(username)2 run return 0

#someone STILL has our name? try switching name to CPU_x
$data modify storage phan:bot_data_$(botid) username set value "CPU_$(botid)"
$execute unless entity CPU_$(botid) run return 0

#someone named themselves CPU_x? ok, well there's no possible way someone can have a $ in their name
$data modify storage phan:bot_data_$(botid) username set value "$CPU_$(botid)"
#gottem