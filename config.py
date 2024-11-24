
# Imports
import os
ROOT: str = os.path.dirname(os.path.realpath(__file__)).replace("\\", "/")  # This line gets the full root path to this folder, don't change it unless you know what you're doing.
IGNORE_UNSET: bool = True                          # If True, the program will ignore unset optionnal values in the configuration dictionnary


# Folders
ASSETS_FOLDER: str = f"{ROOT}/assets"               # Folder containing the all assets (textures, sounds, ... folders) for the datapack and resource pack
MERGE_FOLDER: str = f"{ROOT}/merge"                 # If a file exists in both merge and build folder, they will be merged. Otherwise, it's just copied.
BUILD_FOLDER: str = f"{ROOT}/build"                 # Folder where the final datapack and resource pack are built
BUILD_COPY_DESTINATIONS: tuple[list, list] = (["D:/latest_snapshot/world/datapacks"], ["D:/minecraft/snapshot/resourcepacks"])	# Can be empty lists if you don't want to copy the generated files to other folders.


# Dev constants
HAS_MANUAL: bool = False                             # Do the program generate a manual/guide? (WARNING: if an item is malformed in the database, the server log will be flooded on load by the manual hiding the malformed item)
DATABASE_DEBUG: str = f"{ROOT}/database_debug.json" # Dump of the database for debugging purposes
ENABLE_TRANSLATIONS: bool = False                    # Will convert all the text components to translate and generate a lang file in the resource pack. Meaning you can easily translate the datapack in multiple languages!
MERGE_LIBS: bool = False                             # Make new zip of merged libraries with the datapack and resource pack using Smithed Weld


# Project information
AUTHOR: str = "Stoupy51"                # Author(s) name(s) displayed in pack.mcmeta, also used to add convention.debug tag to the players of the same name(s) <-- showing additionnal displays like datapack loading
PROJECT_NAME: str = "RandomMobSizes"    # Name of the datapack, used for messages and items lore
VERSION: str = "1.2.0"                  # Project version in the following mandatory format: major.minor.patch, ex: 1.0.0 or 1.21.615
NAMESPACE: str = "random_mob_sizes"     # Simplified version of the datapack name. Should be the same you use in the merge folder. Used to namespace functions, tags, etc.
DESCRIPTION = f"{PROJECT_NAME} [{VERSION}] by {AUTHOR}" # Pack description displayed in pack.mcmeta


# Configuration dictionnary
configuration = {
    "ignore_unset": IGNORE_UNSET,

    "merge_folder": MERGE_FOLDER,
    "build_folder": BUILD_FOLDER,
    "assets_folder": ASSETS_FOLDER,
    "build_copy_destinations": BUILD_COPY_DESTINATIONS,
    "has_manual": HAS_MANUAL,
    "database_debug": DATABASE_DEBUG,
    "enable_translations": ENABLE_TRANSLATIONS,
    "merge_libs": MERGE_LIBS,
    "author": AUTHOR,
    "project_name": PROJECT_NAME,
    "version": VERSION,
    "namespace": NAMESPACE,
    "description": DESCRIPTION,
}

