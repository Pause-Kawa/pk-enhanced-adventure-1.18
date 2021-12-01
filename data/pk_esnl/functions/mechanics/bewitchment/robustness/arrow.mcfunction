# Multiply arrow velocity by 1,5
execute store result entity @s Motion[0] double 0.00015 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[1] double 0.00015 run data get entity @s Motion[1] 10000
execute store result entity @s Motion[2] double 0.00015 run data get entity @s Motion[2] 10000

# Add arrow 0,5 damage 
execute store result score @s PKValue run data get entity @s damage 10
scoreboard players add @s PKValue 5
execute store result entity @s damage double 0.1 run scoreboard players get @s PKValue
# Tag arrow
tag @s add pk_robustness_shot_arrow