import sys
import openpyscad as ops
import math
import os

import tube

if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)

SLAT_THICKNESS = 4

CYLINDER_RADIUS = 5

SLAT_WIDTH = 20

def prop1():
    root2 = math.sqrt(2.0)
    r2o2 = root2/2

    h = SLAT_WIDTH * r2o2
    baseTube = tube.basicTube(h)
    
    slat1 = ops.Cube([SLAT_WIDTH + 2 * SLAT_THICKNESS, tube.RADIUS, SLAT_THICKNESS])
    slat1 = slat1.translate([- SLAT_THICKNESS, 0, -SLAT_THICKNESS / 2])
    slat1 = slat1.rotate([0, -45, 0])
    slat1 = slat1.translate([-h / 2, 0, 0])

    slat2 = slat1.rotate([0, 0, 180])

    cyl = ops.Cylinder(r = CYLINDER_RADIUS, h = h)

    internalSpace = tube.tubeInnerSpace(h)

    return baseTube + ((slat1 + slat2 + cyl) & internalSpace)
    #return baseTube + slat1 + slat2 + cyl



if __name__ == "__main__":
    prop1().write(os.path.join(tube.SCAD_DIR, "propellor.scad"))
