
# Ask to configure size
tellraw @s {"text":"[Random Mob Sizes]","color":"dark_aqua"}
tellraw @s {"text":"Value range is 0.0625 - 16.0","color":"aqua"}
tellraw @s {"text":"Default values are 0.75 - 1.25","color":"aqua"}
tellraw @s {"text":"- configure Minimum size: [click]","color":"aqua","click_event":{"action":"suggest_command","command":"/data modify storage random_mob_sizes:config min_size set value 0.75"},"hover_event":{"action":"show_text","value":{"text":"Enter a value between 0.0625 and 16.0","color":"gray"}}}
tellraw @s {"text":"- configure Maximum size: [click]","color":"aqua","click_event":{"action":"suggest_command","command":"/data modify storage random_mob_sizes:config max_size set value 1.25"},"hover_event":{"action":"show_text","value":{"text":"Enter a value between 0.0625 and 16.0","color":"gray"}}}
#tellraw @s {"text":"More configuration (true = enabled, false = disabled):","color":"aqua"}
#tellraw @s {"text":"- Health Scale: [click]","color":"aqua","click_event":{"action":"suggest_command","command":"/data modify storage random_mob_sizes:config health_scale set value false"},"hover_event":{"action":"show_text","value":{"text":"Value of 'false' means disabled, 'true' means enabled","color":"gray"}}}

