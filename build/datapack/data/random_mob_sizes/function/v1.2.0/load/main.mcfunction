
#> random_mob_sizes:v1.2.0/load/main
#
# @within	random_mob_sizes:v1.2.0/load/resolve
#

# Avoiding multiple executions of the same load function
execute unless score #random_mob_sizes.loaded load.status matches 1 run function random_mob_sizes:v1.2.0/load/secondary

