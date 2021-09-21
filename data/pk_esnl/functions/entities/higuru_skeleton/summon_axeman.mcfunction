# Randomizer
function pk_core:randomizer/next1

execute if score %pk_RNG_1 PKValue matches ..500 run summon skeleton ~ ~ ~ {Silent:1b,Team:"PKHiddenName",Tags:["pk_strc_mob","pk_higuru_skeleton","pk_higuru_skeleton_axeman"],DeathLootTable:"pk_strc:entities/higuru_skeleton",Health:40f,CustomName:'{"text":"Higuru Skeleton","italic":false}',HandItems:[{id:"minecraft:stone_axe",Count:1b},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:12,Patterns:[{Color:9,Pattern:"ss"},{Color:14,Pattern:"cbo"},{Color:4,Pattern:"bts"},{Color:4,Pattern:"tts"},{Color:4,Pattern:"flo"}]},display:{Name:'{"text":"Higuru Shield","italic":false}'}}}],HandDropChances:[0.085F,0.050F],ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.attack_damage",Base:7}]}

execute if score %pk_RNG_1 PKValue matches 501.. run summon skeleton ~ ~ ~ {Silent:1b,Team:"PKHiddenName",Tags:["pk_strc_mob","pk_higuru_skeleton","pk_higuru_skeleton_axeman"],DeathLootTable:"pk_strc:entities/higuru_skeleton",Health:40f,CustomName:'{"text":"Higuru Skeleton","italic":false}',HandItems:[{id:"minecraft:stone_axe",Count:1b},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:12,Patterns:[{Color:9,Pattern:"ss"},{Color:14,Pattern:"cbo"},{Color:4,Pattern:"bts"},{Color:4,Pattern:"tts"},{Color:4,Pattern:"flo"}]},display:{Name:'{"text":"Higuru Shield","italic":false}'}}}],HandDropChances:[0.085F,0.050F],ArmorItems:[{},{},{},{id:"minecraft:dead_fire_coral_fan",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.attack_damage",Base:7}]}