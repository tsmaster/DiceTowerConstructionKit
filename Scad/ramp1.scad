union(){
    difference(){
        cylinder(h=30, r=50.0, $fn=64);
        translate(v=[0, 0, -15.0]){
            cylinder(h=60, r=42.5, $fn=64);
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
        translate(v=[0, 0, 26.5]){
            difference(){
                cylinder(h=4.5, r=51.0, $fn=64);
                translate(v=[0, 0, -1]){
                    cylinder(h=5.5, r=45.6, $fn=64);
                };
            };
        };
    };
    intersection(){
        translate(v=[-50.0, 0, 30]){
            rotate(a=[0, 45, 0]){
                translate(v=[0, -50.0, 0]){
                    cube(size=[50.42640687119285, 100, 4]);
                };
            };
        };
        cylinder(h=30, r=42.5, $fn=64);
    };
};
