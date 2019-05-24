import sys
import openpyscad as ops
import math
import os

import tube

if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)

# the thickness of a chain link, from hole to outside
CHAIN_R = 3.75

# the radius of the interior hole, when the link is laid flat
HOLE_R = 1.5 * CHAIN_R

# the total length of a link, on the outside
LINK_LEN = 6 * HOLE_R

# the length of the straight part of the link
STRAIGHT_LEN = LINK_LEN - 2 * (CHAIN_R + HOLE_R)

SQRT2 = math.sqrt(2.0)

R2O2 = SQRT2 / 2.0

LINK_REST_HEIGHT = (HOLE_R + CHAIN_R) * R2O2

LINK_ADVANCE = LINK_LEN * 0.55

def link():
    crossSec = ops.Polygon(points = [[0, -CHAIN_R], [0, CHAIN_R], [CHAIN_R, 0]])
    straightLink = crossSec.linear_extrude(height = STRAIGHT_LEN)
    straightLink = straightLink.rotate([90, 0, 0])
    straightLink = straightLink.translate([HOLE_R, STRAIGHT_LEN / 2, 0])
    straightLink2 = straightLink.rotate([0, 0, 180])

    endSec = crossSec.translate([HOLE_R, 0])
    end1 = endSec.rotate_extrude(convexity = 10, _fn = 20, angle = 180)
    end1 = end1.translate([0, STRAIGHT_LEN / 2, 0])
    end2 = end1.rotate([0, 0, 180])

    return straightLink + straightLink2 + end1 + end2

def rotLink(degrees):
    r_link = link()
    r_link = r_link.rotate([0, degrees, 0])
    r_link = r_link.translate([0, 0, LINK_REST_HEIGHT])
    return r_link

def leftLink():
    return rotLink(-45)

def rightLink():
    return rotLink(45)

def chain(nLinks):
    #print("making chain of length %d " % nLinks)
    if nLinks == 0:
        return None
    elif nLinks == 1:
        return leftLink().translate([0, LINK_ADVANCE, 0])
    elif nLinks == 2:
        l_link = leftLink()
        r_link = rightLink()
        return (r_link.translate([0, 2 * LINK_ADVANCE, 0]) +
                l_link.translate([0, LINK_ADVANCE, 0]))
    else:
        return chain(2) + chain(nLinks - 2).translate([0, 2 * LINK_ADVANCE, 0])


def chainModule():
    num_links = 8
    module_height = 2 * LINK_REST_HEIGHT
    anchor_depth = CHAIN_R
    
    chainLinks = chain(num_links)
    advanced = num_links * LINK_ADVANCE
    chainLinks = chainLinks.translate([0, -advanced / 2.0, 0])

    base_tube = tube.basicTube(module_height)
    internal_space = tube.tubeInnerSpace(module_height)

    anchor1 = ops.Cube([module_height, 2 * anchor_depth, module_height])
    anchor1 = anchor1.translate([-module_height / 2, tube.RADIUS - tube.THICKNESS - anchor_depth, 0])

    anchor2 = anchor1.rotate([0, 0, 180])
    
    return base_tube + ((chainLinks + anchor1 + anchor2) & internal_space)
    
        

if __name__ == "__main__":
    #link().write(os.path.join(tube.SCAD_DIR, "link_test.scad"))
    chainModule().write(os.path.join(tube.SCAD_DIR, "chain.scad"))
