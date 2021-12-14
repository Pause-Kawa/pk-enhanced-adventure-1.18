# Manually generate structure
setblock ~ ~-9 ~ structure_block{name:"pk_strc:higuru_temple/no_jigsaw/stage_one/stage_one_1",posX:0,posY:0,posZ:0,sizeX:45,sizeY:9,sizeZ:45,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
setblock ~ ~-8 ~ redstone_block replace
setblock ~ ~-18 ~ structure_block{name:"pk_strc:higuru_temple/no_jigsaw/stage_two/stage_two_1",posX:0,posY:0,posZ:0,sizeX:45,sizeY:9,sizeZ:45,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
setblock ~ ~-17 ~ redstone_block replace
setblock ~ ~-29 ~ structure_block{name:"pk_strc:higuru_temple/no_jigsaw/stage_three/stage_three_1",posX:0,posY:0,posZ:0,sizeX:45,sizeY:9,sizeZ:45,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
setblock ~ ~-28 ~ redstone_block replace

# Remove structure generator marker
kill @s