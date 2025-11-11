
#> random_mob_sizes:on_new_mob
#
# @executed	as @e[type=!player,tag=!...,predicate=random_mob_sizes:has_brain]
#
# @within	random_mob_sizes:1s_loop [ as @e[type=!player,tag=!...,predicate=random_mob_sizes:has_brain] ]
#

# Add checked tag and run size function
tag @s add random_mob_sizes.checked
function random_mob_sizes:apply_random_size

