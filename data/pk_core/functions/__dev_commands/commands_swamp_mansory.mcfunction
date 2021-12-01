# Markers examples
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_common_marker","pk_spawner"],data:{Waves:1,WavesDelay:0,MaxEntitiesAtSameTime:1,Entities:[{Type:"vindcator"}],Resetable:1b}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_common_marker","pk_spawner"],data:{Waves:1,WavesDelay:0,MaxEntitiesAtSameTime:2,Entities:[{Type:"witch"},{Type:"evoker"}],Resetable:1b}}

give @s chest{BlockEntityTag:{LootTable:"pk_strc:chests/swamp_mansory/potion_chest"}}
give @s chest{BlockEntityTag:{LootTable:"pk_strc:chests/swamp_mansory/hidden_chest"}}
give @s chest{BlockEntityTag:{LootTable:"pk_strc:chests/swamp_mansory/alchemist_registry_chest"}}