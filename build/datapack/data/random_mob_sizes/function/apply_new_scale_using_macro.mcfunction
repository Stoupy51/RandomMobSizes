
#> random_mob_sizes:apply_new_scale_using_macro
#
# @executed	as @e[type=!player,tag=!...]
#
# @within	random_mob_sizes:apply_random_size with storage random_mob_sizes:macro
#

# Apply scale
$attribute @s scale base set $(scale)

# Apply health scale if enabled
execute if data storage random_mob_sizes:config {health_scale:true} run attribute @s minecraft:max_health modifier add random_mob_sizes:health_scale $(scale) add_multiplied_base

