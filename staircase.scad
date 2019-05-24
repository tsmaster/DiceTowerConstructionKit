union(){
    difference(){
        cylinder(h=45.0, r=50.0, $fn=64);
        translate(v=[0, 0, -22.5]){
            cylinder(h=90.0, r=42.5, $fn=64);
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
        translate(v=[0, 0, 41.5]){
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
            translate(v=[0, 0, 0]){
                rotate(a=[0, 0, 0]){
                    linear_extrude(height=5, convexity=10){
                        polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
                    };
                };
            };
            translate(v=[0, 0, 5]){
                rotate(a=[0, 0, 10]){
                    linear_extrude(height=5, convexity=10){
                        polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
                    };
                };
            };
            translate(v=[0, 0, 10]){
                rotate(a=[0, 0, 20]){
                    linear_extrude(height=5, convexity=10){
                        polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
                    };
                };
            };
            translate(v=[0, 0, 15]){
                rotate(a=[0, 0, 30]){
                    linear_extrude(height=5, convexity=10){
                        polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
                    };
                };
            };
            translate(v=[0, 0, 20]){
                rotate(a=[0, 0, 40]){
                    linear_extrude(height=5, convexity=10){
                        polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
                    };
                };
            };
            translate(v=[0, 0, 25]){
                rotate(a=[0, 0, 50]){
                    linear_extrude(height=5, convexity=10){
                        polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
                    };
                };
            };
            translate(v=[0, 0, 30]){
                rotate(a=[0, 0, 60]){
                    linear_extrude(height=5, convexity=10){
                        polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
                    };
                };
            };
            translate(v=[0, 0, 35]){
                rotate(a=[0, 0, 70]){
                    linear_extrude(height=5, convexity=10){
                        polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
                    };
                };
            };
            translate(v=[0, 0, 40]){
                rotate(a=[0, 0, 80]){
                    linear_extrude(height=5, convexity=10){
                        polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
                    };
                };
            };
            linear_extrude(height=45.0, convexity=10, twist=-90, slices=45){
                polygon(points=[[0, 0], [0, 50.0], [8.682408883346517, 50.0]]);
            };
        };
        cylinder(h=45.0, r=42.5, $fn=64);
    };
};
