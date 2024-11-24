
# Configuration for Modrinth
from config import *

# Constants
SUMMARY: str = """
This datapack provides a funny game experience by randomizing every mob sizes in your world.
The default scale is 0.25-4.0 but can be configured as you want with the command `/function random_mob_sizes:config`

The datapack is optimized, meaning it do not add any lag to your world/server.
"""

DESCRIPTION_MARKDOWN: str = ""
if os.path.exists(f"{ROOT}/README.md"):
	with open(f"{ROOT}/README.md", "r", encoding="utf-8") as file:
		DESCRIPTION_MARKDOWN = file.read()
else:
	print("README.md not found, description_markdown will be empty")

# Dependencies (list of modrinth slugs)
DEPENDENCIES: list[dict] = [
	#{"project_id": "QQRRSSTT", "version_id": "IIJJKKLL", "dependency_type": "required"},
]

# Version type (release, beta, alpha)
VERSION_TYPE: str = "alpha"

# Configuration
modrinth_config: dict = {
	"slug": "random-mob-sizes-dp",
	"project_name": PROJECT_NAME,
	"version": VERSION,
	"summary": SUMMARY,
	"description_markdown": DESCRIPTION_MARKDOWN,
	"dependencies": DEPENDENCIES,
	"version_type": VERSION_TYPE,
	"build_folder": BUILD_FOLDER,
}

