import sys
import openpyscad as ops

import tube

if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)

OPENING_DIAMETER = 25

OPENING_RADIUS = OPENING_DIAMETER / 2.0

TUBE_INNER_DIAMETER = tube.DIAMETER - 2 * tube.THICKNESS

TUBE_INNER_RADIUS = TUBE_INNER_DIAMETER / 2.0






def conicFunnel():
    moduleHeight = TUBE_INNER_RADIUS - OPENING_RADIUS
    
    baseTube = tube.basicTube(moduleHeight)

    conePositive = ops.Cylinder(h = moduleHeight,
                                r1 = OPENING_RADIUS + tube.THICKNESS,
                                r2 = TUBE_INNER_RADIUS + tube.THICKNESS,
                                _fn = tube.CYLINDER_SIDES)
                            
    coneNegative = ops.Cylinder(h = moduleHeight,
                                r1 = OPENING_RADIUS,
                                r2 = TUBE_INNER_RADIUS,
                                _fn = tube.CYLINDER_SIDES)

    internalSpace = tube.tubeInnerSpace(moduleHeight)
                            


    return baseTube + ((conePositive - coneNegative) & internalSpace)



if __name__ == "__main__":
    conicFunnel().write("coneFunnel.scad")
