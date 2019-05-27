union(){
    difference(){
        cylinder(h=31.0, r=50.0, $fn=64);
        translate(v=[0, 0, -13.75]){
            cylinder(h=55.0, r=42.5, $fn=64);
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
        translate(v=[0, 0, 27.5]){
            difference(){
                cylinder(h=4.5, r=51.0, $fn=64);
                translate(v=[0, 0, -1]){
                    cylinder(h=5.5, r=45.6, $fn=64);
                };
            };
        };
    };
    intersection(){
        difference(){
            cylinder(h=27.5, r1=20.303300858899107, r2=47.80330085889911, $fn=64);
            cylinder(h=27.5, r1=15.0, r2=42.5, $fn=64);
        };
        cylinder(h=27.5, r=42.5, $fn=64);
    };
};
