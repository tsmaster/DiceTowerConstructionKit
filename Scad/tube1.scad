difference(){
    cylinder(h=25, r=50.0, $fn=64);
    translate(v=[0, 0, -12.5]){
        cylinder(h=50, r=46.0, $fn=64);
    };
    union(){
        translate(v=[0, 0, -1]){
            cylinder(h=4.5, r=47.9, $fn=64);
        };
        translate(v=[0, 0, 3.5]){
            rotate_extrude(convexity=10, $fn=64){
                translate(v=[46.0, 0, 0]){
                    circle(r=1.9, $fn=64);
                };
            };
        };
    };
    translate(v=[0, 0, 21.5]){
        difference(){
            cylinder(h=4.5, r=51.0, $fn=64);
            translate(v=[0, 0, -1]){
                cylinder(h=5.5, r=48.1, $fn=64);
            };
        };
    };
    rotate(a=[0, 0, 0]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 27.692307692307693]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 55.38461538461539]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 83.07692307692308]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 110.76923076923077]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 138.46153846153845]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 166.15384615384613]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 193.8461538461538]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 221.5384615384615]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 249.23076923076917]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 276.92307692307685]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 304.6153846153845]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 332.3076923076922]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
    rotate(a=[0, 0, 359.9999999999999]){
        translate(v=[0, 0, 12.5]){
            rotate(a=[90, 0, 0]){
                cylinder(h=51.0, r=8);
            };
        };
    };
};
