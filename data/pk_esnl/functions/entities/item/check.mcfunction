tag @s add pk_checked_idendity

# Item dropped on some mobs death
execute if entity @s[nbt={Item:{tag:{pkDeathEvent:1b}}}] at @s run function pk_esnl:events/mobs/on_death

# Memorial Excerpt
tag @s[nbt={Item:{tag:{pkMemorialExcerpt:1b}}}] add pk_memorial_excerpt