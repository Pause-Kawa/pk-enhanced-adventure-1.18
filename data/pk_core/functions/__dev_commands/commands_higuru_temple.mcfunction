# Higuru Temple Main Entrance Marker
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_higuru_temple_marker","pk_main_entrance"]}

# Ancient Tablets
# - Faithfullness
give @s name_tag{display:{Name:'{"text":"Faithful Ancient Tablet","italic":false}',Lore:['{"text":"Faithfulness","color":"yellow","italic":false}']},pkAncientTablet:1b,pkAncientTabletFaithfulness:1b,Enchantments:[{}]} 1
# - Savagery
give @s name_tag{display:{Name:'{"text":"Savage Ancient Tablet","italic":false}',Lore:['{"text":"Savagery","color":"yellow","italic":false}']},pkAncientTablet:1b,pkAncientTabletSavagery:1b,Enchantments:[{}]} 1
# - Impetuosity
give @s name_tag{display:{Name:'{"text":"Impetuous Ancient Tablet","italic":false}',Lore:['{"text":"Impetuosity","color":"yellow","italic":false}']},pkAncientTablet:1b,pkAncientTabletImpetuousity:1b,Enchantments:[{}]} 1
# - Safeguard Instinct
give @s name_tag{display:{Name:'{"text":"Safeguarded Ancient Tablet","italic":false}',Lore:['{"text":"Safeguard Instinct","color":"yellow","italic":false}']},pkAncientTablet:1b,pkAncientTabletSafeguardInstinct:1b,Enchantments:[{}]} 1
# - Robustness
give @s name_tag{display:{Name:'{"text":"Robust Ancient Tablet","italic":false}',Lore:['{"text":"Robustness","color":"yellow","italic":false}']},pkAncientTablet:1b,pkAncientTabletRobustness:1b,Enchantments:[{}]} 1
# - Wild Cushioning
give @s name_tag{display:{Name:'{"text":"Wild Ancient Tablet","italic":false}',Lore:['{"text":"Wild Cushioning","color":"yellow","italic":false}']},pkAncientTablet:1b,pkAncientTabletWildCushioning:1b,Enchantments:[{}]} 1

# Trigger the wither being beat
scoreboard players set %pk_wither_beaten PKValue 1

# Some loot_tables container
give @s dispenser{BlockEntityTag:{LootTable:"pk_strc:chests/higuru_temple/pressure_plate_trap"}}
give @s chest{BlockEntityTag:{LootTable:"pk_strc:chests/higuru_temple/rare_treasure"}}

# Markers examples
# - Fight trigger
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_common_marker","pk_fight_trigger"],data:{TriggerValue:0}}
# - Fight engine
summon marker ~ ~ ~ {Tags:["pk_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_archer",ActiveEffects:[{Id:12b,Amplifier:0b,Duration:1000000000,ShowParticles:1b}]},{Type:"higuru_skeleton_archer"},{Type:"higuru_skeleton_axeman"}],Reinforcing:[{Type:"higuru_skeleton_random"}],SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],StartTriggers:[{Type:"higuru_temple_statue_mouth_close"}],ResolveTriggers:[{Type:"higuru_temple_statue_mouth_open"}],TriggerValue:0}}
# - Statue mouth
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_higuru_temple_marker","pk_statue_mouth"],data:{TriggerValue:0}}
# - Statue mouth
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_higuru_temple_marker","pk_statue_lever"],data:{TriggerValue:0}}
# - Inner door
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_higuru_temple_marker","pk_inner_door"],data:{TriggerValue:0}}
# - Fall trap
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_higuru_temple_marker","pk_fall_trap_tripwire"],data:{TriggerValue:0}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_strc_marker","pk_higuru_temple_marker","pk_fall_trap"],data:{TriggerValue:0}}