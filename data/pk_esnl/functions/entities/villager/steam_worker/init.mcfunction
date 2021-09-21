# Replace armor.head
item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;1550118584,824527571,-1895233027,1895772862],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmU2NTUxNmQ4MWFjOTYzZGJjMjQ4NTEzOGRkZGNmOTQzZDdmNzIxMWUzN2VmZWNkNWE1ZmI4ZjVhZDQ5MjAifX19"}]}},pkSteamWorkerZombieVillagerHead:1b}

# Init level (0 by default if VillagerData.level is not found)
scoreboard players set @s PKLevel 0
execute store result score @s PKLevel run data get entity @s VillagerData.level

# Mark the steam worker villager as init
tag @s add pk_steam_worker_villager_init