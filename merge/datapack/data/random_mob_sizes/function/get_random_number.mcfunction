
# Use macro to get a random number
$scoreboard players set #random random_mob_sizes.sizes $(min)
$execute store result score #random random_mob_sizes.sizes run random value $(min)..$(max)

