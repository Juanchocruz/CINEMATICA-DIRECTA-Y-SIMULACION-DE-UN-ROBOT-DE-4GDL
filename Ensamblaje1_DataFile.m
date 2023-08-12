% Simscape(TM) Multibody(TM) version: 7.3

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(9).translation = [0.0 0.0 0.0];
smiData.RigidTransform(9).angle = 0.0;
smiData.RigidTransform(9).axis = [0.0 0.0 0.0];
smiData.RigidTransform(9).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0 40];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = 'B[Base-1:-:segmento1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [0 230 9.6633812063373625e-13];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931935;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962518 -0.57735026918962518 -0.57735026918962695];
smiData.RigidTransform(2).ID = 'F[Base-1:-:segmento1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-250.0000000000004 0 -50.001999999998212];  % mm
smiData.RigidTransform(3).angle = 6.9861895860402623e-15;  % rad
smiData.RigidTransform(3).axis = [0 1 0];
smiData.RigidTransform(3).ID = 'B[segmento 2-1:-:segmento1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [1.3677947663381929e-13 1.5631940186722204e-13 -50.001999999999967];  % mm
smiData.RigidTransform(4).angle = 5.6285346892163581e-15;  % rad
smiData.RigidTransform(4).axis = [0.68547079433119118 -0.7281001236910799 -1.4045765449584003e-15];
smiData.RigidTransform(4).ID = 'F[segmento 2-1:-:segmento1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [-3.8857805861880479e-13 0 -49.999999999999993];  % mm
smiData.RigidTransform(5).angle = 6.9845286263411773e-15;  % rad
smiData.RigidTransform(5).axis = [0 1 0];
smiData.RigidTransform(5).ID = 'B[segmento 2-1:-:segmento 3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-240.00000000000037 6.3948846218409017e-14 -49.999999999998394];  % mm
smiData.RigidTransform(6).angle = 6.534007012887576e-15;  % rad
smiData.RigidTransform(6).axis = [0.025669943750486812 0.99967047269980269 8.3836160832694934e-17];
smiData.RigidTransform(6).ID = 'F[segmento 2-1:-:segmento 3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 0];  % mm
smiData.RigidTransform(7).angle = 2.0943951023931993;  % rad
smiData.RigidTransform(7).axis = [0.57735026918962717 0.57735026918962706 0.57735026918962307];
smiData.RigidTransform(7).ID = 'B[segmento 3-1:-:segmento 4-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-90.000000000001378 -1.4921397450962104e-12 1.4992451724538114e-12];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931948;  % rad
smiData.RigidTransform(8).axis = [0.5773502691896284 0.57735026918962562 0.57735026918962329];
smiData.RigidTransform(8).ID = 'F[segmento 3-1:-:segmento 4-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 0];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'RootGround[Base-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(5).mass = 0.0;
smiData.Solid(5).CoM = [0.0 0.0 0.0];
smiData.Solid(5).MoI = [0.0 0.0 0.0];
smiData.Solid(5).PoI = [0.0 0.0 0.0];
smiData.Solid(5).color = [0.0 0.0 0.0];
smiData.Solid(5).opacity = 0.0;
smiData.Solid(5).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.074131853071795858;  % kg
smiData.Solid(1).CoM = [-5.8459289362018181 0 0];  % cm
smiData.Solid(1).MoI = [0.13292228947692508 0.38880685959878952 0.38853210959878953];  % kg*cm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*cm^2
smiData.Solid(1).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'segmento 4*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 1.3249087385212341;  % kg
smiData.Solid(2).CoM = [0 0 1.5074099270063124];  % cm
smiData.Solid(2).MoI = [45.011888744824958 54.251888744824988 97.243834951969731];  % kg*cm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*cm^2
smiData.Solid(2).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Base*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 1.2234786214062583;  % kg
smiData.Solid(3).CoM = [-14.623445859925555 -1.3485338292705276e-05 5.0803236613757725e-07];  % cm
smiData.Solid(3).MoI = [12.019929416462359 77.966422198374715 76.315734454721664];  % kg*cm^2
smiData.Solid(3).PoI = [6.8704125499222376e-06 -6.0500799181704689e-06 0.00015202108032719014];  % kg*cm^2
smiData.Solid(3).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'segmento 2*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 1.2097913501732886;  % kg
smiData.Solid(4).CoM = [-14.198520497162306 0 9.9159873477939465e-14];  % cm
smiData.Solid(4).MoI = [12.052306905090816 62.77255640109 61.159703963616941];  % kg*cm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*cm^2
smiData.Solid(4).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'segmento 3*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.86069191862002892;  % kg
smiData.Solid(5).CoM = [9.4087583110287453e-09 14.472447715467879 5.0743956471396797e-14];  % cm
smiData.Solid(5).MoI = [52.091417044142347 6.2905727973506869 52.016274213579507];  % kg*cm^2
smiData.Solid(5).PoI = [0 -7.562232353139505e-07 3.777287935898145e-07];  % kg*cm^2
smiData.Solid(5).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'segmento1*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(4).Rz.Pos = 0.0;
smiData.RevoluteJoint(4).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = -93.500605532107301;  % deg
smiData.RevoluteJoint(1).ID = '[Base-1:-:segmento1-1]';

smiData.RevoluteJoint(2).Rz.Pos = 6.2332427397389054;  % deg
smiData.RevoluteJoint(2).ID = '[segmento 2-1:-:segmento1-1]';

smiData.RevoluteJoint(3).Rz.Pos = 22.47671534892832;  % deg
smiData.RevoluteJoint(3).ID = '[segmento 2-1:-:segmento 3-1]';

smiData.RevoluteJoint(4).Rz.Pos = 16.946495554552428;  % deg
smiData.RevoluteJoint(4).ID = '[segmento 3-1:-:segmento 4-1]';

