REM this toggles between grades/scores showing in the wheel or not.

REM i'm paranoid so check if every file is present or don't do anything -beware

IF NOT EXIST "graphics\ScreenSelectMusic score frame p1.png" GOTO END
IF NOT EXIST "graphics\ScreenSelectMusic score frame p2.png" GOTO END
IF NOT EXIST "graphics\MusicWheelItem grades 2x8.png" GOTO END
IF NOT EXIST "metrics.ini" GOTO END

IF EXIST "metrics.mem" GOTO MEM

:NOMEM
IF NOT EXIST "graphics\ScreenSelectMusic score frame p1.nomem" GOTO END
IF NOT EXIST "graphics\ScreenSelectMusic score frame p2.nomem" GOTO END
IF NOT EXIST "graphics\MusicWheelItem grades 2x8.nomem" GOTO END
IF NOT EXIST "metrics.nomem" GOTO END
RENAME "metrics.ini" "metrics.mem"
RENAME "metrics.nomem" "metrics.ini"
RENAME "graphics\ScreenSelectMusic score frame p1.png" "ScreenSelectMusic score frame p1.mem"
RENAME "graphics\ScreenSelectMusic score frame p1.nomem" "ScreenSelectMusic score frame p1.png"
RENAME "graphics\ScreenSelectMusic score frame p2.png" "ScreenSelectMusic score frame p2.mem"
RENAME "graphics\ScreenSelectMusic score frame p2.nomem" "ScreenSelectMusic score frame p2.png"
RENAME "graphics\MusicWheelItem grades 2x8.png" "MusicWheelItem grades 2x8.mem"
RENAME "graphics\MusicWheelItem grades 2x8.nomem" "MusicWheelItem grades 2x8.png"
RENAME "bganimations\2p.png" "2p.mem"
RENAME "bganimations\2p.nomem" "2p.png"

GOTO END
:MEM
IF NOT EXIST "graphics\ScreenSelectMusic score frame p1.mem" GOTO END
IF NOT EXIST "graphics\ScreenSelectMusic score frame p2.mem" GOTO END
IF NOT EXIST "graphics\MusicWheelItem grades 2x8.mem" GOTO END
IF NOT EXIST "metrics.mem" GOTO END
RENAME "metrics.ini" "metrics.nomem"
RENAME "metrics.mem" "metrics.ini"
RENAME "graphics\ScreenSelectMusic score frame p1.png" "ScreenSelectMusic score frame p1.nomem"
RENAME "graphics\ScreenSelectMusic score frame p1.mem" "ScreenSelectMusic score frame p1.png"
RENAME "graphics\ScreenSelectMusic score frame p2.png" "ScreenSelectMusic score frame p2.nomem"
RENAME "graphics\ScreenSelectMusic score frame p2.mem" "ScreenSelectMusic score frame p2.png"
RENAME "graphics\MusicWheelItem grades 2x8.png" "MusicWheelItem grades 2x8.nomem"
RENAME "graphics\MusicWheelItem grades 2x8.mem" "MusicWheelItem grades 2x8.png"
RENAME "bganimations\2p.png" "2p.nomem"
RENAME "bganimations\2p.mem" "2p.png"

:END
