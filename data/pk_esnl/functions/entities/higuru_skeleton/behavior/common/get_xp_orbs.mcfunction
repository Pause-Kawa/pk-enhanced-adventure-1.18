kill @e[type=experience_orb,distance=..1]
summon minecraft:experience_orb ~0.1 ~ ~ {Value:12}
summon minecraft:experience_orb ~-0.1 ~ ~ {Value:4}
# Guardian experience orbs bonus
execute if entity @s[nbt={Item:{tag:{guardian:1b}}}] run summon minecraft:experience_orb ~0.2 ~ ~0.1 {Value:8}
execute if entity @s[nbt={Item:{tag:{guardian:1b}}}] run summon minecraft:experience_orb ~-0.1 ~ ~-0.2 {Value:12}