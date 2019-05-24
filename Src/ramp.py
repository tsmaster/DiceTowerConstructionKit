import sys
import openpyscad as ops
import math
import os

import tube

if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)

SLAT_THICKNESS = 4


def singleRamp(h):
    baseTube = tube.basicTube(h)

    root2 = math.sqrt(2.0)
    
    slat = ops.Cube([h*root2 + 2 * SLAT_THICKNESS, tube.DIAMETER, SLAT_THICKNESS])
    slat = slat.translate([0, -tube.RADIUS, 0])
    slat = slat.rotate([0, 45, 0])
    slat = slat.translate([-tube.RADIUS, 0, h])

    internalSpace = tube.tubeInnerSpace(h)

    return baseTube + (slat & internalSpace)



if __name__ == "__main__":
    singleRamp(30).write(os.path.join(tube.SCAD_DIR, "ramp1.scad"))
