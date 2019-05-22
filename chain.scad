union(){
    difference(){
        cylinder(h=13.258252147247767, r=50.0, $fn=64);
        translate(v=[0, 0, -6.629126073623883]){
            cylinder(h=26.516504294495533, r=42.5, $fn=64);
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
        translate(v=[0, 0, 9.758252147247767]){
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
            translate(v=[0, -74.25, 0]){
                union(){
                    translate(v=[0, 37.125, 0]){
                        translate(v=[0, 0, 6.629126073623883]){
                            rotate(a=[0, 45, 0]){
                                union(){
                                    translate(v=[5.625, 7.5, 0]){
                                        rotate(a=[90, 0, 0]){
                                            linear_extrude(height=15.0){
                                                polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                            };
                                        };
                                    };
                                    rotate(a=[0, 0, 180]){
                                        translate(v=[5.625, 7.5, 0]){
                                            rotate(a=[90, 0, 0]){
                                                linear_extrude(height=15.0){
                                                    polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                };
                                            };
                                        };
                                    };
                                    translate(v=[0, 7.5, 0]){
                                        rotate_extrude(angle=180, convexity=10, $fn=20){
                                            translate(v=[5.625, 0]){
                                                polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                            };
                                        };
                                    };
                                    rotate(a=[0, 0, 180]){
                                        translate(v=[0, 7.5, 0]){
                                            rotate_extrude(angle=180, convexity=10, $fn=20){
                                                translate(v=[5.625, 0]){
                                                    polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                    translate(v=[0, 18.5625, 0]){
                        translate(v=[0, 0, 6.629126073623883]){
                            rotate(a=[0, -45, 0]){
                                union(){
                                    translate(v=[5.625, 7.5, 0]){
                                        rotate(a=[90, 0, 0]){
                                            linear_extrude(height=15.0){
                                                polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                            };
                                        };
                                    };
                                    rotate(a=[0, 0, 180]){
                                        translate(v=[5.625, 7.5, 0]){
                                            rotate(a=[90, 0, 0]){
                                                linear_extrude(height=15.0){
                                                    polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                };
                                            };
                                        };
                                    };
                                    translate(v=[0, 7.5, 0]){
                                        rotate_extrude(angle=180, convexity=10, $fn=20){
                                            translate(v=[5.625, 0]){
                                                polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                            };
                                        };
                                    };
                                    rotate(a=[0, 0, 180]){
                                        translate(v=[0, 7.5, 0]){
                                            rotate_extrude(angle=180, convexity=10, $fn=20){
                                                translate(v=[5.625, 0]){
                                                    polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                    translate(v=[0, 37.125, 0]){
                        union(){
                            translate(v=[0, 37.125, 0]){
                                translate(v=[0, 0, 6.629126073623883]){
                                    rotate(a=[0, 45, 0]){
                                        union(){
                                            translate(v=[5.625, 7.5, 0]){
                                                rotate(a=[90, 0, 0]){
                                                    linear_extrude(height=15.0){
                                                        polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                    };
                                                };
                                            };
                                            rotate(a=[0, 0, 180]){
                                                translate(v=[5.625, 7.5, 0]){
                                                    rotate(a=[90, 0, 0]){
                                                        linear_extrude(height=15.0){
                                                            polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                        };
                                                    };
                                                };
                                            };
                                            translate(v=[0, 7.5, 0]){
                                                rotate_extrude(angle=180, convexity=10, $fn=20){
                                                    translate(v=[5.625, 0]){
                                                        polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                    };
                                                };
                                            };
                                            rotate(a=[0, 0, 180]){
                                                translate(v=[0, 7.5, 0]){
                                                    rotate_extrude(angle=180, convexity=10, $fn=20){
                                                        translate(v=[5.625, 0]){
                                                            polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                            translate(v=[0, 18.5625, 0]){
                                translate(v=[0, 0, 6.629126073623883]){
                                    rotate(a=[0, -45, 0]){
                                        union(){
                                            translate(v=[5.625, 7.5, 0]){
                                                rotate(a=[90, 0, 0]){
                                                    linear_extrude(height=15.0){
                                                        polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                    };
                                                };
                                            };
                                            rotate(a=[0, 0, 180]){
                                                translate(v=[5.625, 7.5, 0]){
                                                    rotate(a=[90, 0, 0]){
                                                        linear_extrude(height=15.0){
                                                            polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                        };
                                                    };
                                                };
                                            };
                                            translate(v=[0, 7.5, 0]){
                                                rotate_extrude(angle=180, convexity=10, $fn=20){
                                                    translate(v=[5.625, 0]){
                                                        polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                    };
                                                };
                                            };
                                            rotate(a=[0, 0, 180]){
                                                translate(v=[0, 7.5, 0]){
                                                    rotate_extrude(angle=180, convexity=10, $fn=20){
                                                        translate(v=[5.625, 0]){
                                                            polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                            translate(v=[0, 37.125, 0]){
                                union(){
                                    translate(v=[0, 37.125, 0]){
                                        translate(v=[0, 0, 6.629126073623883]){
                                            rotate(a=[0, 45, 0]){
                                                union(){
                                                    translate(v=[5.625, 7.5, 0]){
                                                        rotate(a=[90, 0, 0]){
                                                            linear_extrude(height=15.0){
                                                                polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                            };
                                                        };
                                                    };
                                                    rotate(a=[0, 0, 180]){
                                                        translate(v=[5.625, 7.5, 0]){
                                                            rotate(a=[90, 0, 0]){
                                                                linear_extrude(height=15.0){
                                                                    polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                };
                                                            };
                                                        };
                                                    };
                                                    translate(v=[0, 7.5, 0]){
                                                        rotate_extrude(angle=180, convexity=10, $fn=20){
                                                            translate(v=[5.625, 0]){
                                                                polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                            };
                                                        };
                                                    };
                                                    rotate(a=[0, 0, 180]){
                                                        translate(v=[0, 7.5, 0]){
                                                            rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                translate(v=[5.625, 0]){
                                                                    polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                    translate(v=[0, 18.5625, 0]){
                                        translate(v=[0, 0, 6.629126073623883]){
                                            rotate(a=[0, -45, 0]){
                                                union(){
                                                    translate(v=[5.625, 7.5, 0]){
                                                        rotate(a=[90, 0, 0]){
                                                            linear_extrude(height=15.0){
                                                                polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                            };
                                                        };
                                                    };
                                                    rotate(a=[0, 0, 180]){
                                                        translate(v=[5.625, 7.5, 0]){
                                                            rotate(a=[90, 0, 0]){
                                                                linear_extrude(height=15.0){
                                                                    polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                };
                                                            };
                                                        };
                                                    };
                                                    translate(v=[0, 7.5, 0]){
                                                        rotate_extrude(angle=180, convexity=10, $fn=20){
                                                            translate(v=[5.625, 0]){
                                                                polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                            };
                                                        };
                                                    };
                                                    rotate(a=[0, 0, 180]){
                                                        translate(v=[0, 7.5, 0]){
                                                            rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                translate(v=[5.625, 0]){
                                                                    polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                    translate(v=[0, 37.125, 0]){
                                        union(){
                                            translate(v=[0, 37.125, 0]){
                                                translate(v=[0, 0, 6.629126073623883]){
                                                    rotate(a=[0, 45, 0]){
                                                        union(){
                                                            translate(v=[5.625, 7.5, 0]){
                                                                rotate(a=[90, 0, 0]){
                                                                    linear_extrude(height=15.0){
                                                                        polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                    };
                                                                };
                                                            };
                                                            rotate(a=[0, 0, 180]){
                                                                translate(v=[5.625, 7.5, 0]){
                                                                    rotate(a=[90, 0, 0]){
                                                                        linear_extrude(height=15.0){
                                                                            polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                            translate(v=[0, 7.5, 0]){
                                                                rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                    translate(v=[5.625, 0]){
                                                                        polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                    };
                                                                };
                                                            };
                                                            rotate(a=[0, 0, 180]){
                                                                translate(v=[0, 7.5, 0]){
                                                                    rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                        translate(v=[5.625, 0]){
                                                                            polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                            translate(v=[0, 18.5625, 0]){
                                                translate(v=[0, 0, 6.629126073623883]){
                                                    rotate(a=[0, -45, 0]){
                                                        union(){
                                                            translate(v=[5.625, 7.5, 0]){
                                                                rotate(a=[90, 0, 0]){
                                                                    linear_extrude(height=15.0){
                                                                        polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                    };
                                                                };
                                                            };
                                                            rotate(a=[0, 0, 180]){
                                                                translate(v=[5.625, 7.5, 0]){
                                                                    rotate(a=[90, 0, 0]){
                                                                        linear_extrude(height=15.0){
                                                                            polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                            translate(v=[0, 7.5, 0]){
                                                                rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                    translate(v=[5.625, 0]){
                                                                        polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                    };
                                                                };
                                                            };
                                                            rotate(a=[0, 0, 180]){
                                                                translate(v=[0, 7.5, 0]){
                                                                    rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                        translate(v=[5.625, 0]){
                                                                            polygon(points=[[0, -3.75], [0, 3.75], [3.75, 0]]);
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
            translate(v=[-6.629126073623883, 38.75, 0]){
                cube(size=[13.258252147247767, 7.5, 13.258252147247767]);
            };
            rotate(a=[0, 0, 180]){
                translate(v=[-6.629126073623883, 38.75, 0]){
                    cube(size=[13.258252147247767, 7.5, 13.258252147247767]);
                };
            };
        };
        cylinder(h=13.258252147247767, r=42.5, $fn=64);
    };
};
