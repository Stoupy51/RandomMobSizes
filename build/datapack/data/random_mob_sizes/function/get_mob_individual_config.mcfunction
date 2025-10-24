
#> random_mob_sizes:get_mob_individual_config
#
# @executed	as @e[type=!player,tag=!...]
#
# @within	random_mob_sizes:apply_random_size with storage random_mob_sizes:macro
#

# If individual config exists, use it
$data modify storage random_mob_sizes:temp found_mob set from storage random_mob_sizes:config mobs."$(entity_type)"
execute if data storage random_mob_sizes:temp found_mob.min_size run data modify storage random_mob_sizes:temp mob_config.min_size set from storage random_mob_sizes:temp found_mob.min_size
execute if data storage random_mob_sizes:temp found_mob.max_size run data modify storage random_mob_sizes:temp mob_config.max_size set from storage random_mob_sizes:temp found_mob.max_size
execute if data storage random_mob_sizes:temp found_mob.health_scale run data modify storage random_mob_sizes:temp mob_config.health_scale set from storage random_mob_sizes:temp found_mob.health_scale

