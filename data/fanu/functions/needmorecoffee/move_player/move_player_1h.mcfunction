function fanu:needmorecoffee/move_player/update_delta

execute if score @s deltaX < @s zero if score @s deltaX <= @s minusOneH run tp @s ~100 ~ ~
#execute if score @s deltaX > @s zero if score @s deltaX >= @s oneH run tp @s ~-100 ~ ~

execute if score @s deltaZ < @s zero if score @s deltaZ <= @s minusOneH run tp @s ~100 ~ ~
#execute if score @s deltaZ > @s zero if score @s deltaZ >= @s oneH run tp @s ~-100 ~ ~