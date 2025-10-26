
# Apply scale
$attribute @s scale base set $(scale)

# Apply health scale if enabled
$execute if data storage random_mob_sizes:temp mob_config{health_scale:true} run attribute @s minecraft:max_health modifier add random_mob_sizes:health_scale $(health_multiplier) add_multiplied_base
execute if data storage random_mob_sizes:temp mob_config{health_scale:true} store result entity @s Health float 1000 run data get entity @s Health

