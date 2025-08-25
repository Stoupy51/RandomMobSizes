
#> random_mob_sizes:v1.2.4/load/enumerate
#
# @within	#random_mob_sizes:enumerate
#

# If current major is too low, set it to the current major
execute unless score #random_mob_sizes.major load.status matches 1.. run scoreboard players set #random_mob_sizes.major load.status 1

# If current minor is too low, set it to the current minor (only if major is correct)
execute if score #random_mob_sizes.major load.status matches 1 unless score #random_mob_sizes.minor load.status matches 2.. run scoreboard players set #random_mob_sizes.minor load.status 2

# If current patch is too low, set it to the current patch (only if major and minor are correct)
execute if score #random_mob_sizes.major load.status matches 1 if score #random_mob_sizes.minor load.status matches 2 unless score #random_mob_sizes.patch load.status matches 4.. run scoreboard players set #random_mob_sizes.patch load.status 4

