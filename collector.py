import sys
import openpyscad as ops
import math

import tube


if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)


TUBE_DIAMETER = tube.DIAMETER
TUBE_RADIUS = TUBE_DIAMETER / 2

CORRAL_HEIGHT = 15.0


def calcModuleHeight():
    cutoutRadius = TUBE_DIAMETER * math.sqrt(2.0) / 4
    return CORRAL_HEIGHT + (1 + math.sqrt(2.0)/ 2.0) * cutoutRadius
    

def collectorBase():
    cutoutRadius = TUBE_DIAMETER * math.sqrt(2.0) / 4
    moduleHeight = calcModuleHeight()

    baseTube = tube.basicTube(moduleHeight)

    cutout = ops.Cylinder(h = TUBE_DIAMETER + 2, r = cutoutRadius, _fn=tube.CYLINDER_SIDES)
    cutout = cutout.translate([0, 0, -TUBE_RADIUS - 1])
    cutout = cutout.rotate([90, 0, 0])
    cutout = cutout.translate([-TUBE_RADIUS, 0, CORRAL_HEIGHT + cutoutRadius])

    return baseTube - cutout

def collectorWithRamp():
    base = collectorBase()
    internalSpace = tube.tubeInnerSpace(calcModuleHeight())
    ramp = ops.Cube([TUBE_DIAMETER*2, TUBE_DIAMETER, TUBE_DIAMETER]).translate(
        [-TUBE_DIAMETER, -TUBE_RADIUS, -TUBE_DIAMETER])

    ramp = ramp.rotate([0, -45, 0])

    ramp = internalSpace & ramp

    return base + ramp

if __name__ == "__main__":
    #collectorBase().write("collector.scad")
    collectorWithRamp().write("collector.scad")
