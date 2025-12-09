
#> random_mob_sizes:v1.3.1/load/resolve
#
# @within	#random_mob_sizes:resolve
#

# If correct version, load the datapack
execute if score #random_mob_sizes.major load.status matches 1 if score #random_mob_sizes.minor load.status matches 3 if score #random_mob_sizes.patch load.status matches 1 run function random_mob_sizes:v1.3.1/load/main

