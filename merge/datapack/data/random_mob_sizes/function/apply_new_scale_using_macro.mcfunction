
# Apply scale
$attribute @s scale base set $(scale)

# Apply health scale if enabled
execute if data storage random_mob_sizes:temp mob_config{health_scale:true} run attribute @s minecraft:max_health modifier add random_mob_sizes:health_scale $(scale) add_multiplied_base

