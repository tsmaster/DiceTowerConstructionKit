import sys
import openpyscad as ops
import math
import os

import tube


if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)


TUBE_DIAMETER = tube.DIAMETER
TUBE_RADIUS = TUBE_DIAMETER / 2

CORRAL_HEIGHT = 15.0

CORRAL_WIDTH = 160.0

MODULE_HEIGHT = 60.0

CORRAL_WALL_THICKNESS = 5 #mm

RAMP_THICKNESS = 5

CORRAL_WALL_LENGTH = CORRAL_WIDTH - TUBE_RADIUS

def collector():
    baseTube = tube.basicTube(MODULE_HEIGHT)
    
    wall_s = ops.Cube([CORRAL_WALL_LENGTH, CORRAL_WALL_THICKNESS,CORRAL_HEIGHT])
    wall_e = wall_s.rotate([0, 0, 90])

    wall_s = wall_s.translate([-CORRAL_WALL_LENGTH, -TUBE_RADIUS, 0])
    wall_e = wall_e.translate([TUBE_RADIUS, 0, 0])

    far_wall = ops.Cylinder(h = CORRAL_HEIGHT, r = CORRAL_WIDTH, _fn = tube.CYLINDER_SIDES)
    far_wall = far_wall - ops.Cylinder(h = CORRAL_HEIGHT +2, r = CORRAL_WIDTH - CORRAL_WALL_THICKNESS, _fn = tube.CYLINDER_SIDES).translate([0, 0, -1])

    wall_mask = ops.Cube([CORRAL_WIDTH + 1, CORRAL_WIDTH + 1, CORRAL_HEIGHT + 2]).translate([-CORRAL_WIDTH - 1, 0, -1])

    far_wall = far_wall & wall_mask
    far_wall = far_wall.translate([TUBE_RADIUS, -TUBE_RADIUS, 0])

    cutout = ops.Cube([TUBE_RADIUS + 1, TUBE_DIAMETER + 2, MODULE_HEIGHT * 2]).translate([0, -TUBE_RADIUS - 1, 0])

    cutout = cutout.rotate([0, 30, 0])
    cutout = cutout.rotate([0, 0, 135])

    ramp = ops.Cube([RAMP_THICKNESS, TUBE_DIAMETER, TUBE_DIAMETER]).translate([0, -TUBE_RADIUS, 0])

    ramp = ramp.rotate([0, 45, 0])
    ramp = ramp.rotate([0, 0, -45])

    interior = tube.tubeInnerSpace(MODULE_HEIGHT)


    return (baseTube - cutout) + wall_s + wall_e + far_wall + (ramp & interior)


if __name__ == "__main__":
    collector().write(os.path.join(tube.SCAD_DIR, "coll_lg.scad"))
