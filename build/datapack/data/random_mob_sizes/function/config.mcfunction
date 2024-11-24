
#> random_mob_sizes:config
#
# @within	???
#

# Ask to configure size
tellraw @s {"text":"[Random Mob Sizes]","color":"dark_aqua"}
tellraw @s {"text":"Value range is 625-160000, resulting in 0.0625-16.0","color":"aqua"}
tellraw @s {"text":"Default values are 2500-40000, resulting in 0.25-4.0","color":"aqua"}
tellraw @s {"text":"- configure minimum size: [click]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #min_size random_mob_sizes.sizes 625"},"hoverEvent":{"action":"show_text","value":{"text":"Enter a value between 625 and 160000","color":"gray"}}}
tellraw @s {"text":"- configure maximum size: [click]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max_size random_mob_sizes.sizes 160000"},"hoverEvent":{"action":"show_text","value":{"text":"Enter a value between 625 and 160000","color":"gray"}}}

