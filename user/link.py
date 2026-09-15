
# Imports
from stewbeet import DataPack, Mem, Predicate, set_json_encoder, write_load_file


# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def beet_default(*args, **kwargs) -> None: # type: ignore

    # Add some commands when loading datapack
    write_load_file("""
# Scoreboard objectives and tellraws for default config values
scoreboard objectives add random_mob_sizes.sizes dummy
execute unless data storage random_mob_sizes:config min_size run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default minimum size set to base * 0.75","color":"aqua"}]
execute unless data storage random_mob_sizes:config max_size run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default maximum size set to base * 1.25","color":"aqua"}]
execute unless data storage random_mob_sizes:config health_scale run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default health scale set to true","color":"aqua"}]
execute unless data storage random_mob_sizes:config speed_scale run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default speed scale set to false","color":"aqua"}]
execute unless data storage random_mob_sizes:config damage_scale run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" Default damage scale set to false","color":"aqua"}]

# Set default config values if not set
execute unless data storage random_mob_sizes:config max_size run tellraw @a [{"text":"[Random Mob Sizes]","color":"dark_aqua"},{"text":" type '/func","color":"aqua"},{"text":"tion random_mob_sizes:config' to change the configuration","color":"aqua"}]
execute unless data storage random_mob_sizes:config min_size run data modify storage random_mob_sizes:config min_size set value 0.75
execute unless data storage random_mob_sizes:config max_size run data modify storage random_mob_sizes:config max_size set value 1.25
execute unless data storage random_mob_sizes:config health_scale run data modify storage random_mob_sizes:config health_scale set value true
execute unless data storage random_mob_sizes:config speed_scale run data modify storage random_mob_sizes:config speed_scale set value false
execute unless data storage random_mob_sizes:config damage_scale run data modify storage random_mob_sizes:config damage_scale set value false
execute unless data storage random_mob_sizes:config mobs run data modify storage random_mob_sizes:config mobs set value {}

# Start loop
schedule function random_mob_sizes:1s_loop 1s replace
""")  # noqa: E501

    # Set has_brain predicate, keyed on "condition" before 26.3 and on "type" in the since_26_3 overlay
    has_brain: dict[str, object] = {"entity": "this", "predicate": {"nbt": r"{Brain:{}}"}}
    Mem.ctx.data[Mem.ctx.project_id].predicates["has_brain"] = set_json_encoder(
        Predicate({"condition": "minecraft:entity_properties", **has_brain})
    )
    Mem.ctx.data.overlays["since_26_3"] = DataPack(supported_formats=[121, 9999], min_format=121, max_format=9999)
    Mem.ctx.data.overlays["since_26_3"][Mem.ctx.project_id].predicates["has_brain"] = set_json_encoder(
        Predicate({"type": "minecraft:entity_properties", **has_brain})
    )

    pass

