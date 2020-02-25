-- NetHack 3.6	Monk.des	$NHDT-Date: 1432512784 2015/05/25 00:13:04 $  $NHDT-Branch: master $:$NHDT-Revision: 1.12 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991-2 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.level_flags("hardfloor", "outdoors")
--         1         2         3         4         5         6         7 
--123456789012345678901234567890123456789012345678901234567890123456789012345
des.map([[
....TTT    .}}}...T...     T...      ..  T....      T..T      ...           
......T  ...}}.......    .......T ...........     ......    .......  .....  
T.....   ..}....T..........................      ... T...   .----.....----. 
TT....    } ...   .........  ....... ....     ...........  ..|..-------..|. 
TT...T   }            ...   .......  ...      ....  ....T  ..|...........|..
TT...  {}    ....T.        .....T   ...     T....    ...  ...--..-----..--..
T....       .......T      .....     ...   .......     ..  ....|..|...|..|...
T...T     .... ....T     ....      ....   ......      ..   ...|..|...|..|...
T...T    T...  .....     T..     ....T.   ......      ..  ....|..|...|..|...
....     ...  T....     ...     .......    ....       ...  ..--..-----..--..
...     ...   ....    T....   ..T.....     ....      T...  ..|...........|. 
...T   ....  .....   ......   .......      T....     ...   ..|..-------..|. 
...T   ...   T...    .....     .....      .......    ....   .----.....----. 
....  ....   ....     .....    .....      .......   .....   ..............  
.... T....   ....     ....    .......{   ......T    .......     ... ......  
T... .....   ....T   .....   .......}.T  .......    T......           ....  
T...B......   .....  ....T   ......}.............     .........   ......... 
T...B....T.   ..... .....     ..T..}..........          T.................. 
TTT.B.}.       }}......}}       ..}......T.             ................    
]]);

-- Dungeon Description
des.region(selection.area(00,00,75,18), "lit")
-- darken the fortress
des.region(selection.area(62,03,72,11), "unlit")

-- Stairs
des.stair("up", 00,00)
des.stair("down", 67,07)

-- Non diggable walls
des.non_diggable(selection.area(00,00,75,20))

-- Make one door on a random side of the inner and outer walls of the fort 
innerwalls = { {67,05},{65,07},{69,07},{67,09} }
outerwalls = { {67,03},{62,07},{72,07},{67,11} }
local innerwallsidx = math.random(1, #innerwalls);
local outerwallsidx = math.random(1, #outerwalls);
des.door({ state = "locked", coord = innerwalls[innerwallsidx], iron = 1 })
des.door({ state = "secret", coord = outerwalls[outerwallsidx] })

-- Objects
des.object("chest", 62, 03)
des.object("chest", 62, 11)
des.object("chest", 72, 03)
des.object("chest", 72, 11)
des.object()
des.object()
des.object()
des.object()
for i=1,5 do
  des.object("boulder")
end

-- Traps
forest = selection.floodfill(01, 01)
for i=1, 2 + math.random(1, 2) do
  des.trap({ type = "bear", coord = { forest:rndcoord() } })
end
des.trap("pit")
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("land mine")
des.trap("rolling boulder")
des.trap("bear")
fortress = selection.floodfill(62,03)
for i=1,3 + math.random(1 - 1,1*3) do
  des.trap({ coord = { fortress:rndcoord() } })
end

-- Random monsters.
des.monster("earth elemental", 05, 17)
des.monster("earth elemental", 13, 02)
des.monster("earth elemental", 28, 01)
des.monster("earth elemental", 24, 11)
des.monster("earth elemental", 70, 17)
des.monster("earth elemental", 72, 16)
des.monster("E", 15, 01)
des.monster("E", 45, 07)
des.monster("xorn", 07, 16)
des.monster("xorn", 42, 17)
des.monster("xorn", 44, 16)
des.monster("xorn", 63, 04)
des.monster("xorn", 71, 04)
des.monster("xorn", 63, 10)
des.monster("xorn", 71, 10)
local fortressarea = selection.area(58,00,75,13)
for i=1,4 do
  des.monster({ class = "E", coord = { fortressarea:rndcoord() } })
end
