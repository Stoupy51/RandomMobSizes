
#> random_mob_sizes:1s_loop
#
# @within	random_mob_sizes:1s_loop 1s replace [ scheduled ]
#			random_mob_sizes:v1.3.2/load/confirm_load 1s replace [ scheduled ]
#

## Check configuration
# Min size
execute store result score #min_size random_mob_sizes.sizes run data get storage random_mob_sizes:config min_size 10000
execute if score #min_size random_mob_sizes.sizes > #max_size random_mob_sizes.sizes run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Minimum size cannot be higher than Maximum size, resetting to default value (0.75)","color":"aqua"}]
execute if score #min_size random_mob_sizes.sizes > #max_size random_mob_sizes.sizes run data modify storage random_mob_sizes:config min_size set value 0.75
execute unless score #min_size random_mob_sizes.sizes matches 625.. run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Minimum size cannot be less than 0.0625, resetting to default value (0.75)","color":"aqua"}]
execute unless score #min_size random_mob_sizes.sizes matches ..160000 run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Minimum size cannot be higher than 16.0, resetting to default value (0.75)","color":"aqua"}]
execute unless score #min_size random_mob_sizes.sizes matches 625..160000 run data modify storage random_mob_sizes:config min_size set value 0.75

# Max size
execute store result score #max_size random_mob_sizes.sizes run data get storage random_mob_sizes:config max_size 10000
execute if score #max_size random_mob_sizes.sizes < #min_size random_mob_sizes.sizes run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Maximum size cannot be lower than Minimum size, resetting to default value (1.25)","color":"aqua"}]
execute if score #max_size random_mob_sizes.sizes < #min_size random_mob_sizes.sizes run data modify storage random_mob_sizes:config max_size set value 1.25
execute unless score #max_size random_mob_sizes.sizes matches 625.. run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Maximum size cannot be less than 0.0625, resetting to default value (1.25)","color":"aqua"}]
execute unless score #max_size random_mob_sizes.sizes matches ..160000 run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Maximum size cannot be higher than 16.0, resetting to default value (1.25)","color":"aqua"}]
execute unless score #max_size random_mob_sizes.sizes matches 625..160000 run data modify storage random_mob_sizes:config max_size set value 1.25

# Health scale
execute unless data storage random_mob_sizes:config {health_scale:false} unless data storage random_mob_sizes:config {health_scale:true} run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Health Scale cannot be something else than 'true' or 'false', resetting to default value (true)","color":"aqua"}]
execute unless data storage random_mob_sizes:config {health_scale:false} unless data storage random_mob_sizes:config {health_scale:true} run data modify storage random_mob_sizes:config health_scale set value true

# Speed scale
execute unless data storage random_mob_sizes:config {speed_scale:false} unless data storage random_mob_sizes:config {speed_scale:true} run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Speed Scale cannot be something else than 'true' or 'false', resetting to default value (false)","color":"aqua"}]
execute unless data storage random_mob_sizes:config {speed_scale:false} unless data storage random_mob_sizes:config {speed_scale:true} run data modify storage random_mob_sizes:config speed_scale set value false

# Damage scale
execute unless data storage random_mob_sizes:config {damage_scale:false} unless data storage random_mob_sizes:config {damage_scale:true} run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Damage Scale cannot be something else than 'true' or 'false', resetting to default value (false)","color":"aqua"}]
execute unless data storage random_mob_sizes:config {damage_scale:false} unless data storage random_mob_sizes:config {damage_scale:true} run data modify storage random_mob_sizes:config damage_scale set value false

# Seek for new mobs
execute as @e[type=!player,type=!armor_stand,tag=!random_mob_sizes.checked,tag=!smithed.entity,tag=!smithed.strict,tag=!global.ignore,predicate=random_mob_sizes:has_brain] run function random_mob_sizes:on_new_mob

# Loop again
schedule function random_mob_sizes:1s_loop 1s replace

