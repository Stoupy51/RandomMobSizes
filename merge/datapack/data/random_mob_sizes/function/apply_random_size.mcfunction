
# Get a random number between min size and max size (x10000 for digits)
data modify storage random_mob_sizes:macro min_size set from storage random_mob_sizes:config min_size 10000
data modify storage random_mob_sizes:macro max_size set from storage random_mob_sizes:config max_size 10000
function random_mob_sizes:get_random_number with storage random_mob_sizes:macro

# Use macro to get apply random size
execute store result storage random_mob_sizes:macro scale double 0.0001 run scoreboard players get #random random_mob_sizes.sizes
function random_mob_sizes:apply_new_scale_using_macro with storage random_mob_sizes:macro

