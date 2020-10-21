execute as @p store result score @s runeLevels run data get entity @s XpLevel
execute as @s if score @p runeLevels < @p runeLevelsMark run function fanu:needmorecoffee/mark_failure
execute as @s if score @p runeLevels >= @p runeLevelsMark run function fanu:needmorecoffee/mark_rune