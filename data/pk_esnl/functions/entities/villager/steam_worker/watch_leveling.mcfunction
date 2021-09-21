execute if entity @s[scores={PKLevel=..1},nbt={VillagerData:{level:2}}] run function pk_esnl:entities/villager/steam_worker/levels/reach_level_2
execute if entity @s[scores={PKLevel=..2},nbt={VillagerData:{level:3}}] run function pk_esnl:entities/villager/steam_worker/levels/reach_level_3
execute if entity @s[scores={PKLevel=..3},nbt={VillagerData:{level:4}}] run function pk_esnl:entities/villager/steam_worker/levels/reach_level_4
scoreboard players set @s[scores={PKLevel=..4},nbt={VillagerData:{level:5}}] PKLevel 5
execute if entity @s[scores={PKLevel=5..}] run function pk_esnl:entities/villager/steam_worker/levels/reach_level_cap