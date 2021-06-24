say Teleporting to overworld...

# Loading the same chunk in the correct dimension (correct coords but below bedrock)
execute in minecraft:overworld run setblock ~ -20 ~ minecraft:redstone_block
execute in minecraft:overworld run setblock ~ -19 ~ minecraft:activator_rail
execute in minecraft:overworld run summon minecraft:tnt_minecart ~ -19 ~ {Tags:["runeDestinationCart"]}
execute in minecraft:overworld as @e[tag=runeDestinationCart,limit=1] run say Cart spawned

# Summoning the armor stand at the player's position but in the correct dimension
execute in minecraft:overworld run summon minecraft:armor_stand ~ ~ ~ {Tags:["runeDestination"],Invisible:1b,Marker:1b}
execute in minecraft:overworld as @e[tag=runeDestination,limit=1] run say Dummy spawned

# Move the primed TNT cart
execute in minecraft:overworld store result entity @e[tag=runeDestinationCart,limit=1] Pos[0] double 1 run scoreboard players get @p[tag=runeTarget] runeX
execute in minecraft:overworld store result entity @e[tag=runeDestinationCart,limit=1] Pos[1] double 1 run scoreboard players get @p[tag=runeTarget] runeY
execute in minecraft:overworld store result entity @e[tag=runeDestinationCart,limit=1] Pos[2] double 1 run scoreboard players get @p[tag=runeTarget] runeZ

# Teleport Armor Stand to TNT cart
execute in minecraft:overworld as @e[tag=runeDestination,limit=1] run tp @s @e[tag=runeDestinationCart,limit=1]

# Teleport player and rune to correct dimension
execute in minecraft:overworld at @e[tag=runeDestination,limit=1] run tp @p[tag=runeTarget] ~ ~ ~
execute in minecraft:overworld at @e[tag=runeDestination,limit=1] run tp @e[tag=activeRune] ~ ~ ~ 

execute in minecraft:overworld at @p[tag=runeTarget] run particle cloud ~ ~ ~ 0 0 0 0.4 1000 normal
execute in minecraft:overworld as @p[tag=runeTarget] run say Kal Ort Por

# Cleaning the armor stand
execute in minecraft:overworld run kill @e[tag=runeDestination,limit=1]
execute in minecraft:overworld run kill @e[tag=runeDestinationCart,limit=1]