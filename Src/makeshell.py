import sys
import openpyscad as ops

if sys.version_info[0] != 3:
    print ("upgrade to python3 already!")
    exit(-1)


DIAMETER = 80 #mm
THICKNESS = 5 #mm
CORR_HEIGHT = 12 #mm

RADIUS = DIAMETER / 2.0

shell_interior = ops.Sphere(r = (RADIUS-THICKNESS)).translate([0, 0, RADIUS])

corral = ops.Cylinder(h = CORR_HEIGHT, r=RADIUS) - ops.Cylinder(h = 2 * CORR_HEIGHT, r = (RADIUS - THICKNESS)).translate([0, 0, - CORR_HEIGHT / 2])
#shell = (ops.Sphere(r = RADIUS).translate([0, 0, RADIUS]) & (ops.Cube([DIAMETER, RADIUS, RADIUS]).translate([-RADIUS, RADIUS/2, RADIUS/2]))) #- shell_interior
shell = ops.Sphere(r = RADIUS).translate([0, 0, RADIUS]) & (ops.Cube([DIAMETER, RADIUS, RADIUS]).translate([-RADIUS, 0, 0])) - shell_interior

wall = ops.Cube([DIAMETER, THICKNESS, RADIUS]).translate([-RADIUS, 0, 0]) - shell_interior                                                                                  
shroud = (ops.Cylinder(h = RADIUS, r = RADIUS) - ops.Cylinder(h = 2*RADIUS, r=(RADIUS - THICKNESS)).translate([0,0,-1])) & ops.Cube([DIAMETER * 2, DIAMETER, DIAMETER]).translate([-DIAMETER, 0, 0])

#corral.write("shell.scad")
#shell.write("shell.scad")

#(corral + shell + wall).write("shell.scad")
#shroud.write("shell.scad")

(corral + shell + wall + shroud).write("shell.scad")
