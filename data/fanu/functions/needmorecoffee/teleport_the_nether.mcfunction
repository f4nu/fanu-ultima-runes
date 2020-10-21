say Teleporting to the_nether...
execute in minecraft:the_nether as @p[tag=runeTarget] run tp @s ~ 270 ~

execute as @p[tag=runeTarget] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["runeDestination"],Invisible:1b,Marker:1b}
execute as @p[tag=runeTarget] at @s run data get entity @e[tag=runeDestination,limit=1]

# Teleport rune to destination
execute in minecraft:the_nether store result entity @e[tag=runeDestination,limit=1] Pos[0] double 1 run scoreboard players get @p[tag=runeTarget] runeX
execute in minecraft:the_nether store result entity @e[tag=runeDestination,limit=1] Pos[1] double 1 run scoreboard players get @p[tag=runeTarget] runeY
execute in minecraft:the_nether store result entity @e[tag=runeDestination,limit=1] Pos[2] double 1 run scoreboard players get @p[tag=runeTarget] runeZ

execute in minecraft:the_nether at @e[tag=runeDestination,limit=1] run tp @p[tag=runeTarget] ~ ~ ~

execute in minecraft:the_nether at @e[tag=runeDestination,limit=1] run tp @e[tag=activeRune] ~ ~ ~ 

execute in minecraft:the_nether at @p[tag=runeTarget] run particle cloud ~ ~ ~ 0 0 0 0.4 1000 normal
execute in minecraft:the_nether as @p[tag=runeTarget] run say Kal Ort Por

execute in minecraft:the_nether run kill @e[tag=runeDestination,limit=1]