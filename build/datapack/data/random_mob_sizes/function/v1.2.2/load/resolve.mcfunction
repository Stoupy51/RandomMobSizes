
#> random_mob_sizes:v1.2.2/load/resolve
#
# @within	#random_mob_sizes:resolve
#

# If correct version, load the datapack
execute if score #random_mob_sizes.major load.status matches 1 if score #random_mob_sizes.minor load.status matches 2 if score #random_mob_sizes.patch load.status matches 2 run function random_mob_sizes:v1.2.2/load/main

