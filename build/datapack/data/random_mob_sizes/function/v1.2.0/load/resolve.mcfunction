
#> random_mob_sizes:v1.2.0/load/resolve
#
# @within	#random_mob_sizes:resolve
#

# If correct version, load the datapack
execute if score #random_mob_sizes.major load.status matches 1 if score #random_mob_sizes.minor load.status matches 2 if score #random_mob_sizes.patch load.status matches 0 run function random_mob_sizes:v1.2.0/load/main

