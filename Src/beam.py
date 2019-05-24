import sys
import openpyscad as ops
import os

import tube

if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)

TUBE_INNER_DIAMETER = tube.DIAMETER - 2 * tube.THICKNESS

TUBE_INNER_RADIUS = TUBE_INNER_DIAMETER / 2.0



def triangularBeam(height, offset):
    baseTube = tube.basicTube(height)

    xsecPoly = ops.Polygon(points = [[-10, 0], [10, 0], [0, 20]])
    
    beam = xsecPoly.linear_extrude(height = tube.DIAMETER).translate(
        [0, 0, -tube.RADIUS]).rotate(
            [90, 0, 0]).translate([offset, 0, 0])

    innerSpace = tube.tubeInnerSpace(height)
    

    return baseTube + (beam & innerSpace)

if __name__ == "__main__":
    triangularBeam(25, 5).write(os.path.join(tube.SCAD_DIR, "beam1.scad"))
    triangularBeam(25, 10).write(os.path.join(tube.SCAD_DIR, "beam2.scad"))
                                   
