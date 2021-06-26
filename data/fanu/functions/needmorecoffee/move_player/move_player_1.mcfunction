function fanu:needmorecoffee/move_player/update_delta

execute if score @s deltaX < @s zero if score @s deltaX <= @s minusOne run tp @s ~1 ~ ~
#execute if score @s deltaX > @s zero if score @s deltaX >= @s one run tp @s ~-1 ~ ~

execute if score @s deltaZ < @s zero if score @s deltaZ <= @s minusOne run tp @s ~1 ~ ~
#execute if score @s deltaZ > @s zero if score @s deltaZ >= @s one run tp @s ~-1 ~ ~