include <config.scad>;
use <parts/front.scad>
use <parts/rear.scad>
use <parts/top.scad>
use <parts/bottom.scad>
use <parts/left.scad>
use <parts/right.scad>
use <parts/rx_retention_plate.scad>

$fn = 16;

explode = 0;
side_explode = 0;

half_thick = material_thickness / 2;
x = (internal[0] / 2) + half_thick + explode + side_explode;
y = (internal[1] / 2) + half_thick + explode;
z = (internal[2] / 2) + half_thick + explode;

color("red")
{
  translate([0, 0, z])
    linear_extrude(height=material_thickness, center=true)
      TopPanel();

  translate([0, 0, -z])
    linear_extrude(height=material_thickness, center=true)
      BottomPanel();
}

color("green")
{
  rotate([90, 0, 180])
  {
    translate([0, 0, y])
      linear_extrude(height=material_thickness, center=true)
        RightPanel();

    translate([0, 0, -y])
      linear_extrude(height=material_thickness, center=true)
        LeftPanel();
  }
}

color("blue")
{
  rotate([90, 0, 90])
  {
    translate([0, 0, x])
      linear_extrude(height=material_thickness, center=true)
        FrontPanel();

    translate([0, 0, -x])
      linear_extrude(height=material_thickness, center=true)
        RearPanel();
  }
}

rotate([90, 0, 90])
  translate([0, 35, -20])
    linear_extrude(height=material_thickness, center=true)
      RXRetentionPlate();
