import sys
import openpyscad as ops
import os
import math

import tube

if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)

OPENING_DIAMETER = 28

OPENING_RADIUS = OPENING_DIAMETER / 2.0

TUBE_INNER_DIAMETER = tube.DIAMETER - 2 * tube.THICKNESS

TUBE_INNER_RADIUS = TUBE_INNER_DIAMETER / 2.0

CONE_HORZ_THICKNESS = tube.THICKNESS * math.sqrt(2.0) / 2.0

OPENING_CENTER_OFFSET = 35

NUM_OPENINGS = 6

PILLAR_RADIUS = 4


def juicer():
    moduleHeight = TUBE_INNER_RADIUS - (OPENING_CENTER_OFFSET + OPENING_RADIUS)

    moduleHeight = 25
    
    baseTube = tube.basicTube(moduleHeight)

    posCones = None
    negCones = None

    for i in range(NUM_OPENINGS):
        conePositive = ops.Cylinder(h = moduleHeight,
                                    r1 = OPENING_RADIUS + CONE_HORZ_THICKNESS,
                                    r2 = TUBE_INNER_RADIUS + CONE_HORZ_THICKNESS,
                                    _fn = tube.CYLINDER_SIDES)
        conePositive = conePositive.translate([OPENING_CENTER_OFFSET, 0, 0])
        conePositive = conePositive.rotate([0, 0, i * 360.0 / NUM_OPENINGS])
        if posCones is None:
            posCones = conePositive
        else:
            posCones = posCones + conePositive
                            
        coneNegative = ops.Cylinder(h = moduleHeight,
                                    r1 = OPENING_RADIUS,
                                    r2 = TUBE_INNER_RADIUS,
                                    _fn = tube.CYLINDER_SIDES)
        coneNegative = coneNegative.translate([OPENING_CENTER_OFFSET, 0, 0])
        coneNegative = coneNegative.rotate([0, 0, i * 360.0 / NUM_OPENINGS])
        if negCones is None:
            negCones = coneNegative
        else:
            negCones = negCones + coneNegative

    pillars = None
    for i in range(NUM_OPENINGS):
        pillar = ops.Cylinder(h = moduleHeight,
                              r = PILLAR_RADIUS,
                              _fn = tube.CYLINDER_SIDES)
        pillar = pillar.translate([TUBE_INNER_RADIUS, 0, 0])
        pillar = pillar.rotate([0, 0, (i + 0.5) * (360 / NUM_OPENINGS)])
        if pillars is None:
            pillars = pillar
        else:
            pillars = pillars + pillar

    internalSpace = tube.tubeInnerSpace(moduleHeight)

    return baseTube + (((posCones - negCones) + pillars) & internalSpace)
    #return baseTube



if __name__ == "__main__":
    juicer().write(os.path.join(tube.SCAD_DIR, "juicer.scad"))
