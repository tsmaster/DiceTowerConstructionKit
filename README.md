# Modular Dice Tower Construction Kit

By Dave LeCompte


I recently got a Monoprice Mini Delta 3D printer, which has a 110mm
diameter print bed. This is adequate for a lot of printing jobs, but
can provide an interesting constraint for larger tasks. I wanted to
try to make a dice tower that would fit inside the print volume.

This project is a collection of modules, largely printable on a small
printer, that can be assembled in a variety of ways, to provide
customizable randomization for your dice rolls.

Current modules include:

 - Conical Funnel: a cone-shaped funnel that might be at the top, where you might put the dice in

 - Spacer: a "null" module that doesn't interfere with the dice, just gives them room to fall

 - Triangular beam: a beam across the module with a triangular cross section, bouncing some one way, some the other way

 - Receiver: a module to put at the bottom to collect the dice.

 - Ramp: a simple 45 degree slat that bounces dice away from one edge of a tube

 - Chain: a tube with a chain spanning the center

 - Propellor: a pair of blades that cause the dice to go counterclockwise around the tube

 - Spiral Staircase: a spiral staircase, suitable for tiny wizards to climb

More modules are planned. You can print out any number of modules and
assemble them as you like, and each module can be freely
rotated. Maybe you want to roll some dice at the beginning of a
session to decide which modules, and in which order, to assemble into
your custom tower. Or, maybe you just got a critical failure and need
to get a better randomization stream for future die rolls - just
reassemble the tower at the table; quick and easy!


## Software Required

If you want to just print out the files I've built, nothing special is
required. However, if you want to contribute, it's good to know I'm
using an unusual pipeline:


### Python3

I've been a holdout and have been using Python2 for years. It's
finally time for me to get comfortable with Python3. The scripts
*probably* work with Python2, but I'm not going to maintain that.


### OpenPySCAD

https://github.com/taxpon/openpyscad

A Python-to-OpenSCAD library. Seems to do what I need. I'm familiar
with Python's imperative programming style, so writing in Python is
easier for my brain.


### OpenSCAD

https://www.openscad.org/

Converts the .scad files into .stl files. After that, you're off to
the races.