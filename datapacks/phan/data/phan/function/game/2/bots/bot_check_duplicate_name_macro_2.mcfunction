#no human players online with our name? all is well. leave now
$execute unless entity $(username) run return 0

#someone has our name? try switching name to CPU_x
$data modify storage phan:bot_data_$(botid) username set value "CPU_$(botid)"
$execute unless entity CPU_$(botid) run return 0

#someone named themselves CPU_x? ok, well there's no possible way someone can have a $ in their name
$data modify storage phan:bot_data_$(botid) username set value "$CPU_$(botid)"
#gottem