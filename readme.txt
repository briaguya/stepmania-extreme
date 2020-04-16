Accurate DDR extreme arcade simulation, based on Stepmania.
revision 3, beta 1
by beware.

This is a complete simulation of DDR Extreme arcade, everything included. all 240 songs with high quality ogg encodings,
and background videos/scripts. Unpack and play. This could be put in an arcade cabinet. Patches to SM 3.9 are also included.

--------------------------------------------------------------------
changes since r2:

- all of the cumulative updates for r2 (bug fixes, debounce patch, etc)
- re-encoded all songs from the lossless sources with ogg aotuv beta 6.03
- found and fixed a stepchart error in 3 more songs
- improved syncing of songs (fixed a number of sync problems)
- bg videos are disc ripped
- verified and fixed all bg scripts for accuracy
- verified and fixed song preview starting points
- course wheel entry card images
- improvements to theme accuracy, including more patches
- random bemani and random dancemania nonstop courses
- linux support. it should be easy to get working on most current setups.
- the special ending

--------------------------------------------------------------------
credits:
- Konami, for DDR.
- The Stepmania developers, for Stepmania.
- DDRUK for their song packs.
- SSGotenksUFO, T_Bone_X_Zeo, Amy, for lossless song rips
- katze for his extreme announcer.
- AJ187 for extreme arcade ripped graphics

I have changed about every single aspect of the Stepmania setup:

- Stepmania code: lots of changes to the source code.
- Theme: made from scratch, using ripped graphics and metrics based on own observation.
- Noteskin: created beware extreme noteskin.
- Background videos: collected videos from various sources, encoded missing ones, and renamed (created beware BG videos 2005 pack).
- Background scripts: collected or made a script for all 240 songs.
- Songs/stepfiles: fixed some small errors in ddruk's stepfiles. Replaced all mp3's with oggs encoded (with aoTuV b5) from mostly lossless sources.
- Pad/cabinet lights:like DDR Extreme arcade.

--------------------------------------------------------------------
Notes:

- To go to the options menu, press scroll lock. From there it's possible to, for example, set home mode.
- For the background videos to play, you need a codec which can decode mpeg 4 part 2 (such DivX, XviD, or ffdshow).
- If you're using this in an arcade cabinet, you will have to map the buttons, then set "dedicated menu buttons" and "arcade style options menu navigation".
- To have the grades and scores showing in the wheel, use "togglememcard.bat" in the theme dir.
- The theme is incompatible with normal stepmania 3.9, and this stepmania is not compatible with normal themes.
- The dancing characters used in DDR for the beginner helpers ("train" and "bus") have never been ripped, so i can't get them.
- Since release 1, the d3d specific problems with the evaluation screen have been fixed.

---------------
Highlights/features:

Miscellanious:
- The exact same (240) songs as the DDR Extreme Arcade.
- The size has been reduced by removing unnessesary things. It now fits neatly on a standard 80-minute CD-R.
- Credits indicators: original SM behavior in "home" mode. In free play and pay mode, they show all the time, as in ddr. "Event mode" text shows in the middle.
- Arcade style event mode option added. Among other things, automatically toggles some SM settings to the right setting for event mode on or off.
- Freeze jumps now count as one OK, not 2.
- Scoring is exactly like DDR Extreme arcade.
- Judge window times: I saw in a video that the boo window appears to be ~0.16 secs (the delay before a miss appears). The actual timing is between "theory 1" and "theory 2". The "PERFECT" window is 33ms.
- Extra stage and one more extra stage are like DDR Extreme - same song, same mods.
- All music wheel entries for songs, groups, ABC sort, and random/roulette show the ripped graphics images.

Beginner helper/characters:
- By default, the beginner helpers show, but dancing characters don't. It's also possible to disable or enable both.

Ranking songs/courses, highscores:
- The correct courses and ranking are shown in the highscore screen (pop4, naoki neo standard, dancemania oni).
- Highscore screens have exact layout.

Select style:
- Separate pad and character animations.
- Player 1 shows konsento (robot), player 2 shows zukin (girl).

Select difficulty:
- In "Double" mode, beginner difficulty cannot be chosen.

select music:
- BPM has scrolling animation.
- The same sort modes and lists as the arcade (default list of songs, groups, ABC sort, etc), graphics look accurately like ddr.
- The same "codes" for mods as in DDR Extreme.
- Feet/difficulty look correct.

Select options:
- Shows the option icons.
- Shows the difficulty icons.
- Exactly the same options and same layout/fonts as the arcade.
- The highlight bars look correct (green for p1, brown for p2).
- Graphical option icons.

Gameplay screen:
- Note colors should be exactly the same as the arcade (based on ex cs jp emulator screenshots).
- White "explosions" for "Marvelous" accurate steps, even if "Marvelous" is not used.
- The timing of the white things on the arrows, and the receptor arrows, is correct.

Gameplay oni screen:
- Red flashing life/score areas if you lose lives.
- Dance points indicator animates when stepping on arrows.

Evaluation screen:
- Correct fonts and layout for everything.
- Max combo flashes if full combo. Oni "stages" flashes if all cleared.
- The percentage bar in oni mode works.
- Exact grades settle animation.

--------------------------------------------------------------------
Modification instructions:

Adding songs:

Individual songs are best placed in their mix folders for older ddr songs (1st mix, 2nd mix, etc),
and in the "New Songs" folder for anything else (newer than ex ac, non ddr, etc)
When adding song groups, note the group colors. The 20 song groups from ddr extreme have numbered names to make them sort correctly.
Song group colors are in the theme's metrics.ini, [songmanager] section.
A song being red (boss song) or flashing 10 footer can be edited in the theme, Other/SongInfo.ini.

The default list (the songs which show before you change sort mode) are in the metrics, [songmanager] section.
To disable it completely, 2 things need to be changed in the metrics:
- set [songmanager] DefaultListEnabled=0 to make the sort mode not show up when changing sort modes.
- set [screenselectmusic] DefaultSort=GROUP to make "group" sort mode the default.

Adding courses:

The courses showing in the wheel are defined in a list to allow full control over the sort order and entry colors.
To add courses, either add their entries also in nonstoplist or onilist in the metrics, or set the list's "enabled"
setting to 0 to use SM's behavior of showing all courses.

------------------------------------------------
Theme copyright notice:

The old theme (in beware stepmania extreme r1) is based on takuya's ddrextremeVS4, the new one is made from scratch.
However, i didn't use a perfectly clean method to create my theme, for example, I started using the fonts from the old theme, 
Which I then replaced with new ones one by one. The same applies to a few graphics. I have also copied an occasional
metric line, which I made in the old theme, to the new theme. It's possible that I made a mistake somewhere and an
occasional trace of VS4 might be in the new theme. This is not intended to steal takuya's work.
If any graphic is left behind, this is covered by his permission to use VS4 graphics, but not metrics.

The sounds in the theme are from takuya's/katze's themes. Among those 2 themes, the same sound is the same file, 
which means the sounds are from a common source, or are shared between the themes. For this reason, I think reusing these sounds is okay.
In addition, I have permission from katze to use his theme as a base, which thus applies to any sounds in his theme.
I originally intended to rip my own sounds from the ps2 disc, but I couldn't find a way to do so.

The graphics are ripped from ddr extreme arcade and home versions, and thus are Konami's work. However,
this is a fan work which is made available for free, based on a game which Konami no longer sells. It was never my intention to harm Konami.
