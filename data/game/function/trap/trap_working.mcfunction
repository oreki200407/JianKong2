#1代表陷阱啟動成功
execute store success score @s trap at @s align xyz as @n[type=#game:trap_can_affect, tag=!trapped, dx=0, dy=0, dz=0] run function game:trap/detected/root

#啟動成功就可以清除了
kill @s[scores={trap=1}]