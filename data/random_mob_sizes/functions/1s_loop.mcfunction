
## Check configuration
# Min size
execute if score #min_size random_mob_sizes.sizes > #max_size random_mob_sizes.sizes run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Minimum size cannot be higher than Maximum size, resetting to default value (2500)","color":"aqua"}]
execute if score #min_size random_mob_sizes.sizes > #max_size random_mob_sizes.sizes run scoreboard players set #min_size random_mob_sizes.sizes 2500
execute unless score #min_size random_mob_sizes.sizes matches 625.. run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Minimum size cannot be less than 625, resetting to default value (2500)","color":"aqua"}]
execute unless score #min_size random_mob_sizes.sizes matches ..160000 run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Minimum size cannot be higher than 160000, resetting to default value (2500)","color":"aqua"}]
execute unless score #min_size random_mob_sizes.sizes matches 625..160000 run scoreboard players set #min_size random_mob_sizes.sizes 2500

# Max size
execute if score #max_size random_mob_sizes.sizes < #min_size random_mob_sizes.sizes run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Maximum size cannot be lower than Minimum size, resetting to default value (40000)","color":"aqua"}]
execute if score #max_size random_mob_sizes.sizes < #min_size random_mob_sizes.sizes run scoreboard players set #max_size random_mob_sizes.sizes 40000
execute unless score #max_size random_mob_sizes.sizes matches 625.. run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Maximum size cannot be less than 625, resetting to default value (40000)","color":"aqua"}]
execute unless score #max_size random_mob_sizes.sizes matches ..160000 run tellraw @a [{"text":"[Random Mob Sizes] ","color":"dark_aqua"},{"text":"Maximum size cannot be higher than 160000, resetting to default value (40000)","color":"aqua"}]
execute unless score #max_size random_mob_sizes.sizes matches 625..160000 run scoreboard players set #max_size random_mob_sizes.sizes 40000

# Seek for new mobs
execute as @e[type=!player,type=!armor_stand,tag=!random_mob_sizes.checked,tag=!smithed.entity,tag=!smithed.strict,tag=!global.ignore] run function random_mob_sizes:on_new_mob

# Loop again
schedule function random_mob_sizes:1s_loop 1s replace

