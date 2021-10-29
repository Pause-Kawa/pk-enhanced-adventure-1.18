# If it is not the case yet, mark the item has enchanted (glint only)
execute unless data storage pk_temp Items[1].tag.Enchantments[] run data modify storage pk_temp Items[1].tag.Enchantments set value [{}]
# Apply the item bewitchment tag and lore
data modify storage pk_temp Items[1].tag.pkSafeguardInstinct set value 1b
data modify storage pk_temp Items[1].tag.display.Lore prepend value '{"text":"Safeguard Instinct","color":"yellow","italic":false}'
# Increment the applied enchantments score
scoreboard players add %pk_ancient_altar_applied_enchants PKValue 1