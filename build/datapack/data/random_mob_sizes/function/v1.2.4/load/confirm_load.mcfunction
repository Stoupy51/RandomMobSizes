
#> random_mob_sizes:v1.2.4/load/confirm_load
#
# @within	random_mob_sizes:v1.2.4/load/secondary
#

# Confirm load
tellraw @a[tag=convention.debug] {"text":"[Loaded RandomMobSizes v1.2.4]","color":"green"}
scoreboard players set #random_mob_sizes.loaded load.status 1

# Scoreboard objectives, default values : 7500, 12500
scoreboard objectives add random_mob_sizes.sizes dummy
execute unless score #min_size random_mob_sizes.sizes matches 625.. run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default minimum size set to base * 0.75","color":"aqua"}]
execute unless score #max_size random_mob_sizes.sizes matches 625.. run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default maximum size set to base * 1.25","color":"aqua"}]
execute unless score #min_size random_mob_sizes.sizes matches 625.. run scoreboard players set #min_size random_mob_sizes.sizes 7500
execute unless score #max_size random_mob_sizes.sizes matches 625.. run scoreboard players set #max_size random_mob_sizes.sizes 12500

# Start loop
schedule function random_mob_sizes:1s_loop 1s replace

