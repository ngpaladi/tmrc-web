---
title: Monthly Update June 2003 
layout: post
author: Tom N. Paulsen
---



 **June 25**Okay, so we haven't had any progress reports in a long time...oops. *Any*ways...what's been going on recently? Lesse, there's a bunch of projects. Sorry to everyone else in the club but this progress update is only going to talk about things I've had something to do with. If anyone else wants to write their own progress updates, please do.  First, the new section of layout. This is progressing at a fair pace. The helix from the lower level to the freight yard is about half\-way complete. Currently track is being layed by Tom O'Reilly. The current plan is to get the main line complete and operational all all the way around the new section complete by the end of summer. To get this accomplished we're probably going to need some more people to help (hint, hint).  Second, Alvar Saenz\-Otero and I (James Knight) designed and built a new room light control system. This has a gratuitous text LCD panel as well as 3 buttons: on, off, and "dinner". It controls the room lighting, system power, and outlet power. This ensures that when people leave the room and turn out the lights, they don't leave the control system or anything such as soldering irons turned on by mistake. It also has the ability to talk to the PC so soon you might see a link to see if the lights in the clubroom are on or not. :) The next stage of this project is building a similar system for the halogen track\-lights.  Third, we just got in six new block cards for use in the new section of main line and the F\-yard. This will give us the capability to add 48 blocks more blocks (bringing the total to 17 block cards or 136 blocks), which *should* just about cover the new part of the layout. Lots of assembly and wiring to do here.   Fourth, because it's actually free to tack on additional boards to the side of the blockcards when we're creating the PCBs, we also made some other boards.   The most notable of those is a interface board for a 64x128 pixel graphical LCD display that we're going to use in wireless cabs in the future. This display had a very inconvenient connector that is impossible to use without a custom PCB to connect it to, so, we made one. I (James) am in the midst of writing software for the PIC to draw fonts/lines/etc on the graphical LCD. At some point someone (hopefully not just me by myself (hint, hint)) will need to design the UI and write the code to control it.  The other two boards we built are a prototyping board with our PIC and standard network interface on it, and a "mini\-switchcard". The prototyping board will make it much easier to do all sorts of random projects that need to be on our PIC network, and the mini\-switchcard is designed for driving 24 light outputs such as signal heads or building lights. Noone's currently working on building lighting at all, but if someone DID want to (it would be quite cool), we have boards to drive the lights now.   *James Knight* **June 28**Today I spent a few hours getting the LCD board (shown in picture) working. It is now working, but there were many problems. The most serious was that we got the pin order of the LCD pads backwards. Apparently pin 1 is on the right, not the left..oops.  After fixing a few more minor problems (one of the data lines wasn't conducting \- thus making some instructions to the LCD work and others not), most everything was working \-\- lines, boxes, pixels, etc.  The one remaining problem was drawing fonts was not working. This turned out to be (yet another) bug with the cheapo C compiler we have ("CCS C compiler" \- it's pretty bad). The current problem is that it has a hard limit of 512 words in all "\#ROM" sections in a program. Since I was using \#ROM sections to store the raw data for the fonts, I was using around 600 words for all the character data, so the compiler proceeded to silently ignore half my font data. Not even nice enough to give an error message! Anyhow, after rewriting the program I made that converts from X fonts to data to load into the PIC such that it outputs HEX files directly (thus avoiding the C compiler), fonts now work as well!  In other news, Alan Kotok assembled about 3/4 of a block card, and John Purbrick and Tom O'Reilly laid more track around the loop up to F\-yard. Other people probably did other stuff too but I didn't notice if they did so they'll have to talk for themselves. ;)  *James Knight*  