function fanu:needmorecoffee/move_player/update_delta

execute if score @s deltaX < @s zero if score @s deltaX > @s minusOneK if score @s deltaX > @s minusOneH if score @s deltaX <= @s minusOneD run spreadplayers ~10 ~ 0 1 false @s
execute if score @s deltaX > @s zero if score @s deltaX < @s oneK if score @s deltaX < @s oneH if score @s deltaX >= @s oneD run spreadplayers ~-10 ~ 0 1 false @s

execute if score @s deltaZ < @s zero if score @s deltaZ > @s minusOneK if score @s deltaZ > @s minusOneH if score @s deltaZ <= @s minusOneD run spreadplayers ~ ~10 0 1 false @s
execute if score @s deltaZ > @s zero if score @s deltaZ < @s oneK if score @s deltaZ < @s oneH if score @s deltaZ >= @s oneD run spreadplayers ~ ~-10 0 1 false @s