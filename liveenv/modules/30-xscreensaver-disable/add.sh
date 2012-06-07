#!/bin/sh
cd "$(dirname "$0")"
HDIR="$(readlink -f "$PWD"/../..)"
RDIR="$HDIR"/root
doinst="$HDIR"/doinst
modtxt="$HDIR"/MODIFICATIONS

cat <<EOF >> "$modtxt"
xscreensaver-disable
--------------------
- disable the xscreensaver for user 'one' because it cause some problems with no-password account.


EOF

cat <<EOF > "$RDIR"/home/one/.xscreensaver
# XScreenSaver Preferences File
# Written by xscreensaver-demo 5.04 for one on Tue Mar 18 10:48:42 2008.
# http://www.jwz.org/xscreensaver/

timeout:	0:10:00
cycle:		0:10:00
lock:		False
lockTimeout:	0:00:00
passwdTimeout:	0:00:30
visualID:	default
installColormap:    True
verbose:	False
timestamp:	True
splash:		True
splashDuration:	0:00:05
demoCommand:	xscreensaver-demo
prefsCommand:	xscreensaver-demo -prefs
nice:		10
memoryLimit:	0
fade:		True
unfade:		False
fadeSeconds:	0:00:03
fadeTicks:	20
captureStderr:	True
ignoreUninstalledPrograms:False
font:		*-medium-r-*-140-*-m-*
dpmsEnabled:	False
dpmsStandby:	2:00:00
dpmsSuspend:	2:00:00
dpmsOff:	4:00:00
grabDesktopImages:  True
grabVideoFrames:    False
chooseRandomImages: True
imageDirectory:	/usr/share/wallpapers

mode:		off
selected:	-1

textMode:	file
textLiteral:	XScreenSaver
textFile:	
textProgram:	fortune
textURL:	http://www.livejournal.com/stats/latest-rss.bml

programs:								      \
		 "Qix (solid)" 	qix -root -solid -segments 100		    \n\
	   "Qix (transparent)" 	qix -root -count 4 -solid -transparent	    \n\
		"Qix (linear)" 	qix -root -count 5 -solid -transparent	      \
				  -linear -segments 250 -size 100	    \n\
	  "Attraction (balls)" 	attraction -root -mode balls		    \n\
	  "Attraction (lines)" 	attraction -root -mode lines -points 3	      \
				  -segments 200				    \n\
-	"Attraction (splines)" 	attraction -root -mode splines -segments      \
				  300					    \n\
-	"Attraction (orbital)" 	attraction -root -mode lines -radius 300      \
				  -orbit -vmult 0.5			    \n\
				pyro -root				    \n\
				rocks -root				    \n\
				helix -root				    \n\
				pedal -root				    \n\
				rorschach -root				    \n\
				hopalong -root				    \n\
				greynetic -root				    \n\
				imsmap -root				    \n\
				slidescreen -root			    \n\
				decayscreen -root			    \n\
				jigsaw -root				    \n\
				blitspin -root				    \n\
				slip -root				    \n\
				distort -root				    \n\
				spotlight -root				    \n\
	      "Ripples (stir)" 	ripples -root -oily -light 2 -stir	    \n\
	   "Ripples (desktop)" 	ripples -root -water -light 6		    \n\
				hypercube -root				    \n\
-				hyperball -root				    \n\
				halo -root				    \n\
				maze -root				    \n\
				noseguy -root				    \n\
				flame -root				    \n\
-				lmorph -root				    \n\
				deco -root				    \n\
				moire -root				    \n\
				moire2 -root				    \n\
				lightning -root				    \n\
				strange -root				    \n\
-				spiral -root				    \n\
				laser -root				    \n\
				grav -root				    \n\
				drift -root				    \n\
				ifs -root				    \n\
				julia -root				    \n\
				penrose -root				    \n\
-				sierpinski -root			    \n\
				braid -root				    \n\
				galaxy -root				    \n\
				bouboule -root				    \n\
				swirl -root				    \n\
				flag -root				    \n\
				sphere -root				    \n\
				forest -root				    \n\
-				lisa -root				    \n\
-				lissie -root				    \n\
				goop -root				    \n\
				starfish -root				    \n\
				munch -root				    \n\
				mismunch -root				    \n\
				fadeplot -root				    \n\
				coral -root				    \n\
				mountain -root				    \n\
				triangle -root				    \n\
-				worm -root				    \n\
-				rotor -root				    \n\
-				demon -root				    \n\
-				loop -root				    \n\
-				vines -root				    \n\
				kaleidescope -root			    \n\
				xjack -root				    \n\
				xlyap -root				    \n\
				cynosure -root				    \n\
				flow -root				    \n\
				epicycle -root				    \n\
				interference -root			    \n\
				truchet -root				    \n\
				bsod -root				    \n\
				crystal -root				    \n\
				discrete -root				    \n\
				kumppa -root				    \n\
				rd-bomb -root				    \n\
	    "RD-Bomb (mobile)" 	rd-bomb -root -speed 1 -size 0.1	    \n\
				sonar -root				    \n\
				t3d -root				    \n\
				penetrate -root				    \n\
				deluxe -root				    \n\
				compass -root				    \n\
				squiral -root				    \n\
				xflame -root				    \n\
				wander -root				    \n\
	      "Wander (spots)" 	wander -root -advance 0 -size 10 -circles     \
				  -length 10000 -reset 100000		    \n\
-				critical -root				    \n\
				phosphor -root				    \n\
				xmatrix -root				    \n\
				petri -root				    \n\
		     "Petri 2" 	petri -root -minlifespeed 0.02		      \
				  -maxlifespeed 0.03 -minlifespan 1	      \
				  -maxlifespan 1 -instantdeathchan 0	      \
				  -minorchan 0 -anychan 0.3		    \n\
				shadebobs -root				    \n\
				ccurve -root				    \n\
				blaster -root				    \n\
				bumps -root				    \n\
				xanalogtv -root				    \n\
				xspirograph -root			    \n\
				nerverot -root				    \n\
				xrayswarm -root				    \n\
-	      "Zoom (Fatbits)" 	zoom -root				    \n\
	       "Zoom (Lenses)" 	zoom -root -lenses			    \n\
				rotzoomer -root				    \n\
				whirlwindwarp -root			    \n\
				whirlygig -root				    \n\
				speedmine -root				    \n\
		   "SpeedWorm" 	speedmine -root -worm			    \n\
				vermiculate -root			    \n\
				twang -root				    \n\
				apollonian -root			    \n\
				euler2d -root				    \n\
	     "Euler2d (dense)" 	euler2d -root -count 4000 -eulertail 400      \
				  -ncolors 230				    \n\
-				juggle -root				    \n\
				polyominoes -root			    \n\
-				thornbird -root				    \n\
				fluidballs -root			    \n\
				anemone -root				    \n\
				halftone -root				    \n\
				metaballs -root				    \n\
				eruption -root				    \n\
				popsquares -root			    \n\
				barcode -root				    \n\
				piecewise -root				    \n\
				cloudlife -root				    \n\
				fontglide -root				    \n\
				apple2 -root				    \n\
				bubbles -root				    \n\
				pong -root				    \n\
				wormhole -root				    \n\
				pacman -root				    \n\
				fuzzyflakes -root			    \n\
				anemotaxis -root			    \n\
				memscroller -root			    \n\
				substrate -root				    \n\
				intermomentary -root			    \n\
				interaggregate -root			    \n\
				fireworkx -root				    \n\
				fiberlamp -root				    \n\
				boxfit -root				    \n\
				celtic -root				    \n\
				cwaves -root				    \n\
				m6502 -root				    \n\
				abstractile -root			    \n\
- default-n: 			webcollage -root			    \n\
- default-n:  "WebCollage (whacked)"					      \
				  webcollage -root -filter 'vidwhacker	      \
				  -stdin -stdout'			    \n\
- default-n: 			vidwhacker -root			    \n\
  GL: 				gears -root				    \n\
  GL: 				superquadrics -root			    \n\
  GL: 				morph3d -root				    \n\
  GL: 				cage -root				    \n\
  GL: 				moebius -root				    \n\
  GL: 				stairs -root				    \n\
  GL: 				pipes -root				    \n\
  GL: 				sproingies -root			    \n\
  GL: 				rubik -root				    \n\
  GL: 				atlantis -root				    \n\
  GL: 				lament -root				    \n\
  GL: 				bubble3d -root				    \n\
  GL: 				glplanet -root				    \n\
  GL: 				flurry -root				    \n\
  GL: 				pulsar -root				    \n\
- GL: 	   "Pulsar (textures)" 	pulsar -root -texture -mipmap		      \
				  -texture_quality -light -fog		    \n\
- GL: 				extrusion -root				    \n\
  GL: 				sierpinski3d -root			    \n\
  GL: 				menger -root				    \n\
  GL: 				gflux -root				    \n\
  GL: 		"GFlux (grab)" 	gflux -root -mode grab			    \n\
  GL: 				stonerview -root			    \n\
  GL: 				starwars -root				    \n\
  GL: 				gltext -root				    \n\
  GL: 	      "GLText (clock)" 	gltext -text "%A%n%d %b %Y%n%r" -root	    \n\
  GL: 				molecule -root				    \n\
  GL: 				dangerball -root			    \n\
  GL: 				circuit -root				    \n\
  GL: 				engine -root				    \n\
  GL: 				flipscreen3d -root			    \n\
  GL: 				glsnake -root				    \n\
  GL: 				boxed -root				    \n\
- GL: 				glforestfire -root			    \n\
- GL: 	 "GLForestFire (rain)" 	glforestfire -root -count 0		    \n\
- GL: 				sballs -root				    \n\
  GL: 				cubenetic -root				    \n\
  GL: 				spheremonics -root			    \n\
  GL: 				lavalite -root				    \n\
  GL: 				queens -root				    \n\
  GL: 				endgame -root				    \n\
- GL: 				glblur -root				    \n\
  GL: 				atunnel -root				    \n\
  GL: 				flyingtoasters -root			    \n\
  GL: 				bouncingcow -root			    \n\
  GL: 				jigglypuff -root			    \n\
  GL: 				klein -root				    \n\
  GL: 				hypertorus -root			    \n\
  GL: 				glmatrix -root				    \n\
  GL: 				cubestorm -root				    \n\
  GL: 				glknots -root				    \n\
  GL: 				blocktube -root				    \n\
  GL: 				flipflop -root				    \n\
  GL: 				antspotlight -root			    \n\
- GL: 				glslideshow -root			    \n\
  GL: 				polytopes -root				    \n\
  GL: 				gleidescope -root			    \n\
- GL: 				mirrorblob -root			    \n\
  GL: "MirrorBlob (color only)" mirrorblob -root -colour -no-texture	    \n\
  GL: 				blinkbox -root				    \n\
  GL: 				noof -root				    \n\
  GL: 				polyhedra -root				    \n\
- GL: 				antinspect -root			    \n\
  GL: 				providence -root			    \n\
  GL: 	"Pinion (large gears)" 	pinion -root				    \n\
  GL: 	"Pinion (small gears)" 	pinion -root -size 0.2 -scroll 0.3	    \n\
  GL: 				boing -root -lighting -smooth		    \n\
- GL: 				carousel -root				    \n\
  GL: 				fliptext -root				    \n\
- GL: 				antmaze -root				    \n\
  GL: 				tangram -root				    \n\
  GL: 				crackberg -root				    \n\
  GL: 				glhanoi -root				    \n\
  GL: 				cube21 -root				    \n\
  GL: 				timetunnel -root			    \n\
  GL: 				juggler3d -root				    \n\
  GL: 				topblock -root				    \n\
  GL: 				glschool -root				    \n\
  GL: 				glcells -root				    \n\
  GL: 				voronoi -root				    \n\
  GL: 				moebiusgears -root			    \n\
  GL: 				lockward -root				    \n\
-				xdaliclock -root -font BUILTIN3		    \n\
-				xplanet -vroot -wait 1 -timewarp 90000	      \
				  -label -origin moon			    \n\
-				xmountains -b -M -Z 0 -r 1		    \n\
-	    "XMountains (top)" 	xmountains -b -M -Z 0 -r 1 -m		    \n\
-				xaos -root -autopilot -nogui -delay 10000     \
				  -maxframerate 30 -incoloring -1	      \
				  -outcoloring -1			    \n\
-				xsnow -root				    \n\
-				goban -root				    \n\
-				electricsheep				    \n\
-				cosmos -root				    \n\
- GL: 				sphereEversion --root			    \n\
- GL: 				fireflies -root				    \n\


pointerPollTime:    0:00:05
pointerHysteresis:  10
windowCreationTimeout:0:00:30
initialDelay:	0:00:00
sgiSaverExtension:  True
xidleExtension:	True
GetViewPortIsFullOfLies:False
procInterrupts:	True
overlayStderr:	True


EOF
