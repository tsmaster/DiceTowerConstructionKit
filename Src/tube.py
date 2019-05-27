import sys
import openpyscad as ops
import os

DIAMETER = 100 # 80 feels too small, 100 might be too big to print on my printer
RADIUS = DIAMETER / 2

THICKNESS = 7.5 # mm

RIM_HEIGHT = 3.5 # mm

CYLINDER_SIDES = 64

RIM_EPSILON = 0.65

SCAD_DIR = "../Scad"

def tubeInnerSpace(h):
    return ops.Cylinder(h = h, r = RADIUS - THICKNESS, _fn=CYLINDER_SIDES)

def basicTube(h):
    b = ops.Cylinder(h = h + RIM_HEIGHT, r = RADIUS, _fn=CYLINDER_SIDES) - ops.Cylinder(h = 2*h, r = RADIUS - THICKNESS, _fn=CYLINDER_SIDES).translate([0, 0, -h / 2.0])

    
    lower = ops.Cylinder(h = RIM_HEIGHT + 1, r = RADIUS - THICKNESS / 2 + RIM_EPSILON, _fn=CYLINDER_SIDES).translate([0, 0, -1])

    tubeInnerRadius = RADIUS - THICKNESS

    lowerRimInternalRadius = RADIUS - (THICKNESS / 2) + RIM_EPSILON
    
    # tr is the inner radius (across the cream cheese) of the
    # torus. If this is exactly equal to the full wall thickness minus
    # the rim thickness, you get horizontal overhangs, so move it a
    # little inside.

    tr = THICKNESS
    
    # tm is the big radius (across the hole) of the torus. 

    tm = lowerRimInternalRadius - tr
    
    torus = ops.Circle(r = tr, _fn = CYLINDER_SIDES).translate(
        [tm, 0, 0]).rotate_extrude(convexity = 10, _fn = CYLINDER_SIDES).translate([0, 0, RIM_HEIGHT])

    lower = lower + torus

    upperRimExternalRadius = RADIUS - (THICKNESS / 2) - RIM_EPSILON
        
    upper = (ops.Cylinder(h = RIM_HEIGHT + 1, r = RADIUS + 1, _fn = CYLINDER_SIDES) -
             ops.Cylinder(h = RIM_HEIGHT + 2, r = upperRimExternalRadius, _fn = CYLINDER_SIDES).translate([0, 0, -1])).translate([0, 0, h])


    return b - lower - upper


def holeyTube(h, holeRadius, numHoles):
    b = basicTube(h)

    negative = ops.Cylinder(h = RADIUS+1, r = holeRadius).rotate([90, 0, 0]).translate([0, 0, h/2])

    incDeg = 360/numHoles

    d = 0

    while d < 360:
        rotNeg = negative.rotate([0, 0, d])
        b = b - rotNeg

        d += incDeg

    return b


if __name__ == "__main__":
    basicTube(25).write(os.path.join(SCAD_DIR, "tube.scad"))
    #holeyTube(25, 8, 13).write(os.path.join(SCAD_DIR, "tube1.scad"))
    #holeyTube(20, 4.5, 27).write(os.path.join(SCAD_DIR, "tube2.scad"))
    holeyTube(20, 4.5, 9).write(os.path.join(SCAD_DIR, "tube3.scad"))
    basicTube(20).write(os.path.join(SCAD_DIR, "tube4.scad"))
