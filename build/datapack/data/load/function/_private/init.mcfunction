
#> load:_private/init
#
# @within	#load:_private/init
#

# Reset scoreboards so packs can set values accurate for current load.
scoreboard objectives add load.status dummy
scoreboard players reset * load.status

