# Teleport rune to destination
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=runeTarget] runeX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=runeTarget] runeY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=runeTarget] runeZ

execute at @s run tp @p[tag=runeTarget] ~ ~ ~

execute at @s run tp @e[tag=activeRune] ~ ~ ~ 

execute at @p[tag=runeTarget] run particle cloud ~ ~ ~ 0 0 0 0.4 1000 normal
execute as @p[tag=runeTarget] run say Kal Ort Por

kill @s