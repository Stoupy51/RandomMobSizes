
#> random_mob_sizes:apply_random_size
#
# @executed	as @e[type=!player,tag=!...]
#
# @within	random_mob_sizes:on_new_mob
#

# Retrieve mob's entity type
tag @s add random_mob_sizes.temp
data modify storage random_mob_sizes:macro entity_type set value ""
execute at @s summon interaction run function random_mob_sizes:get_entity_type
tag @s remove random_mob_sizes.temp

# Retrieve mob's individual config if it exists (otherwise use global config)
data modify storage random_mob_sizes:temp mob_config set from storage random_mob_sizes:config
function random_mob_sizes:get_mob_individual_config with storage random_mob_sizes:macro

# Get a random number between min size and max size (x10000 for digits)
execute store result storage random_mob_sizes:macro min_size int 1 run data get storage random_mob_sizes:temp mob_config.min_size 10000
execute store result storage random_mob_sizes:macro max_size int 1 run data get storage random_mob_sizes:temp mob_config.max_size 10000
execute store result score #random random_mob_sizes.sizes run data get storage random_mob_sizes:macro min_size
function random_mob_sizes:get_random_number with storage random_mob_sizes:macro

# Use macro to get apply random size
execute store result storage random_mob_sizes:macro scale double 0.0001 run scoreboard players get #random random_mob_sizes.sizes
scoreboard players remove #random random_mob_sizes.sizes 10000
execute store result storage random_mob_sizes:macro health_multiplier double 0.0001 run scoreboard players get #random random_mob_sizes.sizes
function random_mob_sizes:apply_new_scale_using_macro with storage random_mob_sizes:macro

