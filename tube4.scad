difference(){
    cylinder(h=20, r=50.0, $fn=64);
    translate(v=[0, 0, -10.0]){
        cylinder(h=40, r=42.5, $fn=64);
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
    translate(v=[0, 0, 16.5]){
        difference(){
            cylinder(h=4.5, r=51.0, $fn=64);
            translate(v=[0, 0, -1]){
                cylinder(h=5.5, r=45.6, $fn=64);
            };
        };
    };
    translate(v=[0, 0, -1]){
        cube(size=[100, 100, 100]);
    };
};
