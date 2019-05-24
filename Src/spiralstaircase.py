import sys
import openpyscad as ops
import math
import os

import tube

if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)

MODULE_DEGREES = 90
MODULE_RADIANS = MODULE_DEGREES * math.pi / 180.0

STEP_HEIGHT = 5

STEP_ANGLE = 10
STEP_RADIANS = STEP_ANGLE * math.pi / 180.0

NUM_STEPS = int(MODULE_DEGREES / STEP_ANGLE)
MODULE_HEIGHT = STEP_HEIGHT * MODULE_DEGREES / STEP_ANGLE 

def staircase():
    baseTube = tube.basicTube(MODULE_HEIGHT)

    s = math.sin(STEP_RADIANS) * tube.RADIUS
    step2d = ops.Polygon([[0, 0], [0, tube.RADIUS], [s, tube.RADIUS]])
    spiral = step2d.linear_extrude(height = MODULE_HEIGHT, convexity = 10, twist = -MODULE_DEGREES, slices = int(MODULE_HEIGHT))

    step = step2d.linear_extrude(height = STEP_HEIGHT, convexity = 10)
    steps = None

    for i in range(NUM_STEPS):
        rotStep = step.rotate([0, 0, STEP_ANGLE * i])
        rotStep = rotStep.translate([0, 0, STEP_HEIGHT * i])
        if steps is None:
            steps = rotStep
        else:
            steps = steps + rotStep

    innerSpace = tube.tubeInnerSpace(MODULE_HEIGHT)


    return baseTube + ((steps + spiral) & innerSpace)


if __name__ == "__main__":
    staircase().write(os.path.join(tube.SCAD_DIR, "staircase.scad"))
