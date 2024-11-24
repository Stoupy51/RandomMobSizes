
# Imports
from python_datapack.utils.database_helper import *

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:

    # Add some commands when loading datapack
    write_to_load_file(config, """
# Scoreboard objectives, default values : 2500, 40000
scoreboard objectives add random_mob_sizes.sizes dummy
execute unless score #min_size random_mob_sizes.sizes matches 625.. run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default minimum size set to base * 0.25","color":"aqua"}]
execute unless score #max_size random_mob_sizes.sizes matches 625.. run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default maximum size set to base * 4.0","color":"aqua"}]
execute unless score #min_size random_mob_sizes.sizes matches 625.. run scoreboard players set #min_size random_mob_sizes.sizes 2500
execute unless score #max_size random_mob_sizes.sizes matches 625.. run scoreboard players set #max_size random_mob_sizes.sizes 40000

# Start loop
schedule function random_mob_sizes:1s_loop 1s replace
""")

    pass

