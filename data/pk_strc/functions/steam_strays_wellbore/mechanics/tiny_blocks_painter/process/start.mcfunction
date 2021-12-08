# Calculate final output amount by searching for the limiting consummable item
scoreboard players set %pk_amount PKValue 2147483647
execute store result score %pk_tbp_red_dye_count PKValue run data get storage pk_strc:temp TBPItems.RedDye.Count
scoreboard players operation %pk_amount PKValue < %pk_tbp_red_dye_count PKValue
execute store result score %pk_tbp_blue_dye_count PKValue run data get storage pk_strc:temp TBPItems.YellowDye.Count 
scoreboard players operation %pk_amount PKValue < %pk_tbp_blue_dye_count PKValue
execute store result score %pk_tbp_yellow_dye_count PKValue run data get storage pk_strc:temp TBPItems.BlueDye.Count
scoreboard players operation %pk_amount PKValue < %pk_tbp_yellow_dye_count PKValue
execute store result score %pk_tbp_quartz_block_count PKValue run data get storage pk_strc:temp TBPItems.QuartzBlock.Count 
scoreboard players operation %pk_amount PKValue < %pk_tbp_quartz_block_count PKValue

# Clear consummable items depending on the calculated amount
scoreboard players operation %pk_tbp_red_dye_count PKValue -= %pk_amount PKValue
scoreboard players operation %pk_tbp_yellow_dye_count PKValue -= %pk_amount PKValue
scoreboard players operation %pk_tbp_blue_dye_count PKValue -= %pk_amount PKValue
scoreboard players operation %pk_tbp_quartz_block_count PKValue -= %pk_amount PKValue
execute store result storage pk_strc:temp TBPItems.RedDye.Count byte 1 run scoreboard players get %pk_tbp_red_dye_count PKValue
execute store result storage pk_strc:temp TBPItems.YellowDye.Count byte 1 run scoreboard players get %pk_tbp_yellow_dye_count PKValue
execute store result storage pk_strc:temp TBPItems.BlueDye.Count byte 1 run scoreboard players get %pk_tbp_blue_dye_count PKValue
execute store result storage pk_strc:temp TBPItems.QuartzBlock.Count byte 1 run scoreboard players get %pk_tbp_quartz_block_count PKValue

# Change TBP items container
data modify storage pk_strc:temp TBPItems.Merged set value []
data modify storage pk_strc:temp TBPItems.Merged append from storage pk_strc:temp TBPItems.RedDye
data modify storage pk_strc:temp TBPItems.Merged append from storage pk_strc:temp TBPItems.YellowDye
data modify storage pk_strc:temp TBPItems.Merged append from storage pk_strc:temp TBPItems.BlueDye
data modify storage pk_strc:temp TBPItems.Merged append from storage pk_strc:temp TBPItems.QuartzBlock
data modify block ~ ~ ~ Items[{Slot:0b}] set from storage pk_strc:temp TBPItems.Merged[{Slot:0b}]
data modify block ~ ~ ~ Items[{Slot:1b}] set from storage pk_strc:temp TBPItems.Merged[{Slot:1b}]
data modify block ~ ~ ~ Items[{Slot:2b}] set from storage pk_strc:temp TBPItems.Merged[{Slot:2b}]
data modify block ~ ~ ~ Items[{Slot:3b}] set from storage pk_strc:temp TBPItems.Merged[{Slot:3b}]
data modify block ~ ~ ~ Items[{Slot:4b}] set from storage pk_strc:temp TBPItems.Merged[{Slot:4b}]
data modify block ~ ~ ~ Items[{Slot:5b}] set from storage pk_strc:temp TBPItems.Merged[{Slot:5b}]
data modify block ~ ~ ~ Items[{Slot:6b}] set from storage pk_strc:temp TBPItems.Merged[{Slot:6b}]
data modify block ~ ~ ~ Items[{Slot:7b}] set from storage pk_strc:temp TBPItems.Merged[{Slot:7b}]
data modify block ~ ~ ~ Items[{Slot:8b}] set from storage pk_strc:temp TBPItems.Merged[{Slot:8b}]

# Start painting
scoreboard players set @s PKDelay 90
tag @s add pk_is_painting
# - Lock TBP during painting
summon slime ~ ~ ~ {Tags:["pk_tbp_items_lock"],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Size:1,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
# - Prepare placeholder
summon item ~ ~-2 ~ {Tags:["pk_tbp_output_stack"],PickupDelay:32767,Health:2147483647,NoGravity:1b,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;16,11,1,1],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTVlMmIyZWQyOThiNTNjYzg0NzgzY2Q3ODVlYzU3ZGE0OWNlYWFiZGNmZjMxYjI1ZmU1MjU2YjM0MjliNDEyIn19fQ=="}]}}}}}
execute store result entity @s data.Item.Count byte 1 run scoreboard players get %pk_amount PKValue
execute positioned ~ ~-2 ~ run playsound block.beehive.enter ambient @a ~ ~ ~ 1 1.2