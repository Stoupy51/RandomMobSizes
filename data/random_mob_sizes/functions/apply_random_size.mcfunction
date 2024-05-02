
# Get a random number between min size and max size
#define storage random_mob_sizes:sizes
execute store result storage random_mob_sizes:sizes min int 1 run scoreboard players get #min_size random_mob_sizes.sizes
execute store result storage random_mob_sizes:sizes max int 1 run scoreboard players get #max_size random_mob_sizes.sizes
execute unless score #min_size random_mob_sizes.sizes = #max_size random_mob_sizes.sizes run function random_mob_sizes:get_random_number with storage random_mob_sizes:sizes
execute if score #min_size random_mob_sizes.sizes = #max_size random_mob_sizes.sizes run scoreboard players operation #random random_mob_sizes.sizes = #min_size random_mob_sizes.sizes

# Use macro to get apply random size
execute store result storage random_mob_sizes:sizes scale double 0.0001 run scoreboard players get #random random_mob_sizes.sizes
function random_mob_sizes:apply_new_scale_using_macro with storage random_mob_sizes:sizes

