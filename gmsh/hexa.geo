// Gmsh project created on Mon Apr  1 04:57:08 2024
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0, 0, 0, 1, 1, 0};
//+
Curve Loop(2) = {4, 1, 2, 3};
//+
Plane Surface(2) = {2};
//+
Extrude {0, 0, 1} {
  Surface{1}; Layers {10}; Recombine;
}
//+
Transfinite Curve {2, 3, 4, 1} = 10 Using Progression 1;
