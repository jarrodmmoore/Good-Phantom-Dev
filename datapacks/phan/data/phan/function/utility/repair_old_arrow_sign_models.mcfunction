#arrow signs
execute if items entity @s contents *[custom_model_data={floats:[1111111.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/1_portal"]
execute if items entity @s contents *[custom_model_data={floats:[1111112.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/1_ever_eye"]
execute if items entity @s contents *[custom_model_data={floats:[1111113.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/1_stardust"]
execute if items entity @s contents *[custom_model_data={floats:[1111114.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/1_timer"]

execute if items entity @s contents *[custom_model_data={floats:[1111121.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/2_portal"]
execute if items entity @s contents *[custom_model_data={floats:[1111122.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/2_ever_eye"]
execute if items entity @s contents *[custom_model_data={floats:[1111123.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/2_stardust"]
execute if items entity @s contents *[custom_model_data={floats:[1111124.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/2_timer"]

execute if items entity @s contents *[custom_model_data={floats:[1111131.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/3_portal"]
execute if items entity @s contents *[custom_model_data={floats:[1111132.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/3_ever_eye"]
execute if items entity @s contents *[custom_model_data={floats:[1111133.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/3_stardust"]
execute if items entity @s contents *[custom_model_data={floats:[1111134.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/3_timer"]

execute if items entity @s contents *[custom_model_data={floats:[1111141.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/4_portal"]
execute if items entity @s contents *[custom_model_data={floats:[1111142.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/4_ever_eye"]
execute if items entity @s contents *[custom_model_data={floats:[1111143.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/4_stardust"]
execute if items entity @s contents *[custom_model_data={floats:[1111144.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/4_timer"]

execute if items entity @s contents *[custom_model_data={floats:[1111151.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/5_portal"]
execute if items entity @s contents *[custom_model_data={floats:[1111152.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/5_ever_eye"]
execute if items entity @s contents *[custom_model_data={floats:[1111153.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/5_stardust"]
execute if items entity @s contents *[custom_model_data={floats:[1111154.0f]}] run item replace entity @s contents with white_dye[item_model="gp/arrow_sign/5_timer"]

#effect signs
execute if items entity @s contents *[custom_model_data={floats:[2111111.0f]}] run item replace entity @s contents with white_dye[item_model="gp/effect_sign/jump"]
execute if items entity @s contents *[custom_model_data={floats:[2111112.0f]}] run item replace entity @s contents with white_dye[item_model="gp/effect_sign/refill"]
execute if items entity @s contents *[custom_model_data={floats:[2111113.0f]}] run item replace entity @s contents with white_dye[item_model="gp/effect_sign/teleport"]
execute if items entity @s contents *[custom_model_data={floats:[2111114.0f]}] run item replace entity @s contents with white_dye[item_model="gp/effect_sign/strength"]

tag @s add newModelFormat
tellraw @a ["",{"text":"[DEBUG] Repaired outdated model."}]