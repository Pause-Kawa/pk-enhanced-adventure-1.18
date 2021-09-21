# Init steamer worker villager
execute unless entity @s[tag=pk_steam_worker_villager_init] run function pk_esnl:entities/villager/steam_worker/init
# Watch leveling to change offers
execute unless entity @s[tag=pk_reached_level_cap] run function pk_esnl:entities/villager/steam_worker/watch_leveling
