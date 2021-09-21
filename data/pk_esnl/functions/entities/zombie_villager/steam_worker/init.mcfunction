# Init tag
data modify entity @s Tags set value ["pk_mob","pk_villager","pk_steam_worker","pk_hidden_name"]
tag @s[nbt={VillagerData:{level:1}}] add pk_level_1
tag @s[nbt={VillagerData:{level:2}}] add pk_level_2
tag @s[nbt={VillagerData:{level:3}}] add pk_level_3
tag @s[nbt={VillagerData:{level:4}}] add pk_level_4
tag @s[nbt={VillagerData:{level:5}}] add pk_level_5

# Replace armor.head
item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;1550118584,824527571,-1895233027,1895772862],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODU0Y2FiM2VkOThhNGJjYTBkNjMyNzI0M2M4YmQ5OTc5MDM3YWNhMTBkZDZjOTRhZGEzYTk4MzgyMGViN2M0YiJ9fX0="}]}},pkSteamWorkerZombieVillagerHead:1b}