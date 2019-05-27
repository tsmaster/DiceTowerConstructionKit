union(){
    difference(){
        cylinder(h=28.5, r=50.0, $fn=64);
        translate(v=[0, 0, -12.5]){
            cylinder(h=50, r=42.5, $fn=64);
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
        translate(v=[0, 0, 25]){
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
            difference(){
                union(){
                    rotate(a=[0, 0, 0.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=19.303300858899107, r2=47.80330085889911, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 60.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=19.303300858899107, r2=47.80330085889911, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 120.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=19.303300858899107, r2=47.80330085889911, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 180.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=19.303300858899107, r2=47.80330085889911, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 240.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=19.303300858899107, r2=47.80330085889911, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 300.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=19.303300858899107, r2=47.80330085889911, $fn=64);
                        };
                    };
                };
                union(){
                    rotate(a=[0, 0, 0.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=14.0, r2=42.5, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 60.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=14.0, r2=42.5, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 120.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=14.0, r2=42.5, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 180.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=14.0, r2=42.5, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 240.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=14.0, r2=42.5, $fn=64);
                        };
                    };
                    rotate(a=[0, 0, 300.0]){
                        translate(v=[35, 0, 0]){
                            cylinder(h=25, r1=14.0, r2=42.5, $fn=64);
                        };
                    };
                };
            };
            union(){
                rotate(a=[0, 0, 30.0]){
                    translate(v=[42.5, 0, 0]){
                        cylinder(h=25, r=4, $fn=64);
                    };
                };
                rotate(a=[0, 0, 90.0]){
                    translate(v=[42.5, 0, 0]){
                        cylinder(h=25, r=4, $fn=64);
                    };
                };
                rotate(a=[0, 0, 150.0]){
                    translate(v=[42.5, 0, 0]){
                        cylinder(h=25, r=4, $fn=64);
                    };
                };
                rotate(a=[0, 0, 210.0]){
                    translate(v=[42.5, 0, 0]){
                        cylinder(h=25, r=4, $fn=64);
                    };
                };
                rotate(a=[0, 0, 270.0]){
                    translate(v=[42.5, 0, 0]){
                        cylinder(h=25, r=4, $fn=64);
                    };
                };
                rotate(a=[0, 0, 330.0]){
                    translate(v=[42.5, 0, 0]){
                        cylinder(h=25, r=4, $fn=64);
                    };
                };
            };
        };
        cylinder(h=25, r=42.5, $fn=64);
    };
};
