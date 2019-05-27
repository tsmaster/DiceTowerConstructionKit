union(){
    difference(){
        cylinder(h=60.0, r=50.0, $fn=64);
        translate(v=[0, 0, -30.0]){
            cylinder(h=120.0, r=42.5, $fn=64);
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
        translate(v=[0, 0, 56.5]){
            difference(){
                cylinder(h=4.5, r=51.0, $fn=64);
                translate(v=[0, 0, -1]){
                    cylinder(h=5.5, r=45.6, $fn=64);
                };
            };
        };
        rotate(a=[0, 0, 135]){
            rotate(a=[0, 30, 0]){
                translate(v=[0, -51.0, 0]){
                    cube(size=[51.0, 102, 120.0]);
                };
            };
        };
    };
    translate(v=[-110.0, -50.0, 0]){
        cube(size=[110.0, 5, 15.0]);
    };
    translate(v=[50.0, 0, 0]){
        rotate(a=[0, 0, 90]){
            cube(size=[110.0, 5, 15.0]);
        };
    };
    translate(v=[50.0, -50.0, 0]){
        intersection(){
            difference(){
                cylinder(h=15.0, r=160.0, $fn=64);
                translate(v=[0, 0, -1]){
                    cylinder(h=17.0, r=155.0, $fn=64);
                };
            };
            translate(v=[-161.0, 0, -1]){
                cube(size=[161.0, 161.0, 17.0]);
            };
        };
    };
    intersection(){
        rotate(a=[0, 0, -45]){
            rotate(a=[0, 45, 0]){
                translate(v=[0, -50.0, 0]){
                    cube(size=[5, 100, 100]);
                };
            };
        };
        cylinder(h=60.0, r=42.5, $fn=64);
    };
};
