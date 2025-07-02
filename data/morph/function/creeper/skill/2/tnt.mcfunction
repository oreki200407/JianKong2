###################################################
# 苦力怕的第二個技能 召喚出往前飛的TNT
# 
# Name   : tnt.mcfunction
# Path   : morph:creeper/skill/2/
# As     : 召喚出的標記
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$summon tnt ~ ~ ~ {Tags:["morph_tnt"],Motion: [$(x)d, $(y)d, $(z)d], fuse: 40}