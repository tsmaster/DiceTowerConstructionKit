difference(){
    cylinder(h=20, r=20.0, $fn=64);
    translate(v=[0, 0, -10.0]){
        cylinder(h=40, r=12.5, $fn=64);
    };
    union(){
        translate(v=[0, 0, -1]){
            cylinder(h=4.5, r=15.45, $fn=64);
        };
        translate(v=[0, 0, 3.5]){
            rotate_extrude(convexity=10, $fn=64){
                translate(v=[12.5, 0, 0]){
                    circle(r=2.95, $fn=64);
                };
            };
        };
    };
    translate(v=[0, 0, 16.5]){
        difference(){
            cylinder(h=4.5, r=21.0, $fn=64);
            translate(v=[0, 0, -1]){
                cylinder(h=5.5, r=17.05, $fn=64);
            };
        };
    };
    rotate(a=[0, 0, 0]){
        translate(v=[0, 0, 10.0]){
            rotate(a=[90, 0, 0]){
                cylinder(h=21.0, r=4.5);
            };
        };
    };
    rotate(a=[0, 0, 40.0]){
        translate(v=[0, 0, 10.0]){
            rotate(a=[90, 0, 0]){
                cylinder(h=21.0, r=4.5);
            };
        };
    };
    rotate(a=[0, 0, 80.0]){
        translate(v=[0, 0, 10.0]){
            rotate(a=[90, 0, 0]){
                cylinder(h=21.0, r=4.5);
            };
        };
    };
    rotate(a=[0, 0, 120.0]){
        translate(v=[0, 0, 10.0]){
            rotate(a=[90, 0, 0]){
                cylinder(h=21.0, r=4.5);
            };
        };
    };
    rotate(a=[0, 0, 160.0]){
        translate(v=[0, 0, 10.0]){
            rotate(a=[90, 0, 0]){
                cylinder(h=21.0, r=4.5);
            };
        };
    };
    rotate(a=[0, 0, 200.0]){
        translate(v=[0, 0, 10.0]){
            rotate(a=[90, 0, 0]){
                cylinder(h=21.0, r=4.5);
            };
        };
    };
    rotate(a=[0, 0, 240.0]){
        translate(v=[0, 0, 10.0]){
            rotate(a=[90, 0, 0]){
                cylinder(h=21.0, r=4.5);
            };
        };
    };
    rotate(a=[0, 0, 280.0]){
        translate(v=[0, 0, 10.0]){
            rotate(a=[90, 0, 0]){
                cylinder(h=21.0, r=4.5);
            };
        };
    };
    rotate(a=[0, 0, 320.0]){
        translate(v=[0, 0, 10.0]){
            rotate(a=[90, 0, 0]){
                cylinder(h=21.0, r=4.5);
            };
        };
    };
};
