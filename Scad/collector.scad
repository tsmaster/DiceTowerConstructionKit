union(){
    difference(){
        cylinder(h=75.35533905932738, r=50.0, $fn=64);
        translate(v=[0, 0, -37.67766952966369]){
            cylinder(h=150.71067811865476, r=42.5, $fn=64);
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
        translate(v=[0, 0, 71.85533905932738]){
            difference(){
                cylinder(h=4.5, r=51.0, $fn=64);
                translate(v=[0, 0, -1]){
                    cylinder(h=5.5, r=45.6, $fn=64);
                };
            };
        };
        translate(v=[-50.0, 0, 50.35533905932738]){
            rotate(a=[90, 0, 0]){
                translate(v=[0, 0, -51.0]){
                    cylinder(h=102, r=35.35533905932738, $fn=64);
                };
            };
        };
    };
    intersection(){
        cylinder(h=75.35533905932738, r=42.5, $fn=64);
        rotate(a=[0, -45, 0]){
            translate(v=[-100, -50.0, -100]){
                cube(size=[200, 100, 100]);
            };
        };
    };
};
