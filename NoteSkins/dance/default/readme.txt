beware's ddr extreme noteskin

version: 2006-06-22

shapes of ps2 DDR arrows

notes:

- to get exactly correct vivid arrow colors like DDR, stepmania needs to be patched (patch for SM 3.9 included), to get this behavior: notes here called "4th, 8th, 12th, 16th" are to be displayed for notes on beat positions 0.76-0, 0.26-0.5, 0.51-0.75 and 0.01-0.25.
without the patch, this noteskin will still look close: correct for 4th and 8th notes. 16th notes on beat position 0.75, as well as 24th/32nd etc notes will have colors slightly off.
this behavior is also why 8th notes are purple (color 6) on a beat. they are blue (color 8) between 2 beats, when one steps on an 8th note. i found out about this behavior by looking at an animation recorded from ps2 emulator screenshots. if you use the patch, any noteskin other than default needs the line "ddrvivid=0" in the metrics.

- shapes of noteskin are like ps2 based ddr (ex cs, DS fusion arcade, etc)

- exact colors captured from extreme ps2 emulator screenshots. for default, solo, and freeze arrows.

- there is no support for solo (6 panels) mode - upleft/upright arrows are missing.

- the receptor flash starts exactly on the beat, and lasts 0.25 beats. this is verified, based on emulator screenshots animation recording. also, the third flashing thing in the arrows should become white exactly on the beat, and all 3 become dark on beat 0.25.

- the scripting and images of the ghost arrows (explosions) are done to look as close as possible to ps2 based on emulator screenshots animation recording, and arcade videos.

- freeze arrow explosion like arcade (30 Hz flicker), and use addition blend

- changed metrics of <100 combo explosion to look more like ac

- using 64 "frames" for default and flat notes, 32 frames for solo. note this requires a texture size of 512.

- fixed explosions in d3d mode (mostly used by cheap video hardware)

- changed the "receptor arrow pressed" animations

- redid note graphics to have full color range between 0-255 (psx screenshots are reduced 0-250)

- used pngcrush on all images

- set zoom when stepping on arrow back to 0.75

- edited freeze explosion graphic to look more correct, and metrics (4 frames of 1/60th sec)

- fixed: freeze explosion graphic didnt look correct yet, i forgot to compensate for addition blending
