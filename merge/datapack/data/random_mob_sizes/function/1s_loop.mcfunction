
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

# Seek for new mobs
execute as @e[type=!player,type=!armor_stand,tag=!random_mob_sizes.checked,tag=!smithed.entity,tag=!smithed.strict,tag=!global.ignore] run function random_mob_sizes:on_new_mob

# Loop again
schedule function random_mob_sizes:1s_loop 1s replace

