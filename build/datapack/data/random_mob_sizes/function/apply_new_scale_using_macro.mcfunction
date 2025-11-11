
#> random_mob_sizes:apply_new_scale_using_macro
#
# @executed	as @e[type=!player,tag=!...,predicate=random_mob_sizes:has_brain]
#
# @within	random_mob_sizes:apply_random_size with storage random_mob_sizes:macro
#

# Apply scale
$attribute @s scale base set $(scale)

# Apply health scale if enabled
$execute if data storage random_mob_sizes:temp mob_config{health_scale:true} run attribute @s minecraft:max_health modifier add random_mob_sizes:health_scale $(scale_minus_one) add_multiplied_base
execute if data storage random_mob_sizes:temp mob_config{health_scale:true} store result entity @s Health float 1000 run data get entity @s Health

# Apply speed scale if enabled
$execute if data storage random_mob_sizes:temp mob_config{speed_scale:true} run attribute @s minecraft:movement_speed modifier add random_mob_sizes:speed_scale $(scale_minus_one) add_multiplied_base

# Apply damage scale if enabled
$execute if data storage random_mob_sizes:temp mob_config{damage_scale:true} run attribute @s minecraft:attack_damage modifier add random_mob_sizes:damage_scale $(scale_minus_one) add_multiplied_base

