
B
ConstConst*
dtype0*%
valueB"????????????
U
a
VariableV2*
shape
:*
	container *
dtype0*
shared_name 
d
a/AssignAssignaConst*
_class

loc:@a*
use_locking(*
T0*
validate_shape(
4
a/readIdentitya*
_class

loc:@a*
T0
D
Const_1Const*%
valueB"????????????*
dtype0
U
b
VariableV2*
shape
:*
	container *
dtype0*
shared_name 
f
b/AssignAssignbConst_1*
T0*
validate_shape(*
_class

loc:@b*
use_locking(
4
b/readIdentityb*
_class

loc:@b*
T0
*

multipliedMula/readb/read*
T0
F
	Fill/dimsConst*%
valueB"   (   (   
   *
dtype0
7

Fill/valueConst*
valueB
 *  ??*
dtype0
>
FillFill	Fill/dims
Fill/value*
T0*

index_type0
H
Fill_1/dimsConst*%
valueB"      
   d   *
dtype0
9
Fill_1/valueConst*
valueB
 *  ??*
dtype0
D
Fill_1FillFill_1/dimsFill_1/value*
T0*

index_type0
?
	expensiveConv2DFillFill_1*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0*
strides

5
Const_2Const*
dtype0*
valueB: 
[
global_step
VariableV2*
shape:*
	container *
dtype0*
shared_name 
?
global_step/AssignAssignglobal_stepConst_2*
T0*
validate_shape(*
_class
loc:@global_step*
use_locking(
R
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0
<
PlaceholderPlaceholder*
shape
:*
dtype0
h
AssignAssignaPlaceholder*
T0*
validate_shape(*
_class

loc:@a*
use_locking( 
j
Assign_1AssignbPlaceholder*
validate_shape(*
_class

loc:@b*
use_locking( *
T0
8

save/ConstConst*
valueB Bmodel*
dtype0
T
save/save/tensor_namesConst*&
valueBBaBbBglobal_step*
dtype0
L
save/save/shapes_and_slicesConst*
valueBB B B *
dtype0
y
	save/save
SaveSlices
save/Constsave/save/tensor_namessave/save/shapes_and_slicesabglobal_step*
T
2
c
save/control_dependencyIdentity
save/Const
^save/save*
T0*
_class
loc:@save/Const
h
save/RestoreV2/tensor_namesConst"/device:CPU:0*&
valueBBaBbBglobal_step*
dtype0
_
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
p
save/AssignAssignasave/RestoreV2*
_class

loc:@a*
use_locking(*
T0*
validate_shape(
t
save/Assign_1Assignbsave/RestoreV2:1*
_class

loc:@b*
use_locking(*
T0*
validate_shape(
?
save/Assign_2Assignglobal_stepsave/RestoreV2:2*
T0*
validate_shape(*
_class
loc:@global_step*
use_locking(
F
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2
7
initNoOp	^a/Assign	^b/Assign^global_step/Assign"