function fanu:needmorecoffee/move_player/update_delta

execute if score @s deltaX < @s zero if score @s deltaX <= @s minusOneD run tp @s ~10 ~ ~
#execute if score @s deltaX > @s zero if score @s deltaX >= @s oneD run tp @s ~-10 ~ ~

execute if score @s deltaZ < @s zero if score @s deltaZ <= @s minusOneD run tp @s ~10 ~ ~
#execute if score @s deltaZ > @s zero if score @s deltaZ >= @s oneD run tp @s ~-10 ~ ~