
# Decision variables
var x_M >= 0;
var x_A >= 0, <= 80;
var x_B >= 0, <= 100;
var y_U >= 0, <= 40;
var y_V >= 0;

# Auxiliary variables
var revenue = 270 * y_U + 210 * y_V;
var cost    = 10 * x_M + 50 * x_A + 40 * x_B;

# Objective function
maximize profit: revenue - cost;

# Constraints
s.t. raw_materials: 10 * y_U + 9 * y_V <= x_M;
s.t. labor_A:      2 * y_U + 1 * y_V <= x_A;
s.t. labor_B:      1 * y_U + 1 * y_V <= x_B;
