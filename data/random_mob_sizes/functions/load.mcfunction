
# Set loaded version and display message to players with convention.debug tag
scoreboard players set RandomMobSizes load.status 100
tellraw @a[tag=convention.debug] {"text":"[Loaded Random Mob Sizes v1.0]","italic":false,"color":"green"}

# Scoreboard objectives, default values : 2500, 40000
scoreboard objectives add random_mob_sizes.sizes dummy
execute unless score #min_size random_mob_sizes.sizes matches 625.. run tellraw @s [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":"Default minimum size set to base * 0.25","color":"aqua"}]
execute unless score #max_size random_mob_sizes.sizes matches 625.. run tellraw @s [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":"Default maximum size set to base * 4.0","color":"aqua"}]
execute unless score #min_size random_mob_sizes.sizes matches 625.. run scoreboard players set #min_size random_mob_sizes.sizes 2500
execute unless score #max_size random_mob_sizes.sizes matches 625.. run scoreboard players set #max_size random_mob_sizes.sizes 40000

# Start loop
schedule function random_mob_sizes:1s_loop 1s replace

