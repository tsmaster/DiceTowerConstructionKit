union(){
    difference(){
        cylinder(h=21.17766952966369, r=50.0, $fn=64);
        translate(v=[0, 0, -8.838834764831844]){
            cylinder(h=35.35533905932738, r=42.5, $fn=64);
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
        translate(v=[0, 0, 17.67766952966369]){
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
            translate(v=[0, -52.5, 0]){
                union(){
                    translate(v=[0, 30.0, 0]){
                        translate(v=[0, 0, 8.838834764831844]){
                            rotate(a=[0, 45, 0]){
                                union(){
                                    translate(v=[7.5, 2.5, 0]){
                                        rotate(a=[90, 0, 0]){
                                            linear_extrude(height=5.0){
                                                polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                            };
                                        };
                                    };
                                    rotate(a=[0, 0, 180]){
                                        translate(v=[7.5, 2.5, 0]){
                                            rotate(a=[90, 0, 0]){
                                                linear_extrude(height=5.0){
                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                };
                                            };
                                        };
                                    };
                                    translate(v=[0, 2.5, 0]){
                                        rotate_extrude(angle=180, convexity=10, $fn=20){
                                            translate(v=[7.5, 0]){
                                                polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                            };
                                        };
                                    };
                                    rotate(a=[0, 0, 180]){
                                        translate(v=[0, 2.5, 0]){
                                            rotate_extrude(angle=180, convexity=10, $fn=20){
                                                translate(v=[7.5, 0]){
                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                    translate(v=[0, 15.0, 0]){
                        translate(v=[0, 0, 8.838834764831844]){
                            rotate(a=[0, -45, 0]){
                                union(){
                                    translate(v=[7.5, 2.5, 0]){
                                        rotate(a=[90, 0, 0]){
                                            linear_extrude(height=5.0){
                                                polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                            };
                                        };
                                    };
                                    rotate(a=[0, 0, 180]){
                                        translate(v=[7.5, 2.5, 0]){
                                            rotate(a=[90, 0, 0]){
                                                linear_extrude(height=5.0){
                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                };
                                            };
                                        };
                                    };
                                    translate(v=[0, 2.5, 0]){
                                        rotate_extrude(angle=180, convexity=10, $fn=20){
                                            translate(v=[7.5, 0]){
                                                polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                            };
                                        };
                                    };
                                    rotate(a=[0, 0, 180]){
                                        translate(v=[0, 2.5, 0]){
                                            rotate_extrude(angle=180, convexity=10, $fn=20){
                                                translate(v=[7.5, 0]){
                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                    translate(v=[0, 30.0, 0]){
                        union(){
                            translate(v=[0, 30.0, 0]){
                                translate(v=[0, 0, 8.838834764831844]){
                                    rotate(a=[0, 45, 0]){
                                        union(){
                                            translate(v=[7.5, 2.5, 0]){
                                                rotate(a=[90, 0, 0]){
                                                    linear_extrude(height=5.0){
                                                        polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                    };
                                                };
                                            };
                                            rotate(a=[0, 0, 180]){
                                                translate(v=[7.5, 2.5, 0]){
                                                    rotate(a=[90, 0, 0]){
                                                        linear_extrude(height=5.0){
                                                            polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                        };
                                                    };
                                                };
                                            };
                                            translate(v=[0, 2.5, 0]){
                                                rotate_extrude(angle=180, convexity=10, $fn=20){
                                                    translate(v=[7.5, 0]){
                                                        polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                    };
                                                };
                                            };
                                            rotate(a=[0, 0, 180]){
                                                translate(v=[0, 2.5, 0]){
                                                    rotate_extrude(angle=180, convexity=10, $fn=20){
                                                        translate(v=[7.5, 0]){
                                                            polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                            translate(v=[0, 15.0, 0]){
                                translate(v=[0, 0, 8.838834764831844]){
                                    rotate(a=[0, -45, 0]){
                                        union(){
                                            translate(v=[7.5, 2.5, 0]){
                                                rotate(a=[90, 0, 0]){
                                                    linear_extrude(height=5.0){
                                                        polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                    };
                                                };
                                            };
                                            rotate(a=[0, 0, 180]){
                                                translate(v=[7.5, 2.5, 0]){
                                                    rotate(a=[90, 0, 0]){
                                                        linear_extrude(height=5.0){
                                                            polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                        };
                                                    };
                                                };
                                            };
                                            translate(v=[0, 2.5, 0]){
                                                rotate_extrude(angle=180, convexity=10, $fn=20){
                                                    translate(v=[7.5, 0]){
                                                        polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                    };
                                                };
                                            };
                                            rotate(a=[0, 0, 180]){
                                                translate(v=[0, 2.5, 0]){
                                                    rotate_extrude(angle=180, convexity=10, $fn=20){
                                                        translate(v=[7.5, 0]){
                                                            polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                            translate(v=[0, 30.0, 0]){
                                union(){
                                    translate(v=[0, 30.0, 0]){
                                        translate(v=[0, 0, 8.838834764831844]){
                                            rotate(a=[0, 45, 0]){
                                                union(){
                                                    translate(v=[7.5, 2.5, 0]){
                                                        rotate(a=[90, 0, 0]){
                                                            linear_extrude(height=5.0){
                                                                polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                            };
                                                        };
                                                    };
                                                    rotate(a=[0, 0, 180]){
                                                        translate(v=[7.5, 2.5, 0]){
                                                            rotate(a=[90, 0, 0]){
                                                                linear_extrude(height=5.0){
                                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                                };
                                                            };
                                                        };
                                                    };
                                                    translate(v=[0, 2.5, 0]){
                                                        rotate_extrude(angle=180, convexity=10, $fn=20){
                                                            translate(v=[7.5, 0]){
                                                                polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                            };
                                                        };
                                                    };
                                                    rotate(a=[0, 0, 180]){
                                                        translate(v=[0, 2.5, 0]){
                                                            rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                translate(v=[7.5, 0]){
                                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                    translate(v=[0, 15.0, 0]){
                                        translate(v=[0, 0, 8.838834764831844]){
                                            rotate(a=[0, -45, 0]){
                                                union(){
                                                    translate(v=[7.5, 2.5, 0]){
                                                        rotate(a=[90, 0, 0]){
                                                            linear_extrude(height=5.0){
                                                                polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                            };
                                                        };
                                                    };
                                                    rotate(a=[0, 0, 180]){
                                                        translate(v=[7.5, 2.5, 0]){
                                                            rotate(a=[90, 0, 0]){
                                                                linear_extrude(height=5.0){
                                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                                };
                                                            };
                                                        };
                                                    };
                                                    translate(v=[0, 2.5, 0]){
                                                        rotate_extrude(angle=180, convexity=10, $fn=20){
                                                            translate(v=[7.5, 0]){
                                                                polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                            };
                                                        };
                                                    };
                                                    rotate(a=[0, 0, 180]){
                                                        translate(v=[0, 2.5, 0]){
                                                            rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                translate(v=[7.5, 0]){
                                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                    translate(v=[0, 30.0, 0]){
                                        translate(v=[0, 15.0, 0]){
                                            translate(v=[0, 0, 8.838834764831844]){
                                                rotate(a=[0, -45, 0]){
                                                    union(){
                                                        translate(v=[7.5, 2.5, 0]){
                                                            rotate(a=[90, 0, 0]){
                                                                linear_extrude(height=5.0){
                                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                                };
                                                            };
                                                        };
                                                        rotate(a=[0, 0, 180]){
                                                            translate(v=[7.5, 2.5, 0]){
                                                                rotate(a=[90, 0, 0]){
                                                                    linear_extrude(height=5.0){
                                                                        polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                                    };
                                                                };
                                                            };
                                                        };
                                                        translate(v=[0, 2.5, 0]){
                                                            rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                translate(v=[7.5, 0]){
                                                                    polygon(points=[[0, -5], [0, 5], [5, 0]]);
                                                                };
                                                            };
                                                        };
                                                        rotate(a=[0, 0, 180]){
                                                            translate(v=[0, 2.5, 0]){
                                                                rotate_extrude(angle=180, convexity=10, $fn=20){
                                                                    translate(v=[7.5, 0]){
                                                                        polygon(points=[[0, -5], [0, 5], [5, 0]]);
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
            translate(v=[-8.838834764831844, 37.5, 0]){
                cube(size=[17.67766952966369, 10, 17.67766952966369]);
            };
            rotate(a=[0, 0, 180]){
                translate(v=[-8.838834764831844, 37.5, 0]){
                    cube(size=[17.67766952966369, 10, 17.67766952966369]);
                };
            };
        };
        cylinder(h=17.67766952966369, r=42.5, $fn=64);
    };
};
