CORNER = 1;

MACHINE_TOLERANCE = 0.1;

MATERIAL_THICKNESS = 3;
HALF_MATERIAL_THICKNESS = MATERIAL_THICKNESS / 2;

BASE_DIMENSIONS = [150, 220];
BASE_FRONT_CORNER_RADIUS = BASE_DIMENSIONS[0] / 2;
BASE_REAR_CORNER_RADIUS = 30;

LIFT_FAN_DUCT_DIAM = 80;
LIFT_FAN_DUCT_POSITION = [0, (BASE_DIMENSIONS[1] / 2) - LIFT_FAN_DUCT_DIAM + 10];

THRUST_FAN_DUCT_DIAM = 80;
THRUST_FAN_DUCT_MOUNT_PADDING = 30;
THRUST_FAN_DUCT_MOUNT_POSITION = [0, -40];
THRUST_FAN_DUCT_MOUNT_SPACING = 30;
THRUST_FAN_DUCT_MOUNT_WIDTH = BASE_DIMENSIONS[0] * 0.8;
THRUST_FAN_DUCT_MOUNT_BRACE_LENGTH = 50;
THRUST_FAN_DUCT_HEIGHT = 50;

RUDDER_MOUNT_POSITION = [0, 0];