±È
»
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ï

critic_network_1/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Â*0
shared_name!critic_network_1/dense_6/kernel

3critic_network_1/dense_6/kernel/Read/ReadVariableOpReadVariableOpcritic_network_1/dense_6/kernel* 
_output_shapes
:
Â*
dtype0

critic_network_1/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namecritic_network_1/dense_6/bias

1critic_network_1/dense_6/bias/Read/ReadVariableOpReadVariableOpcritic_network_1/dense_6/bias*
_output_shapes	
:*
dtype0

critic_network_1/dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*0
shared_name!critic_network_1/dense_7/kernel

3critic_network_1/dense_7/kernel/Read/ReadVariableOpReadVariableOpcritic_network_1/dense_7/kernel* 
_output_shapes
:
¬*
dtype0

critic_network_1/dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*.
shared_namecritic_network_1/dense_7/bias

1critic_network_1/dense_7/bias/Read/ReadVariableOpReadVariableOpcritic_network_1/dense_7/bias*
_output_shapes	
:¬*
dtype0

critic_network_1/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*0
shared_name!critic_network_1/dense_8/kernel

3critic_network_1/dense_8/kernel/Read/ReadVariableOpReadVariableOpcritic_network_1/dense_8/kernel*
_output_shapes
:	¬*
dtype0

critic_network_1/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namecritic_network_1/dense_8/bias

1critic_network_1/dense_8/bias/Read/ReadVariableOpReadVariableOpcritic_network_1/dense_8/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
ª
&Adam/critic_network_1/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Â*7
shared_name(&Adam/critic_network_1/dense_6/kernel/m
£
:Adam/critic_network_1/dense_6/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/critic_network_1/dense_6/kernel/m* 
_output_shapes
:
Â*
dtype0
¡
$Adam/critic_network_1/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/critic_network_1/dense_6/bias/m

8Adam/critic_network_1/dense_6/bias/m/Read/ReadVariableOpReadVariableOp$Adam/critic_network_1/dense_6/bias/m*
_output_shapes	
:*
dtype0
ª
&Adam/critic_network_1/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*7
shared_name(&Adam/critic_network_1/dense_7/kernel/m
£
:Adam/critic_network_1/dense_7/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/critic_network_1/dense_7/kernel/m* 
_output_shapes
:
¬*
dtype0
¡
$Adam/critic_network_1/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*5
shared_name&$Adam/critic_network_1/dense_7/bias/m

8Adam/critic_network_1/dense_7/bias/m/Read/ReadVariableOpReadVariableOp$Adam/critic_network_1/dense_7/bias/m*
_output_shapes	
:¬*
dtype0
©
&Adam/critic_network_1/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*7
shared_name(&Adam/critic_network_1/dense_8/kernel/m
¢
:Adam/critic_network_1/dense_8/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/critic_network_1/dense_8/kernel/m*
_output_shapes
:	¬*
dtype0
 
$Adam/critic_network_1/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/critic_network_1/dense_8/bias/m

8Adam/critic_network_1/dense_8/bias/m/Read/ReadVariableOpReadVariableOp$Adam/critic_network_1/dense_8/bias/m*
_output_shapes
:*
dtype0
ª
&Adam/critic_network_1/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Â*7
shared_name(&Adam/critic_network_1/dense_6/kernel/v
£
:Adam/critic_network_1/dense_6/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/critic_network_1/dense_6/kernel/v* 
_output_shapes
:
Â*
dtype0
¡
$Adam/critic_network_1/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/critic_network_1/dense_6/bias/v

8Adam/critic_network_1/dense_6/bias/v/Read/ReadVariableOpReadVariableOp$Adam/critic_network_1/dense_6/bias/v*
_output_shapes	
:*
dtype0
ª
&Adam/critic_network_1/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*7
shared_name(&Adam/critic_network_1/dense_7/kernel/v
£
:Adam/critic_network_1/dense_7/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/critic_network_1/dense_7/kernel/v* 
_output_shapes
:
¬*
dtype0
¡
$Adam/critic_network_1/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*5
shared_name&$Adam/critic_network_1/dense_7/bias/v

8Adam/critic_network_1/dense_7/bias/v/Read/ReadVariableOpReadVariableOp$Adam/critic_network_1/dense_7/bias/v*
_output_shapes	
:¬*
dtype0
©
&Adam/critic_network_1/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*7
shared_name(&Adam/critic_network_1/dense_8/kernel/v
¢
:Adam/critic_network_1/dense_8/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/critic_network_1/dense_8/kernel/v*
_output_shapes
:	¬*
dtype0
 
$Adam/critic_network_1/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/critic_network_1/dense_8/bias/v

8Adam/critic_network_1/dense_8/bias/v/Read/ReadVariableOpReadVariableOp$Adam/critic_network_1/dense_8/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ü'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*'
value'B' B'
ï
fc1
fc2
q
	optimizer
loss
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
°
&iter

'beta_1

(beta_2
	)decay
*learning_ratem@mAmBmCmDmEvFvGvHvIvJvK*
* 
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
°
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

0serving_default* 
^X
VARIABLE_VALUEcritic_network_1/dense_6/kernel%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEcritic_network_1/dense_6/bias#fc1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEcritic_network_1/dense_7/kernel%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEcritic_network_1/dense_7/bias#fc2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEcritic_network_1/dense_8/kernel#q/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEcritic_network_1/dense_8/bias!q/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
{
VARIABLE_VALUE&Adam/critic_network_1/dense_6/kernel/mAfc1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE$Adam/critic_network_1/dense_6/bias/m?fc1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE&Adam/critic_network_1/dense_7/kernel/mAfc2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE$Adam/critic_network_1/dense_7/bias/m?fc2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&Adam/critic_network_1/dense_8/kernel/m?q/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE$Adam/critic_network_1/dense_8/bias/m=q/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE&Adam/critic_network_1/dense_6/kernel/vAfc1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE$Adam/critic_network_1/dense_6/bias/v?fc1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE&Adam/critic_network_1/dense_7/kernel/vAfc2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE$Adam/critic_network_1/dense_7/bias/v?fc2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&Adam/critic_network_1/dense_8/kernel/v?q/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE$Adam/critic_network_1/dense_8/bias/v=q/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
serving_default_input_1Placeholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿÀ
z
serving_default_input_2Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2critic_network_1/dense_6/kernelcritic_network_1/dense_6/biascritic_network_1/dense_7/kernelcritic_network_1/dense_7/biascritic_network_1/dense_8/kernelcritic_network_1/dense_8/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_28415
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ö
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename3critic_network_1/dense_6/kernel/Read/ReadVariableOp1critic_network_1/dense_6/bias/Read/ReadVariableOp3critic_network_1/dense_7/kernel/Read/ReadVariableOp1critic_network_1/dense_7/bias/Read/ReadVariableOp3critic_network_1/dense_8/kernel/Read/ReadVariableOp1critic_network_1/dense_8/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp:Adam/critic_network_1/dense_6/kernel/m/Read/ReadVariableOp8Adam/critic_network_1/dense_6/bias/m/Read/ReadVariableOp:Adam/critic_network_1/dense_7/kernel/m/Read/ReadVariableOp8Adam/critic_network_1/dense_7/bias/m/Read/ReadVariableOp:Adam/critic_network_1/dense_8/kernel/m/Read/ReadVariableOp8Adam/critic_network_1/dense_8/bias/m/Read/ReadVariableOp:Adam/critic_network_1/dense_6/kernel/v/Read/ReadVariableOp8Adam/critic_network_1/dense_6/bias/v/Read/ReadVariableOp:Adam/critic_network_1/dense_7/kernel/v/Read/ReadVariableOp8Adam/critic_network_1/dense_7/bias/v/Read/ReadVariableOp:Adam/critic_network_1/dense_8/kernel/v/Read/ReadVariableOp8Adam/critic_network_1/dense_8/bias/v/Read/ReadVariableOpConst*$
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_28567

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecritic_network_1/dense_6/kernelcritic_network_1/dense_6/biascritic_network_1/dense_7/kernelcritic_network_1/dense_7/biascritic_network_1/dense_8/kernelcritic_network_1/dense_8/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate&Adam/critic_network_1/dense_6/kernel/m$Adam/critic_network_1/dense_6/bias/m&Adam/critic_network_1/dense_7/kernel/m$Adam/critic_network_1/dense_7/bias/m&Adam/critic_network_1/dense_8/kernel/m$Adam/critic_network_1/dense_8/bias/m&Adam/critic_network_1/dense_6/kernel/v$Adam/critic_network_1/dense_6/bias/v&Adam/critic_network_1/dense_7/kernel/v$Adam/critic_network_1/dense_7/bias/v&Adam/critic_network_1/dense_8/kernel/v$Adam/critic_network_1/dense_8/bias/v*#
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_28646ª÷
ù8

__inference__traced_save_28567
file_prefix>
:savev2_critic_network_1_dense_6_kernel_read_readvariableop<
8savev2_critic_network_1_dense_6_bias_read_readvariableop>
:savev2_critic_network_1_dense_7_kernel_read_readvariableop<
8savev2_critic_network_1_dense_7_bias_read_readvariableop>
:savev2_critic_network_1_dense_8_kernel_read_readvariableop<
8savev2_critic_network_1_dense_8_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopE
Asavev2_adam_critic_network_1_dense_6_kernel_m_read_readvariableopC
?savev2_adam_critic_network_1_dense_6_bias_m_read_readvariableopE
Asavev2_adam_critic_network_1_dense_7_kernel_m_read_readvariableopC
?savev2_adam_critic_network_1_dense_7_bias_m_read_readvariableopE
Asavev2_adam_critic_network_1_dense_8_kernel_m_read_readvariableopC
?savev2_adam_critic_network_1_dense_8_bias_m_read_readvariableopE
Asavev2_adam_critic_network_1_dense_6_kernel_v_read_readvariableopC
?savev2_adam_critic_network_1_dense_6_bias_v_read_readvariableopE
Asavev2_adam_critic_network_1_dense_7_kernel_v_read_readvariableopC
?savev2_adam_critic_network_1_dense_7_bias_v_read_readvariableopE
Asavev2_adam_critic_network_1_dense_8_kernel_v_read_readvariableopC
?savev2_adam_critic_network_1_dense_8_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ß

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*

valueþ	Bû	B%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc2/bias/.ATTRIBUTES/VARIABLE_VALUEB#q/kernel/.ATTRIBUTES/VARIABLE_VALUEB!q/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBAfc1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?fc1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAfc2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?fc2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?q/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=q/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAfc1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?fc1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAfc2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?fc2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?q/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=q/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0:savev2_critic_network_1_dense_6_kernel_read_readvariableop8savev2_critic_network_1_dense_6_bias_read_readvariableop:savev2_critic_network_1_dense_7_kernel_read_readvariableop8savev2_critic_network_1_dense_7_bias_read_readvariableop:savev2_critic_network_1_dense_8_kernel_read_readvariableop8savev2_critic_network_1_dense_8_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopAsavev2_adam_critic_network_1_dense_6_kernel_m_read_readvariableop?savev2_adam_critic_network_1_dense_6_bias_m_read_readvariableopAsavev2_adam_critic_network_1_dense_7_kernel_m_read_readvariableop?savev2_adam_critic_network_1_dense_7_bias_m_read_readvariableopAsavev2_adam_critic_network_1_dense_8_kernel_m_read_readvariableop?savev2_adam_critic_network_1_dense_8_bias_m_read_readvariableopAsavev2_adam_critic_network_1_dense_6_kernel_v_read_readvariableop?savev2_adam_critic_network_1_dense_6_bias_v_read_readvariableopAsavev2_adam_critic_network_1_dense_7_kernel_v_read_readvariableop?savev2_adam_critic_network_1_dense_7_bias_v_read_readvariableopAsavev2_adam_critic_network_1_dense_8_kernel_v_read_readvariableop?savev2_adam_critic_network_1_dense_8_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *&
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*È
_input_shapes¶
³: :
Â::
¬:¬:	¬:: : : : : :
Â::
¬:¬:	¬::
Â::
¬:¬:	¬:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Â:!

_output_shapes	
::&"
 
_output_shapes
:
¬:!

_output_shapes	
:¬:%!

_output_shapes
:	¬: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
Â:!

_output_shapes	
::&"
 
_output_shapes
:
¬:!

_output_shapes	
:¬:%!

_output_shapes
:	¬: 

_output_shapes
::&"
 
_output_shapes
:
Â:!

_output_shapes	
::&"
 
_output_shapes
:
¬:!

_output_shapes	
:¬:%!

_output_shapes
:	¬: 

_output_shapes
::

_output_shapes
: 
Å

'__inference_dense_7_layer_call_fn_28444

inputs
unknown:
¬
	unknown_0:	¬
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_28236p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö`
¶
!__inference__traced_restore_28646
file_prefixD
0assignvariableop_critic_network_1_dense_6_kernel:
Â?
0assignvariableop_1_critic_network_1_dense_6_bias:	F
2assignvariableop_2_critic_network_1_dense_7_kernel:
¬?
0assignvariableop_3_critic_network_1_dense_7_bias:	¬E
2assignvariableop_4_critic_network_1_dense_8_kernel:	¬>
0assignvariableop_5_critic_network_1_dense_8_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: N
:assignvariableop_11_adam_critic_network_1_dense_6_kernel_m:
ÂG
8assignvariableop_12_adam_critic_network_1_dense_6_bias_m:	N
:assignvariableop_13_adam_critic_network_1_dense_7_kernel_m:
¬G
8assignvariableop_14_adam_critic_network_1_dense_7_bias_m:	¬M
:assignvariableop_15_adam_critic_network_1_dense_8_kernel_m:	¬F
8assignvariableop_16_adam_critic_network_1_dense_8_bias_m:N
:assignvariableop_17_adam_critic_network_1_dense_6_kernel_v:
ÂG
8assignvariableop_18_adam_critic_network_1_dense_6_bias_v:	N
:assignvariableop_19_adam_critic_network_1_dense_7_kernel_v:
¬G
8assignvariableop_20_adam_critic_network_1_dense_7_bias_v:	¬M
:assignvariableop_21_adam_critic_network_1_dense_8_kernel_v:	¬F
8assignvariableop_22_adam_critic_network_1_dense_8_bias_v:
identity_24¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9â

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*

valueþ	Bû	B%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc2/bias/.ATTRIBUTES/VARIABLE_VALUEB#q/kernel/.ATTRIBUTES/VARIABLE_VALUEB!q/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBAfc1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?fc1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAfc2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?fc2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?q/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=q/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAfc1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?fc1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAfc2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?fc2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?q/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=q/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH 
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp0assignvariableop_critic_network_1_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp0assignvariableop_1_critic_network_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_2AssignVariableOp2assignvariableop_2_critic_network_1_dense_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp0assignvariableop_3_critic_network_1_dense_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_4AssignVariableOp2assignvariableop_4_critic_network_1_dense_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp0assignvariableop_5_critic_network_1_dense_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_11AssignVariableOp:assignvariableop_11_adam_critic_network_1_dense_6_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_12AssignVariableOp8assignvariableop_12_adam_critic_network_1_dense_6_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_13AssignVariableOp:assignvariableop_13_adam_critic_network_1_dense_7_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_14AssignVariableOp8assignvariableop_14_adam_critic_network_1_dense_7_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_15AssignVariableOp:assignvariableop_15_adam_critic_network_1_dense_8_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_16AssignVariableOp8assignvariableop_16_adam_critic_network_1_dense_8_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_17AssignVariableOp:assignvariableop_17_adam_critic_network_1_dense_6_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_18AssignVariableOp8assignvariableop_18_adam_critic_network_1_dense_6_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_19AssignVariableOp:assignvariableop_19_adam_critic_network_1_dense_7_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_critic_network_1_dense_7_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_21AssignVariableOp:assignvariableop_21_adam_critic_network_1_dense_8_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_22AssignVariableOp8assignvariableop_22_adam_critic_network_1_dense_8_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 É
Identity_23Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_24IdentityIdentity_23:output:0^NoOp_1*
T0*
_output_shapes
: ¶
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_24Identity_24:output:0*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¥

ö
B__inference_dense_7_layer_call_and_return_conditional_losses_28455

inputs2
matmul_readvariableop_resource:
¬.
biasadd_readvariableop_resource:	¬
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É	
ô
B__inference_dense_8_layer_call_and_return_conditional_losses_28474

inputs1
matmul_readvariableop_resource:	¬-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¬*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
È	

#__inference_signature_wrapper_28415
input_1
input_2
unknown:
Â
	unknown_0:	
	unknown_1:
¬
	unknown_2:	¬
	unknown_3:	¬
	unknown_4:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_28197o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
¥

ö
B__inference_dense_6_layer_call_and_return_conditional_losses_28435

inputs2
matmul_readvariableop_resource:
Â.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Â*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÂ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
 
_user_specified_nameinputs
ã

K__inference_critic_network_1_layer_call_and_return_conditional_losses_28395
inputs_0
inputs_1:
&dense_6_matmul_readvariableop_resource:
Â6
'dense_6_biasadd_readvariableop_resource:	:
&dense_7_matmul_readvariableop_resource:
¬6
'dense_7_biasadd_readvariableop_resource:	¬9
&dense_8_matmul_readvariableop_resource:	¬5
'dense_8_biasadd_readvariableop_resource:
identity¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOp¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢dense_8/BiasAdd/ReadVariableOp¢dense_8/MatMul/ReadVariableOpM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :x
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
Â*
dtype0
dense_6/MatMulMatMulconcat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype0
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬a
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	¬*
dtype0
dense_8/MatMulMatMuldense_7/Relu:activations:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_8/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Å

'__inference_dense_6_layer_call_fn_28424

inputs
unknown:
Â
	unknown_0:	
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_28219p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÂ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
 
_user_specified_nameinputs
Á

'__inference_dense_8_layer_call_fn_28464

inputs
unknown:	¬
	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_28252o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
¹&
¶
 __inference__wrapped_model_28197
input_1
input_2K
7critic_network_1_dense_6_matmul_readvariableop_resource:
ÂG
8critic_network_1_dense_6_biasadd_readvariableop_resource:	K
7critic_network_1_dense_7_matmul_readvariableop_resource:
¬G
8critic_network_1_dense_7_biasadd_readvariableop_resource:	¬J
7critic_network_1_dense_8_matmul_readvariableop_resource:	¬F
8critic_network_1_dense_8_biasadd_readvariableop_resource:
identity¢/critic_network_1/dense_6/BiasAdd/ReadVariableOp¢.critic_network_1/dense_6/MatMul/ReadVariableOp¢/critic_network_1/dense_7/BiasAdd/ReadVariableOp¢.critic_network_1/dense_7/MatMul/ReadVariableOp¢/critic_network_1/dense_8/BiasAdd/ReadVariableOp¢.critic_network_1/dense_8/MatMul/ReadVariableOp^
critic_network_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
critic_network_1/concatConcatV2input_1input_2%critic_network_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ¨
.critic_network_1/dense_6/MatMul/ReadVariableOpReadVariableOp7critic_network_1_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
Â*
dtype0¶
critic_network_1/dense_6/MatMulMatMul critic_network_1/concat:output:06critic_network_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/critic_network_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp8critic_network_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Â
 critic_network_1/dense_6/BiasAddBiasAdd)critic_network_1/dense_6/MatMul:product:07critic_network_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
critic_network_1/dense_6/ReluRelu)critic_network_1/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.critic_network_1/dense_7/MatMul/ReadVariableOpReadVariableOp7critic_network_1_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype0Á
critic_network_1/dense_7/MatMulMatMul+critic_network_1/dense_6/Relu:activations:06critic_network_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬¥
/critic_network_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp8critic_network_1_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype0Â
 critic_network_1/dense_7/BiasAddBiasAdd)critic_network_1/dense_7/MatMul:product:07critic_network_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
critic_network_1/dense_7/ReluRelu)critic_network_1/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬§
.critic_network_1/dense_8/MatMul/ReadVariableOpReadVariableOp7critic_network_1_dense_8_matmul_readvariableop_resource*
_output_shapes
:	¬*
dtype0À
critic_network_1/dense_8/MatMulMatMul+critic_network_1/dense_7/Relu:activations:06critic_network_1/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
/critic_network_1/dense_8/BiasAdd/ReadVariableOpReadVariableOp8critic_network_1_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 critic_network_1/dense_8/BiasAddBiasAdd)critic_network_1/dense_8/MatMul:product:07critic_network_1/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
IdentityIdentity)critic_network_1/dense_8/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
NoOpNoOp0^critic_network_1/dense_6/BiasAdd/ReadVariableOp/^critic_network_1/dense_6/MatMul/ReadVariableOp0^critic_network_1/dense_7/BiasAdd/ReadVariableOp/^critic_network_1/dense_7/MatMul/ReadVariableOp0^critic_network_1/dense_8/BiasAdd/ReadVariableOp/^critic_network_1/dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2b
/critic_network_1/dense_6/BiasAdd/ReadVariableOp/critic_network_1/dense_6/BiasAdd/ReadVariableOp2`
.critic_network_1/dense_6/MatMul/ReadVariableOp.critic_network_1/dense_6/MatMul/ReadVariableOp2b
/critic_network_1/dense_7/BiasAdd/ReadVariableOp/critic_network_1/dense_7/BiasAdd/ReadVariableOp2`
.critic_network_1/dense_7/MatMul/ReadVariableOp.critic_network_1/dense_7/MatMul/ReadVariableOp2b
/critic_network_1/dense_8/BiasAdd/ReadVariableOp/critic_network_1/dense_8/BiasAdd/ReadVariableOp2`
.critic_network_1/dense_8/MatMul/ReadVariableOp.critic_network_1/dense_8/MatMul/ReadVariableOp:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
¦

K__inference_critic_network_1_layer_call_and_return_conditional_losses_28344
input_1
input_2!
dense_6_28328:
Â
dense_6_28330:	!
dense_7_28333:
¬
dense_7_28335:	¬ 
dense_8_28338:	¬
dense_8_28340:
identity¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCallM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2input_1input_2concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂó
dense_6/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_6_28328dense_6_28330*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_28219
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_28333dense_7_28335*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_28236
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_28338dense_8_28340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_28252w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
¤

K__inference_critic_network_1_layer_call_and_return_conditional_losses_28259

inputs
inputs_1!
dense_6_28220:
Â
dense_6_28222:	!
dense_7_28237:
¬
dense_7_28239:	¬ 
dense_8_28253:	¬
dense_8_28255:
identity¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCallM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂó
dense_6/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_6_28220dense_6_28222*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_28219
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_28237dense_7_28239*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_28236
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_28253dense_8_28255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_28252w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

ö
B__inference_dense_7_layer_call_and_return_conditional_losses_28236

inputs2
matmul_readvariableop_resource:
¬.
biasadd_readvariableop_resource:	¬
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



0__inference_critic_network_1_layer_call_fn_28274
input_1
input_2
unknown:
Â
	unknown_0:	
	unknown_1:
¬
	unknown_2:	¬
	unknown_3:	¬
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_critic_network_1_layer_call_and_return_conditional_losses_28259o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
É	
ô
B__inference_dense_8_layer_call_and_return_conditional_losses_28252

inputs1
matmul_readvariableop_resource:	¬-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¬*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
¥

ö
B__inference_dense_6_layer_call_and_return_conditional_losses_28219

inputs2
matmul_readvariableop_resource:
Â.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Â*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÂ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
 
_user_specified_nameinputs


 
0__inference_critic_network_1_layer_call_fn_28368
inputs_0
inputs_1
unknown:
Â
	unknown_0:	
	unknown_1:
¬
	unknown_2:	¬
	unknown_3:	¬
	unknown_4:
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_critic_network_1_layer_call_and_return_conditional_losses_28259o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*é
serving_defaultÕ
<
input_11
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿÀ
;
input_20
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÄG

fc1
fc2
q
	optimizer
loss
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_model
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
¿
&iter

'beta_1

(beta_2
	)decay
*learning_ratem@mAmBmCmDmEvFvGvHvIvJvK"
	optimizer
 "
trackable_dict_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
0__inference_critic_network_1_layer_call_fn_28274
0__inference_critic_network_1_layer_call_fn_28368¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Â2¿
K__inference_critic_network_1_layer_call_and_return_conditional_losses_28395
K__inference_critic_network_1_layer_call_and_return_conditional_losses_28344¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÔBÑ
 __inference__wrapped_model_28197input_1input_2"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
0serving_default"
signature_map
3:1
Â2critic_network_1/dense_6/kernel
,:*2critic_network_1/dense_6/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_6_layer_call_fn_28424¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_6_layer_call_and_return_conditional_losses_28435¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
3:1
¬2critic_network_1/dense_7/kernel
,:*¬2critic_network_1/dense_7/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_7_layer_call_fn_28444¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_7_layer_call_and_return_conditional_losses_28455¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2:0	¬2critic_network_1/dense_8/kernel
+:)2critic_network_1/dense_8/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_8_layer_call_fn_28464¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_8_layer_call_and_return_conditional_losses_28474¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÑBÎ
#__inference_signature_wrapper_28415input_1input_2"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
8:6
Â2&Adam/critic_network_1/dense_6/kernel/m
1:/2$Adam/critic_network_1/dense_6/bias/m
8:6
¬2&Adam/critic_network_1/dense_7/kernel/m
1:/¬2$Adam/critic_network_1/dense_7/bias/m
7:5	¬2&Adam/critic_network_1/dense_8/kernel/m
0:.2$Adam/critic_network_1/dense_8/bias/m
8:6
Â2&Adam/critic_network_1/dense_6/kernel/v
1:/2$Adam/critic_network_1/dense_6/bias/v
8:6
¬2&Adam/critic_network_1/dense_7/kernel/v
1:/¬2$Adam/critic_network_1/dense_7/bias/v
7:5	¬2&Adam/critic_network_1/dense_8/kernel/v
0:.2$Adam/critic_network_1/dense_8/bias/v½
 __inference__wrapped_model_28197Y¢V
O¢L
J¢G
"
input_1ÿÿÿÿÿÿÿÿÿÀ
!
input_2ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿÚ
K__inference_critic_network_1_layer_call_and_return_conditional_losses_28344Y¢V
O¢L
J¢G
"
input_1ÿÿÿÿÿÿÿÿÿÀ
!
input_2ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ü
K__inference_critic_network_1_layer_call_and_return_conditional_losses_28395[¢X
Q¢N
L¢I
# 
inputs/0ÿÿÿÿÿÿÿÿÿÀ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ±
0__inference_critic_network_1_layer_call_fn_28274}Y¢V
O¢L
J¢G
"
input_1ÿÿÿÿÿÿÿÿÿÀ
!
input_2ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ³
0__inference_critic_network_1_layer_call_fn_28368[¢X
Q¢N
L¢I
# 
inputs/0ÿÿÿÿÿÿÿÿÿÀ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_dense_6_layer_call_and_return_conditional_losses_28435^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÂ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dense_6_layer_call_fn_28424Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÂ
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_dense_7_layer_call_and_return_conditional_losses_28455^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¬
 |
'__inference_dense_7_layer_call_fn_28444Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¬£
B__inference_dense_8_layer_call_and_return_conditional_losses_28474]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¬
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
'__inference_dense_8_layer_call_fn_28464P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¬
ª "ÿÿÿÿÿÿÿÿÿÑ
#__inference_signature_wrapper_28415©j¢g
¢ 
`ª]
-
input_1"
input_1ÿÿÿÿÿÿÿÿÿÀ
,
input_2!
input_2ÿÿÿÿÿÿÿÿÿ"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ