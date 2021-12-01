tag @s add pk_checked_idendity

# Check if the arrow is a rain dissipater and init it
execute if entity @s[nbt={CustomPotionEffects:[{Id:29b,Amplifier:4b}]}] run function pk_esnl:items/rain_dissipater/init