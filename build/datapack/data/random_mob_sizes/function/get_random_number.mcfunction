
#> random_mob_sizes:get_random_number
#
# @executed	as @e[type=!player,tag=!...,predicate=random_mob_sizes:has_brain]
#
# @within	random_mob_sizes:apply_random_size with storage random_mob_sizes:macro
#

# Use macro to get a random number
$execute store result score #random random_mob_sizes.sizes run random value $(min_size)..$(max_size)

