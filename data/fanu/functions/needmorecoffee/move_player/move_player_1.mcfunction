function fanu:needmorecoffee/move_player/update_delta

execute if score @s deltaX < @s zero if score @s deltaX > @s minusOneK if score @s deltaX > @s minusOneH if score @s deltaX > @s minusOneD if score @s deltaX <= @s minusOne run spreadplayers ~1 ~ 0 1 false @s
execute if score @s deltaX > @s zero if score @s deltaX < @s oneK if score @s deltaX < @s oneH if score @s deltaX < @s oneD if score @s deltaX >= @s one run spreadplayers ~-1 ~ 0 1 false @s

execute if score @s deltaZ < @s zero if score @s deltaZ > @s minusOneK if score @s deltaZ > @s minusOneH if score @s deltaZ > @s minusOneD if score @s deltaZ <= @s minusOne run spreadplayers ~ ~1 0 1 false @s
execute if score @s deltaZ > @s zero if score @s deltaZ < @s oneK if score @s deltaZ < @s oneH if score @s deltaZ < @s oneD if score @s deltaZ >= @s one run spreadplayers ~ ~-1 0 1 false @s