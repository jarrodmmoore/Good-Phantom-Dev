execute if score @s tLevelManager matches 1000 run return run function phan:level_manager/panel/general/_menu_lookup
execute if score @s tLevelManager matches 1001 run return run function phan:level_manager/panel/score_attack/_menu_lookup
execute if score @s tLevelManager matches 1002 run return run function phan:level_manager/panel/portal_race/_menu_lookup
execute if score @s tLevelManager matches 1003 run return run function phan:level_manager/panel/erase/_menu_lookup
execute if score @s tLevelManager matches 1004 run return run function phan:level_manager/panel/erase/_menu_scores_lookup
execute if score @s tLevelManager matches 1005 run return run function phan:level_manager/panel/_menu_lookup
execute if score @s tLevelManager matches 1006 run return run function phan:level_manager/erase_level_scores
execute if score @s tLevelManager matches 1007 run return run function phan:level_manager/set_field_numeric {resource_location:'dream_data',nbt:'selectable',value:1}
execute if score @s tLevelManager matches 1008 run return run function phan:level_manager/set_field_numeric {resource_location:'dream_data',nbt:'selectable',value:0}
execute if score @s tLevelManager matches 1009 run return run function phan:level_manager/cycle_field_down {resource_location:'pr_podium',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1010 run return run function phan:level_manager/cycle_field {resource_location:'pr_podium',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1011 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_podium',nbt:'night_vision',value:1}
execute if score @s tLevelManager matches 1012 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_podium',nbt:'night_vision',value:0}
execute if score @s tLevelManager matches 1013 run return run function phan:level_manager/cycle_field_down {resource_location:'pr_podium',nbt:'teleport_dimension',offset:1,mod:3}
execute if score @s tLevelManager matches 1014 run return run function phan:level_manager/cycle_field {resource_location:'pr_podium',nbt:'teleport_dimension',offset:1,mod:3}
execute if score @s tLevelManager matches 1015 run return run function phan:level_manager/warp_to_podium
execute if score @s tLevelManager matches 1016 run return run function phan:level_manager/set_field_numeric {resource_location:'portal_race',nbt:'selectable',value:1}
execute if score @s tLevelManager matches 1017 run return run function phan:level_manager/set_field_numeric {resource_location:'portal_race',nbt:'selectable',value:0}
execute if score @s tLevelManager matches 1018 run return run function phan:level_manager/panel/portal_race/act/_menu_lookup_act_set {act:1}
execute if score @s tLevelManager matches 1019 run return run function phan:level_manager/warp_to_act {mode:'pr',act:'1'}
execute if score @s tLevelManager matches 1020 run return run function phan:level_manager/panel/portal_race/act/_menu_lookup_act_set {act:2}
execute if score @s tLevelManager matches 1021 run return run function phan:level_manager/warp_to_act {mode:'pr',act:'2'}
execute if score @s tLevelManager matches 1022 run return run function phan:level_manager/panel/portal_race/act/_menu_lookup_act_set {act:3}
execute if score @s tLevelManager matches 1023 run return run function phan:level_manager/warp_to_act {mode:'pr',act:'3'}
execute if score @s tLevelManager matches 1024 run return run function phan:level_manager/panel/portal_race/act/_menu_lookup_act_set {act:4}
execute if score @s tLevelManager matches 1025 run return run function phan:level_manager/warp_to_act {mode:'pr',act:'4'}
execute if score @s tLevelManager matches 1026 run return run function phan:level_manager/panel/portal_race/_menu_podium_lookup
execute if score @s tLevelManager matches 1027 run return run function phan:level_manager/warp_to_podium
execute if score @s tLevelManager matches 1028 run return run function phan:level_manager/cycle_field_down {resource_location:'pr_act_1',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1029 run return run function phan:level_manager/cycle_field_down {resource_location:'pr_act_2',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1030 run return run function phan:level_manager/cycle_field_down {resource_location:'pr_act_3',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1031 run return run function phan:level_manager/cycle_field_down {resource_location:'pr_act_4',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1032 run return run function phan:level_manager/cycle_field {resource_location:'pr_act_1',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1033 run return run function phan:level_manager/cycle_field {resource_location:'pr_act_2',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1034 run return run function phan:level_manager/cycle_field {resource_location:'pr_act_3',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1035 run return run function phan:level_manager/cycle_field {resource_location:'pr_act_4',nbt:'skybox',offset:1,mod:4}
execute if score @s tLevelManager matches 1036 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_1',nbt:'night_vision',value:1}
execute if score @s tLevelManager matches 1037 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_2',nbt:'night_vision',value:1}
execute if score @s tLevelManager matches 1038 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_3',nbt:'night_vision',value:1}
execute if score @s tLevelManager matches 1039 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_4',nbt:'night_vision',value:1}
execute if score @s tLevelManager matches 1040 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_1',nbt:'night_vision',value:0}
execute if score @s tLevelManager matches 1041 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_2',nbt:'night_vision',value:0}
execute if score @s tLevelManager matches 1042 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_3',nbt:'night_vision',value:0}
execute if score @s tLevelManager matches 1043 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_4',nbt:'night_vision',value:0}
execute if score @s tLevelManager matches 1044 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_1',nbt:'night_vision',value:1}
execute if score @s tLevelManager matches 1045 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_2',nbt:'night_vision',value:1}
execute if score @s tLevelManager matches 1046 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_3',nbt:'night_vision',value:1}
execute if score @s tLevelManager matches 1047 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_4',nbt:'night_vision',value:1}
execute if score @s tLevelManager matches 1048 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_1',nbt:'night_vision',value:0}
execute if score @s tLevelManager matches 1049 run return run function phan:level_manager/set_field_numeric {resource_location:'pr_act_2',nbt:'night_vision',value:0}