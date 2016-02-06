module base_ball_caster(){
	difference(){
		cube([49,32,22.5], center=true);
		screw_hole();
		mirror( [1, 0, 0] ){
			screw_hole();
		}
		linear_extrude(height = 30, center = true, convexity = 10, twist = 0)
			translate([-20,  16]){circle(20,$fn=3);}
		linear_extrude(height = 30, center = true, convexity = 10, twist = 0)
			translate([-20,  -16]){circle(20,$fn=3);}
		mirror([1,0,0]){
			linear_extrude(height = 30, center = true, convexity = 10, twist = 0)
				translate([-20,  16]){circle(20,$fn=3);}
			linear_extrude(height = 30, center = true, convexity = 10, twist = 0)
				translate([-20,  -16]){circle(20,$fn=3);}
		}
	}
	translate([0,0,11.25]){
		sphere(r = 7.5, center=true);
	}
}

module screw_hole(){
	translate([19.5,0,0]) 
		cylinder(r1=1.5, r2=1.5, h=7, center=true, $fn=20);
}


base_ball_caster();





