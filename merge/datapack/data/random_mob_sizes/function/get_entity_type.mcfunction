
# Make the entity ride @s
ride @n[tag=random_mob_sizes.temp] mount @s

# Get the entity type of the ridden entity
data modify storage random_mob_sizes:macro entity_type set from entity @s Passengers[0].id

# Dismount the entity
ride @n[tag=random_mob_sizes.temp] dismount

# Kill the temporary entity
kill @s

