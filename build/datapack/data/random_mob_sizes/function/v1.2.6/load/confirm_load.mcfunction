
#> random_mob_sizes:v1.2.6/load/confirm_load
#
# @within	random_mob_sizes:v1.2.6/load/secondary
#

# Confirm load
tellraw @a[tag=convention.debug] {"text":"[Loaded RandomMobSizes v1.2.6]","color":"green"}
scoreboard players set #random_mob_sizes.loaded load.status 1

# Scoreboard objectives and tellraws for default config values
scoreboard objectives add random_mob_sizes.sizes dummy
execute unless data storage random_mob_sizes:config min_size run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default minimum size set to base * 0.75","color":"aqua"}]
execute unless data storage random_mob_sizes:config max_size run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default maximum size set to base * 1.25","color":"aqua"}]
execute unless data storage random_mob_sizes:config health_scale run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default health scale set to true","color":"aqua"}]

# Set default config values if not set
execute unless data storage random_mob_sizes:config max_size run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" type '/func","color":"aqua"},{"text":"tion random_mob_sizes:config' to change the configuration","color":"aqua"}]
execute unless data storage random_mob_sizes:config min_size run data modify storage random_mob_sizes:config min_size set value 0.75
execute unless data storage random_mob_sizes:config max_size run data modify storage random_mob_sizes:config max_size set value 1.25
execute unless data storage random_mob_sizes:config health_scale run data modify storage random_mob_sizes:config health_scale set value true

# Start loop
schedule function random_mob_sizes:1s_loop 1s replace

