
# Add checked tag
tag @s add random_mob_sizes.checked

# If the entity have a brain, run the random size function
execute if data entity @s Brain run function random_mob_sizes:apply_random_size

