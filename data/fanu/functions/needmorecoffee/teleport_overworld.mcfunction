say Teleporting to overworld...
execute in minecraft:overworld run summon minecraft:armor_stand ~ ~ ~ {Tags:["runeDestination"],Invisible:1b,Marker:1b}

# Teleport rune to destination
execute in minecraft:overworld store result entity @e[tag=runeDestination,limit=1] Pos[0] double 1 run scoreboard players get @p[tag=runeTarget] runeX
execute in minecraft:overworld store result entity @e[tag=runeDestination,limit=1] Pos[1] double 1 run scoreboard players get @p[tag=runeTarget] runeY
execute in minecraft:overworld store result entity @e[tag=runeDestination,limit=1] Pos[2] double 1 run scoreboard players get @p[tag=runeTarget] runeZ

execute in minecraft:overworld at @e[tag=runeDestination,limit=1] run tp @p[tag=runeTarget] ~ ~ ~

execute in minecraft:overworld at @e[tag=runeDestination,limit=1] run tp @e[tag=activeRune] ~ ~ ~ 

execute in minecraft:overworld at @p[tag=runeTarget] run particle cloud ~ ~ ~ 0 0 0 0.4 1000 normal
execute in minecraft:overworld as @p[tag=runeTarget] run say Kal Ort Por

execute in minecraft:overworld run kill @e[tag=runeDestination,limit=1]