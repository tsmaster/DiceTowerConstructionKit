union(){
    difference(){
        cylinder(h=14.142135623730951, r=50.0, $fn=64);
        translate(v=[0, 0, -7.0710678118654755]){
            cylinder(h=28.284271247461902, r=42.5, $fn=64);
        };
        union(){
            translate(v=[0, 0, -1]){
                cylinder(h=4.5, r=46.9, $fn=64);
            };
            translate(v=[0, 0, 3.5]){
                rotate_extrude(convexity=10, $fn=64){
                    translate(v=[39.4, 0, 0]){
                        circle(r=7.5, $fn=64);
                    };
                };
            };
        };
        translate(v=[0, 0, 10.642135623730951]){
            difference(){
                cylinder(h=4.5, r=51.0, $fn=64);
                translate(v=[0, 0, -1]){
                    cylinder(h=5.5, r=45.6, $fn=64);
                };
            };
        };
    };
    intersection(){
        union(){
            translate(v=[-7.0710678118654755, 0, 0]){
                rotate(a=[0, -45, 0]){
                    translate(v=[-4, 0, -2.0]){
                        cube(size=[28, 50.0, 4]);
                    };
                };
            };
            rotate(a=[0, 0, 180]){
                translate(v=[-7.0710678118654755, 0, 0]){
                    rotate(a=[0, -45, 0]){
                        translate(v=[-4, 0, -2.0]){
                            cube(size=[28, 50.0, 4]);
                        };
                    };
                };
            };
            cylinder(h=14.142135623730951, r=5);
        };
        cylinder(h=14.142135623730951, r=42.5, $fn=64);
    };
};
