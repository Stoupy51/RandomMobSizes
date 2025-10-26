
# Ask to configure size
tellraw @s {"text":"[Random Mob Sizes]","color":"dark_aqua"}
tellraw @s {"text":"Value range is 0.0625 - 16.0","color":"aqua"}
tellraw @s {"text":"Default values are 0.75 - 1.25","color":"aqua"}
tellraw @s {"text":"- Minimum size: [click]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage random_mob_sizes:config min_size set value 0.75"},"hoverEvent":{"action":"show_text","contents":{"text":"Enter a value between 0.0625 and 16.0","color":"gray"}}}
tellraw @s {"text":"- Maximum size: [click]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage random_mob_sizes:config max_size set value 1.25"},"hoverEvent":{"action":"show_text","contents":{"text":"Enter a value between 0.0625 and 16.0","color":"gray"}}}
tellraw @s {"text":"More configuration (true = enabled, false = disabled):","color":"aqua"}
tellraw @s {"text":"- Health Scale: [click]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage random_mob_sizes:config health_scale set value false"},"hoverEvent":{"action":"show_text","contents":{"text":"Value of 'false' means disabled, 'true' means enabled","color":"gray"}}}
tellraw @s {"text":"- Individual Mob Settings: [click]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage random_mob_sizes:config mobs.\"minecraft:chicken\" set value {min_size:0.75,max_size:1.25,health_scale:true}"},"hoverEvent":{"action":"show_text","contents":{"text":"Configuration per mob type in the format:\n{min_size:<value>,max_size:<value>,health_scale:<true/false>}\nEach key that is not specified will use the global values.","color":"gray"}}}

