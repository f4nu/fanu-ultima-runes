execute at @s run tp @e[nbt={Item:{id:"minecraft:netherite_ingot"}},sort=nearest,limit=1,distance=..0.5] ~-1 ~ ~-1
execute at @s run particle barrier ~ ~1 ~ 0 0 0 1 1 normal
execute at @s run particle crit ~ ~ ~ 0 0 0 1 30 normal
tp @s ~1 ~ ~1
tellraw @p {"text":"You need 25 levels of experience to mark a rune."}