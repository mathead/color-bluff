GDPC                                                                               <   res://.import/bg.png-24bff804693ee063127ad100e04c5185.stex  �*      {       Ƕ9+���˞};�6q|<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex`.      �      ���{C�MO]��A�@   res://.import/light.png-06e94102f0cce323cff7daad56cf3030.stex   pN      {       {*�'�2k�ѥ��\�<   res://.import/wall.png-e3261c66ad83b71f524576fb4f3c7b5b.stex�Q      s       �K� "X���W   res://Character.gd.remap�T      $       �^���N�W������   res://Character.gdc �      �      �|=���-���ط   res://Character.tscnP      �      L^���ƴ{�/�N��7   res://Level.gd.remap�T              	���3PHXW�q��w<   res://Level.gdc        �       {������͵
d�ɼy   res://Level.tscn�      �      �$�T�Tz�k+Á�{   res://Player.gd.remap   �T      !       ��0�F �qq��dX��   res://Player.gdc`#      C      ��Xmt��y_DP�*^y   res://Player.tscn   �&      �      >�ژo��r��dа[   res://Wall.tscn P(      `      "�ı�6&��	��   res://bg.png.import 0+      z      ���m�w}�N]����|   res://default_env.tres  �-      �       um�`�N��<*ỳ�8   res://icon.png   U      n      u�|^�&��٦�?W�S-   res://icon.png.import   �K      �      �����%��(#AB�   res://light.png.import  �N      �      0���9��B���2�   res://project.binarypr      �      ���:�,Zs0㇝   res://wall.png.import    R      �      4��O��a4( X%�        GDSC            x      ��������τ�   ���۶���   ��������   ���   ���󶶶�   �����ᶶ   ���۶���   �����Ŷ�   �����϶�   �����������ń�   ����Ķ��   ��������   ����������Ӷ      000000        cf1717        1c2fc2        d5c916                                                          #      -   	   7   
   A      K      M      N      T      ^      _      e      v      6Y3YY>�  N�  R�  R�  R�  OYY8P�  Q;�  �  T�  Y8;�  N�  �  T�  V�  PQR�  �  T�  V�  P�  QR�  �  T�  V�  P�  QR�  �  T�  V�  P�  QRYOYY0�  PQV�  W�	  T�
  �  L�  MYY0�  PQV�  �  P�  P�  R�  QR�  R�  L�  MQY`            [gd_scene load_steps=15 format=2]

[ext_resource path="res://Character.gd" type="Script" id=1]

[sub_resource type="VisualShaderNodeScalarOp" id=1]
default_input_values = [ 0, 0.0, 1, 0.05 ]
operator = 2

[sub_resource type="VisualShaderNodeInput" id=2]
input_name = "color"

[sub_resource type="VisualShaderNodeInput" id=3]
input_name = "time"

[sub_resource type="VisualShaderNodeScalarFunc" id=4]
function = 0

[sub_resource type="VisualShaderNodeVectorCompose" id=5]

[sub_resource type="VisualShaderNodeVectorInterp" id=6]
output_port_for_preview = 0

[sub_resource type="VisualShaderNodeVectorFunc" id=7]
function = 2

[sub_resource type="VisualShaderNodeScalarOp" id=8]
default_input_values = [ 0, 0.0, 1, 5.0 ]
operator = 2

[sub_resource type="VisualShader" id=9]
code = "shader_type canvas_item;



void vertex() {
// Output:0

}

void fragment() {
// Input:2
	vec3 n_out2p0;
	n_out2p0 = COLOR.rgb;

// VectorFunc:8
	vec3 n_out8p0;
	n_out8p0=-(n_out2p0);

// Input:3
	float n_out3p0;
	n_out3p0 = TIME;

// ScalarOp:9
	float n_in9p1 = 5.00000;
	float n_out9p0;
	n_out9p0 = n_out3p0 * n_in9p1;

// ScalarFunc:4
	float n_out4p0;
	n_out4p0 = sin(n_out9p0);

// ScalarOp:10
	float n_in10p1 = 0.05000;
	float n_out10p0;
	n_out10p0 = n_out4p0 * n_in10p1;

// VectorCompose:5
	vec3 n_out5p0;
	n_out5p0 = vec3( n_out10p0 , n_out10p0 , n_out10p0 );

// VectorInterp:6
	vec3 n_out6p0;
	n_out6p0 = mix( n_out2p0 , n_out8p0 , n_out5p0 );

// Output:0
	COLOR.rgb = n_out6p0;

}

void light() {
// Output:0

}
"
graph_offset = Vector2( -838.866, 0 )
mode = 1
flags/light_only = false
nodes/fragment/0/position = Vector2( 840, 140 )
nodes/fragment/2/node = SubResource( 2 )
nodes/fragment/2/position = Vector2( -800, 140 )
nodes/fragment/3/node = SubResource( 3 )
nodes/fragment/3/position = Vector2( -1680, 560 )
nodes/fragment/4/node = SubResource( 4 )
nodes/fragment/4/position = Vector2( -920, 580 )
nodes/fragment/5/node = SubResource( 5 )
nodes/fragment/5/position = Vector2( -100, 540 )
nodes/fragment/6/node = SubResource( 6 )
nodes/fragment/6/position = Vector2( 400, 100 )
nodes/fragment/8/node = SubResource( 7 )
nodes/fragment/8/position = Vector2( -180, 220 )
nodes/fragment/9/node = SubResource( 8 )
nodes/fragment/9/position = Vector2( -1300, 520 )
nodes/fragment/10/node = SubResource( 1 )
nodes/fragment/10/position = Vector2( -520, 520 )
nodes/fragment/connections = PoolIntArray( 2, 0, 6, 0, 5, 0, 6, 2, 6, 0, 0, 0, 8, 0, 6, 1, 3, 0, 9, 0, 9, 0, 4, 0, 2, 0, 8, 0, 4, 0, 10, 0, 10, 0, 5, 0, 10, 0, 5, 1, 10, 0, 5, 2 )

[sub_resource type="ShaderMaterial" id=10]
shader = SubResource( 9 )

[sub_resource type="PhysicsMaterial" id=11]

[sub_resource type="CircleShape2D" id=12]
radius = 30.0499

[sub_resource type="Gradient" id=13]
offsets = PoolRealArray( 0.00331126, 0.81457, 1 )
colors = PoolColorArray( 0.989092, 0.991819, 0.99591, 1, 0.968627, 0.976471, 0.988235, 1, 1, 1, 1, 0 )

[node name="Character" type="RigidBody2D"]
material = SubResource( 10 )
physics_material_override = SubResource( 11 )
contact_monitor = true
linear_damp = 8.12
script = ExtResource( 1 )
colors = {
0: Color( 0, 0, 0, 1 ),
1: Color( 0.811765, 0.0901961, 0.0901961, 1 ),
2: Color( 0.109804, 0.184314, 0.760784, 1 ),
3: Color( 0.835294, 0.788235, 0.0862745, 1 )
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
visible = false
shape = SubResource( 12 )

[node name="CPUParticles2D" type="CPUParticles2D" parent="."]
amount = 100
lifetime = 2.0
local_coords = false
emission_shape = 1
emission_sphere_radius = 30.0
gravity = Vector2( 0, 0 )
radial_accel = 22.58
radial_accel_random = 0.49
tangential_accel = 3.0
tangential_accel_random = 0.56
damping = 12.37
scale_amount = 2.0
scale_amount_random = 1.0
color_ramp = SubResource( 13 )
             GDSC                   ���ӄ�   �������Ŷ���   ����׶��   ��������Ķ��   ����Ӷ��   �����Ķ�   �����϶�                   
            3YY0�  P�  QV�  W�  T�  W�  T�  Y`         [gd_scene load_steps=7 format=2]

[ext_resource path="res://Level.gd" type="Script" id=1]
[ext_resource path="res://bg.png" type="Texture" id=2]
[ext_resource path="res://Player.tscn" type="PackedScene" id=3]
[ext_resource path="res://light.png" type="Texture" id=4]
[ext_resource path="res://Character.tscn" type="PackedScene" id=5]
[ext_resource path="res://Wall.tscn" type="PackedScene" id=6]

[node name="Level" type="Node2D"]
script = ExtResource( 1 )

[node name="Background" type="Sprite" parent="."]
position = Vector2( 511.352, 299.474 )
scale = Vector2( 106.155, 63.6028 )
texture = ExtResource( 2 )

[node name="Player" parent="." instance=ExtResource( 3 )]
material = null
position = Vector2( 482.936, 296.058 )
colors = {
0: Color( 0, 0, 0, 1 ),
1: Color( 0.811765, 0.0901961, 0.0901961, 1 ),
2: Color( 0.109804, 0.184314, 0.760784, 1 ),
3: Color( 0.835294, 0.788235, 0.0862745, 1 )
}

[node name="Light2D" type="Light2D" parent="Player"]
scale = Vector2( 10, 10 )
texture = ExtResource( 4 )
texture_scale = 50.0
mode = 3
shadow_enabled = true
shadow_color = Color( 0, 0, 0, 1 )
shadow_buffer_size = 4096
shadow_filter = 1
shadow_filter_smooth = 1.0

[node name="Character2" parent="." instance=ExtResource( 5 )]
position = Vector2( 802.063, 134.998 )
team = 3
colors = {
0: Color( 0, 0, 0, 1 ),
1: Color( 0.811765, 0.0901961, 0.0901961, 1 ),
2: Color( 0.109804, 0.184314, 0.760784, 1 ),
3: Color( 0.835294, 0.788235, 0.0862745, 1 )
}

[node name="Character3" parent="." instance=ExtResource( 5 )]
position = Vector2( 912.829, 528.368 )
team = 2
colors = {
0: Color( 0, 0, 0, 1 ),
1: Color( 0.811765, 0.0901961, 0.0901961, 1 ),
2: Color( 0.109804, 0.184314, 0.760784, 1 ),
3: Color( 0.835294, 0.788235, 0.0862745, 1 )
}

[node name="Character4" parent="." instance=ExtResource( 5 )]
position = Vector2( 158.421, 101.469 )
colors = {
0: Color( 0, 0, 0, 1 ),
1: Color( 0.811765, 0.0901961, 0.0901961, 1 ),
2: Color( 0.109804, 0.184314, 0.760784, 1 ),
3: Color( 0.835294, 0.788235, 0.0862745, 1 )
}

[node name="CanvasModulate" type="CanvasModulate" parent="."]
position = Vector2( 511.352, 299.474 )
scale = Vector2( 106.155, 63.6028 )
color = Color( 0, 0, 0, 1 )

[node name="Wall" parent="." instance=ExtResource( 6 )]
position = Vector2( 362.835, 248.476 )

[node name="Wall2" parent="." instance=ExtResource( 6 )]
position = Vector2( 665.039, 302.748 )
scale = Vector2( 1, 8.92 )

[node name="Wall3" parent="." instance=ExtResource( 6 )]
position = Vector2( 396.329, 403.697 )
rotation = 2.2953
scale = Vector2( 1, 4.97759 )

[node name="EnergyBar" type="TextureProgress" parent="."]
margin_left = 358.383
margin_top = 17.4567
margin_right = 368.383
margin_bottom = 27.4567
rect_scale = Vector2( 25.04, 1.2 )
step = 0.0
value = 100.0
texture_under = ExtResource( 2 )
texture_progress = ExtResource( 2 )
tint_under = Color( 0.423529, 0.423529, 0.423529, 1 )
tint_over = Color( 0.00784314, 0.803922, 0, 0 )
tint_progress = Color( 1, 0, 0, 1 )
    GDSC      	      �      ����Ҷ��   �����϶�   ���������������Ŷ���   ����׶��   �������϶���   ����¶��   ����������������Ҷ��   ζ��   ϶��   �����޶�   ���������Ҷ�   ��������������������Ӷ��   �������Ŷ���      res://Character.gd     �       �B      ui_right            ui_left       ui_down       ui_up                                                              	   (   
   .      7      =      F      L      U      [      e      q      v      w      ~      �      6Y3YY8;�  Y;�  �  YY0�  P�  QV�  ;�  �  PQ�  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�	  PQ�  V�  �  �  T�
  PQ�  �  �  P�  QYY0�  P�  QV�  �  �  Y`             [gd_scene load_steps=3 format=2]

[ext_resource path="res://Character.tscn" type="PackedScene" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]

[node name="Player" instance=ExtResource( 1 )]
script = ExtResource( 2 )
team = 1
colors = {
0: Color( 0, 0, 0, 1 ),
1: Color( 0.811765, 0.0901961, 0.0901961, 1 ),
2: Color( 0.109804, 0.184314, 0.760784, 1 ),
3: Color( 0.835294, 0.788235, 0.0862745, 1 )
}
 [gd_scene load_steps=4 format=2]

[ext_resource path="res://wall.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 24.7768, 24.7186 )

[sub_resource type="OccluderPolygon2D" id=2]
polygon = PoolVector2Array( -25, -25, 25, -25, 25, 25, -25, 25 )

[node name="Wall" type="StaticBody2D"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 5, 5 )
texture = ExtResource( 1 )

[node name="LightOccluder2D" type="LightOccluder2D" parent="."]
occluder = SubResource( 2 )
GDST
   
           _   PNG �PNG

   IHDR   
   
   PX�   sRGB ���   IDAT�c���n��GnK o����>    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bg.png-24bff804693ee063127ad100e04c5185.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://bg.png"
dest_files=[ "res://.import/bg.png-24bff804693ee063127ad100e04c5185.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST�   �           r  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  (IDATx��wt\ՙ�o���X�U,[��&W\0؆`c��1�YجCZ�ɦ.�:Ξl6&!$'��l�m��%�Ir���fԦ���4��di�4������޽��;����~����s�]f=��$��t��89w�D�V8��*�L�B:�i@QFM 6Z��)�D�	��s[�Iw����ڛ�2��Ir��`(%�JΝ�I&��MT�c���x����F��r�&̻Q��:�P���4��G�<Jh1������d�=�+��N ��@Ti{�d����XF풡��o�CO�KOK07V%� H�7A"E&W �+$R�A�^�(�GED����a�`�Y����6V;Zo�{� L[�u�����m�a �3� ��P�"S��T�(��n5c5u#:��/5�M��m:��DD5��~ɕ(c�!���d
2������y)]�M�
,L Rk�T�R�_��3�\��
�"=-���n�;���Nnsu��,��/�+Q�cG��QB�B�L��wV|�%s�$vAb?ã�/H$�7?��2&A"�<��v�$1*�*F%[�yU���6�W��B�ݚkT�{4*�J����UA"����@dJ�D�y*�!:�K"�z%�+F�dQF���u��"QH�3<OJt�\)���B*-� �ޓ>R�f"�� يb��H���dَ� �މ���+�Ad/����Bμ��,�Y����H%��]<��7il��AHO���C�II���9RV���r�O��b��1�0m�=����˥�8
&�g��),�Y��)�P��s�������-�)Az��W�y�Ԥ�׬6;'Μ�PiK�RY]pF����x�)@jR7-�Ǫ���9�b=(}Q�ӿ}ݯ�<��}��f�Oi�����a���-���3ҌY�Y��}��ƒyӑH�^l5P\���Z������F�e3��o�̅��55/�W�{A��}�T��	Z��&11ep�8����c�x}ǧ��WV�0�_"�0-/��mXK���׌V�.�Q\��X����u�@E�NNE�o5mzѧg>v�jw��@E%5� �����$�(������$NJF�p�$	���l~�U��/[9}�7�-�������B9~�W�(���|�̴d�9Q�����e�?.g��f.�tc��9��ͭ�2���%q�|�Z�|�5s��a�
 �N�gv���l�Jc�9���́�����͈F!#=A�6��%'rӒy�UVS߬�6���8�[�u7/A�tM_�N>9�ĻGk�����No���zV�����r��iDq�� ������:�i�gXl>=�ħg��N�p�U��0-�T�J��p�d�O�"z�g�l����~��?.�Y��l��
���:L��9�.�v�iL����o��zV��������G��x�!�����k�m�˼���a��Ai=w^��7׮����m�q��]{��V}��i�>(����X߳��u�D"ZL�N�Jxc��X��d"�J(���_���!��N����YV��:D��'�?f��(7R�u[�}�q��=�9�H[w���,���
�-@�G�J���Gj�n�8�F+z��N��x��D��D����w�7t�,�g"��V�n����2��ַ�X����'<��Y�H$�?-m}Ӫ)qc�Qų��u�D"ZZ�;��'ǌ�,�g"��V�f�Jr���U�,ks�� a�H�֮X��fR]���c������^5��o��J�qr�j<����VҬk�y6p�,�7�	�����2��} �c���6k�J)�w��3'z�?v���n�ə�Ib5*�w5k�_����'����}S���?n����L�"�}�W��e���;���rx��Ư��u�����>��!q0����$�x�>͞2���qɬ�a�Yi�_����7מ?a<��]�Mv��l��l��*�r�_�k���DQv"J�״������s�:��i3Ӓ�ѷ��w0~\Ҁ{�%'2!3�O���l��AaQ�G;�/v���<�:�iqHA���`������j�^5��?�6ڄ�,�+Zxzk��#�#5Z�9�Dz���d�o�斥�k����k����`rn�[�N�]'������\
11+�\�ᲊ���_B�	�����ᾕf[�����0>QͿ_;�����hlՓ����,v~�Q9*�6ݎ���ʓ7�3? �"Mm���h���+o��/.R��j�s]k�����Û���pPe	�'`޴|�{�H{<v�oe�G�jX������\�1)5�=^�ը�¯ӛ��;%����޳?\j3�չV��&��#����;��<��ۋk�|�W��7.��$ �̙Ɖ�hh	ܿ l���T~��ChT.��o��g�ʰ҃m����FڍVfd& ����Z�O�-��+��O��d��3M�ő����b�O{��JZ��Y�oc��d�bH$�^5������Y���(�\&�7?}�����m���i��9U*��}���8%'.���?�b��o�3�X�N>?�L�RFs���m+������v���m,+�F!C��3k�Dv}~��0�x��U\�p& V������Z7L6�+Z8Z����Ε�(��*�+Zuc��Aim˧�#��h�Q�,)���� ��E�
Y�2���{�S��5D�(�p������w��e�f}ߠ@�T���sw��oe��epv����V�5����C�n�<(x���Hu�U;L66T>��,Jp�������[e�&���7uπ 7sw߲�}���Ϲ%|t�l���s��oY��
��X��/r����t|r�i�QB�'��(�r�H%�͟1L�����j��7_���H��7����� ���Ţ_Y����Ā�?f�$��(�}��詀������g�J�'V��q3��(�R�XQ�6}v��g/|��F�|�]��	��D5�X�������-�uO%w���w��_P
�������s���EQ���
QBCQVw��ro~�=ڂ�9z&p��9TꚒ�?�u�jy���ҏx���:IϤۡ�rv}�iB����D��@J���VN!j*t�S+����k�����/��{�DZ�lz��k΢�dV��&W_Y='�Ey.K�(����7hч�_"dn�_?Û��uk�$����:(e��,�}���{9�g�/��-��7vq�נTȑK%H$���y�I\���x��B��ꠡ���m����d4�I%̟�ĢI�d$�Q+����&�:�ʱ*g`V�D@.u�H���x?�E������\"?g|���:/�o-�#S;pò�ٮI��3��?Ͼ���\:9���摖00����Dn��A����{��U�%�_��&*���;��>|?y-s��!��?)$ ����53�'i	*~r�t�>T��
������U��'�Z5��`ÒIu��R)s�N
K=ö2(;��E�{��EQ�����Dbb"���y������������Nd�\�nss3�����j�����9Xl�8X�׳���E�,���}��W��v�~�������v��^nX���p݂��u���>"e���Ⱥ9��O�|-[����>���ĝw��uw!�����-���j=g"c�C�t�7,��K��l�{O}��_z�K� �՗x���ؼ�y�������qJV��d��LR�\z���͛���g��>�N�㥗^����>fs�r0Ap�5R�H�W13�ۚ����SVV6d��;v�m�6 
�☐�CkQV"/mX�#7����a3�|�fNH�� -�m[��s��!ӗ��y)*�:�i�-OD(��\�5q.\dϞ=>�}��װZ�=������K'y�qQɥ|s�ooe�3�V+����Oy����ŋ��g�:�� "`\�w|�����ptuuQr���>��U��0�u��������|�~E�_�w��X�
�Qx�E���^��J���a��oC��g��[�~���y�����,W�7��솥7�?$[�3�~�ֿN��<ZD�\h��:�\P�W��ɓ��b&e��>����2y�w���y��8~I�Lj鲥����oqaa!y�y�N�V�?*��*�"/?��B�V���Ʋti����������	5� V����k��qqq<�����S*<��� �_R���y��0X�_���?���(}��{������s�W\�����P �������.榛V���!��]��ϳ�=Kaa!����W�ፃմv[(,,���%!a����r9�?�7��쪱���AF"%��ŵV�����W�:�is͚�Y�p;��Aii]]]$%%�p�V�^Ell,&��M�O�=�t�ll�~�_���ܹsy}���ܱ�C���鈋�c��"V߾���>���:G���Q ��VO����kf��###�|`���&6�w��V�:�A��vn(*��x��b6�>���X�߳�����l���M�OR�,�C��( ��y�G�mV&�f�'S;p�Kc��]%��8^з�L}'W�8�/U�x���dr۬�'�L���y��]%u���t6� ���^\���Z2�j��4$�(����~�ҟ�ZIJ��=�_����?l[���?����#5d'i�JҠ�(�,���n93�D�xR�7��Gl���c���Pݿ&�9�D���H;G��F�
0�p�Y<Q�N�� �F�m�.Ao�����,�����X|�v���KI�Q���^�+����2��z��	����p{F�ݥ�.��0��X�����x��;�f���v	5�%؀�Ƃ[x�����BF���Of���v�U�F���P0 8v�Hƚ�l[�j��&�������T�L�a��3�����ts�����hux}=?��&?�� ��v�#�
���w�Z?��=��w�WA���� �8U�Ż}NV��HOPs��,�������]�/*[(�i�2��Qx,�G(ݰ*�p-��栾�䎏��av+@�2�@9ɁG�
�<��d#�.���߳E��Q�B� N�BJh�<��ˤj���ʞx�����ƿUC��ݛ5f���\�L��x��W<B�XP�n�ɽg@�R�޺�W��޽�8��o�U�H�S�ee��P�v�$��Īdt�)��~��n��#�xU_=��#`(B>����Y
$VPw?g��?�/���k�ο��D��q*��w����w���5�-@o� p��;���k�f�R�躭�v;ơ�$�&�h�䂭7X1Z���z�VCy��A4rb�2b2�bLN���' #�o���#���!W�S�.�p��[�(+���p�;��m�ҭ�_�;h�N���N��%�nK�r�l^?|0�:���3pݔq�תIP������Q�����ڙm�D4)�X�x���!RF����9��v �s|[�ן�3�)C/�W�}�ĄJLJf�������.➿�S�H!��VT�w��I���`_�������R�����~��*��V.�8~I�o�G������4Y��UT\����l�����ܹµq��(��ov�����S�F!%F)#Q� ^-'F)%V)G� F�qM�sM%���će��ò��j���m�a�8�4�h7Z1X�,���O�5S�5�������#��{�`���.���>����W#W�0;Gˉ W���V-#���h��o���y2'Gˢ�UQy�}ayNX�����+�, O�8�k=~��Qɥ<~c_D��_���y�<�6��_�e+ݮohz����yJX�YWA�7O!�'�XG���}u[����:��߿����T�Z�9� <����B��"��0��%,���r�Rj������_����)9zQG���42���7r�̾ �����7v�"������.� '#������8�e&p�K���m�r6��ᶂ|��XЛAƈ+ ��c���@�Dװ&=A͊�4t���B�PsMA
Ϭ��5���C<�Ƿ�x8FE�N�}GOb�;�jF� ��KYV8���1\h6���l,��������w�D�IE�����a1��@�-���I1����]�E�
���JZr���)����:|�� �L�
i	*�ʢ/��V=���[
`Ch0轇�#�  �O��V]�����)�:��{�낞8�4��hY='��y�^�aQ���!���{tï�� �L���#��Ƃ�.5w��W�����1�yAZ�
Ǳ�0u���J����vQ~�v���!����3
����z֔A��[�-W�8^��ĥ�	����3A���$�?����W'�򷝟q�d`K҃!"����T�ݴ����%!��ѦN3�]T4vr��@S���N�^R�$�ūHKP11%����LN�2�o{����8����������"���T���n�f.K�M�yo\��JC���N3Mf:L��ۍ6�N�Վ����ݞE	9R��U��!�$j\�	j9	j�T�ū�+||�����c���@1G�*�;F�ۘP O$	S'e�p��0=*Ed�Kh��8UY͑�,)��ڰ��a�)@�R	��ҙ��Ô�Y�d����DFjR��,v�;4��il�Q��B��ZN��ą�F����� c.B��ᤲ����z��8/�Z�2d�����@bO_")!�D�F�B�R"�J�ƻ�m�;�q8��f�&�����e�U�AMc-zZt4��òHc4s
p9DQ��YG}s���^IH /[㕢�Q2�l�%@�w����E	�Ad�,�9G�%<"�F��a�ڙ�a9��(#K�Z��2�T*�ڌ�n��i�(��_�R��}	�p�E����6���n5������0����{^���	GetE�L=����v��U4�*6����t`1F�֦Q��b������[EæV��v��w�)�VVSdll%p��n��:=����ui��� {&���X���XD�:���;݊����#K�'`jo0whӎ n���j�aoC��E����n���j�j�Fh�l2���%kҴiHc�������J��@_�;Q�a�x�${�v!���QB�(��N'N��ň����l���]�[�����'�fB�U7�Sh�� ��ٚ�qہ�a�A�����޲&I�S��W�/���Wa	�?@tW���	�%.Y���3ZY�;��#���s��v���xLE�xv��ύ�J����������$����JHɝ�L&U9��p8�U
�0�tӀ�/%���@l���SR��S*a���0�V� =�+a{�3j�4����`ۉ��	    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST
   
           _   PNG �PNG

   IHDR   
   
   PX�   sRGB ���   IDAT�c���?n��GnK ���#�    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/light.png-06e94102f0cce323cff7daad56cf3030.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://light.png"
dest_files=[ "res://.import/light.png-06e94102f0cce323cff7daad56cf3030.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST
   
           W   PNG �PNG

   IHDR   
   
   PX�   sRGB ���   IDAT�c`� 6 ŋ�    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/wall.png-e3261c66ad83b71f524576fb4f3c7b5b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://wall.png"
dest_files=[ "res://.import/wall.png-e3261c66ad83b71f524576fb4f3c7b5b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Character.gdc"
            [remap]

path="res://Level.gdc"
[remap]

path="res://Player.gdc"
               �PNG

   IHDR   �   �   �>a�  5IDATx��yt׽ǿ3�eɒ�ɻ��`�m�@��@!B^��I�薭�$�{�^�Ҕ�����6I{�$�IC�&iؓ4a	�V��ƀm��E����G3���lY�e[�-��9��xfW�7w��Ev1D��49}�`7���HX%�8�#b� B����sH�A�}Ԣ�jۯN���"O�xenfb��]\.g+b�=]0�4��@��U��v�īc
@vٝbIb�s �$ Q$J#�X �%�@�����̾� �9����)�TD��1&�J������:��y\� �4��e�!�# J�$\� �A� �q�"1"˲`����N�u0����1��M��܅���r*Ve�)� ���'H|�\�0u�fh�
�b�px_�5iU��*�w����^�J$MT�� 
�spy��
�\^dK#l�.xX��ó7��D���Ľ��V ^b
2�JE [�S�b��X7?� ��������҅�x�N�:氘@�x�� ��=?�' _$��B�;|�\���,���� '.}6┿�s��×	��H�����\� 4eXv��kvH��)KT
��m��"I��o%|�go.r�%*��4%u5 �U���F�� \��q?%����&�=���[���w�2,�!��\���Q��
�m��pJH���ǣ��q1�mY6��⑈ '�H1&m�B��L�ߪ�h�x�T$�<T����yEXXRI�_g��|��ڠ����mC�\
���b]#��4����(��7�ūd�O�)R�Ju�c��YX<��g��7Z��=����ѫLR�x���HN���F�i\�֌�8WsMm�A�a�1i�<��� $'�p��
l�cr3Fi�}��Ux�o���w>�����J�ڥ���ӕPk�=g���0�(o�
�W�I�����PժAU�4�����������nv�����,���� ,��w\���s0#ɷe������z�u�jZ��h�����e��7��0w�53����T�jP٪��Dy\?Ө��� ;ވ�v���3w<��5`:ӨFM�Ӏ��U�jFB�	(�M�♉��+�$�ra	V.,Amc+~��}����M��%�p?�E��点x�E�2�u�e���Z��e+�|ڀS��pSm��>�
�Ym�������\k�@{�z�g.+/���k  �����`�=�X�n��8ӤƁ�.t�!�s�*�T(�D9�^^���6t�iB�%��i �=��u�!8�/�ǯ����th|�7��Kk�ǵ��0? �ض�8S}�M)�	A �oY���]Z˸ϰ����k*d%����,�*V��!!�u�r\���Wy���^��=3���o]�6�����=�
��
rұ��x̴KˊQ�� �P�~�5�guh�x��<��%׹Ynu�F�����n�N���N��l�G��x`��!��yt$)��K��;���~������n��������^�h$��b�	y�wV�*;��,<���\���ό���8��2���{Y�Vj��SOT�67���0R8Z��w�c��0�p�e�آ[ ������B�R��b����LAk�0h�� �xr1r1q޿��ͽ��u�F�Z ���� ��v�,�����/���^�h$�?ꁑe�$��1Tq/�{����~ݠ��ĸ�# �eu�C4���XI�L[E���Ey�1 �Cb󚥸s�<�u��te=����W�s��[�:N�L�������Z�it~�.-���s���������3`�Q>~a#b�@������1�+��q���	�{��P�H�B<��FlZ}�����*����	�T��fcU񈪚p��Y����f߃��l<��T���8_�؊�?�'�)q(xk#�"���0�̟5�ZzJ"6�Z��L%Z:a0������ϻ���%���7X�x�h#��m�\�ŗ7�ѫ��$K��e�����R�h�W�e"~�ݯ���#=%aԽ��r�d(q�\MX���� <��zܿz����ϛѩ� _)I yYiؼf)����6�X0{~�](d#,��xv_�vG�@�7�&�W!U.Dv��7�Ɖpϊ�h��C�j �7�������3G.w�&5�s�1#S	��u�!��[ ��	���E���#�f�*;�� �t��~��(�|Fo��D�Ko����'8�4��v�p{a2���qC�,�B5�Cj��#��}x�t뜽������e��z�?�RY"�	�(��O�!��s����I#�%�`�q�Q��-�L�s͗%b������\���s ��q�F?*r/� H�#a�z���z����=�n�!/E��1 `YY1._��u���d�%��g�X�l��>#~��v#���^��Lan�<�S`�ڴ��5�7D��i0Z�8qM�|�irg�m4�r�^:ք~��:� �5`�D$��A�$V,���.�a��Z|�� �������rg�hÏޯ��elu*��׀���H�
p�]����:l��My��v���>H\�Z���u���a<E7�`q�e +�R �s!��P:k�����0���ܹx �b��?k������t��Z5cZ��J�,p�U�Ӎj�fl�0Sj;�X='�@�""!�j~�� ������֯t�v�M*�89b����jvo�g%���|ߐ@$��'�����k���ꮐ�7���p���s��'��� �%����됖윫�-v���a��Y��`������UZrٺ.�{- �)�z�
��_N�p,F��[����������C�A�ʅ%��~U�ǯ��.D��8~U��V�Z �$�r��	r�M�/�����ю�o���� |~����%i(͖]��Q�-�ڒ4���K�A�+h��ނ���p~jM!nƘ������G������7��_H��߼�&�O�\�o.��v1��Ks]K���y����� ���̓��M�(�P!Fx(ɔ���L��7b D�ÐW������%I� ��ň�"���x?Z_rh��|m��M5��(������ �$�����ߌ(F@ �Y;IC���A#~��;a�wX@��c�+o���,�K�Ʋ�	r��eX��Դ�,�_��6����K��,���kx��S��﬜	7��Χ.���s���)��Ӳ��j���G��]� ���� ��?�@Enn�KB�B1�ŠGg����Ԣ�il2p9$�H����H�� �s`�tk-8�܏�VGpZ�$��8_$e�+o΢�W �4�ap�Z;�Ӄ��myI���<d(F�V7/˹��[���f|�0�v�+
���yP�FGX/͒cݼ4ti-x�T3�i��h���������� �}4A(��.7�E!���g�Ms}6�;J�?�w�3J���G���O7�����d(Dxn�\l_>3��1��A���g�<���So[����sF�gY����X,���HI�*�T�	�v�O��o��M�ݾ�>�t:�D"dff�j����a�3x�\[@�
U�?Q�>;-/��"�i��>�}�͈%lNN6z�!�Z�
 �eQ6��4���)b���-ǖEٮ��ǎc�޽hkkw�KHH�l�W�|\�������n��ZOt�:D�0}����X�V����W_�h| hkk���/`Ϟ]羽"��,`��l���� ]�ݟ�gϋؽ��� �F�W_}?��a��������BT�2^�yY���=�{uuu��;|�0��� (PJ���AkI��n_�'V��Uxu�"���O����� ��~>tx����u�
8����ؖ'*�"��'���;v̯�o��&(���b��N��b�G!��o���~EQx�7��s��1���x�g��T����9sƵ�8�5�k����[�k�1Ѭc��g����`����eY����}���=*@����t~��Ǚ^�=���S��gtZF���u�*�B �^A�y���=��ݰ��ȇd~/��ռ��]�"*���q\XPP��B�~�-j�)Cg������B�:y�y��
�n�z�I�X���!/?vƁK����}�թ����CQ��9�+V���[��ۃ��&�D� P��:]�R��?����>�zz' �Ún�l�]'���F�������wB��*��O<�T�:>X�	��EVT  �w����p1w߽;v� ��ۺH&���v����F[�˫����6�m(**��vC&������a�����`W�z�1i8���(���8p��Z�+��M�a��E8t�jk�`0����ŋa���H$�Pv�2�+z��ر���f�|���㭽o���8�4�R)��+���6"-m�|�8TG�$�T�5  ��&<��*<�i.���b����G�Gg���W�������W���x4�x��*<w�\��%���6l{pۘ�;4f�:p���;D��  �Ԛ���.���l����h��^�Gj�q��+�o��Aܖ�4�\�����ț��,���#U6z1�Kk����8R���>�٨  ��:q��
��H�@k�Щ1�k�7<ф$����ߤ2��'��օ������b���LC!�Cc��Cc�p˙�&*��.�%�?��`Ó{+]˿�G�s��z�$��vNQ3�15�`�Ҳx<b�����ܕ���\���f�Ok���?r^c�`�3dڭ���AB�����_�q~��,�$��e	���D{f�v
��)�z�WvN�
_$��py&��"g�J��=�t0�v]��B��"�m�'C.�G���hS��W�
�,�t���C��7������8#�?���qx>W��W�\n����:�)�����������K  $W��� ���U�i����}��$K��� Ra�Ż�,3���T���e��O�
x��&5�:t��@�q�?|7�H�ҍ� L�cY��uW|| ��[] h";1��Y἗{�^�����w�Q�5����í�� �,�x�\��wPewܕH�*;P���Pi�ܵY�/��?�xp9#��{����'tL0�-�=��k�v1X=G�R!/`���������?�(LV�% 2!� P��	3Z���G�ar����B�npd�L� ��������6�]������d�OH���7a����7z{0+p�������w7�� 	��h�L����<����e�):(l�����]�����;���<�	���s� �P)���' M>��чߒ8�P���9�eK2e8�X �q�jg\�[_�-�g�A�&����FېpX�?|(�.��e3pǬ�+D����,p���C"�"N�������AD4)q�Y���>N��� T����6� ����Wϛ^��I�;zƋx~}b�% �f&b��Ġ�իnq�߰���8)�#�c���V�.�ىq�/�����Z���1Q!�A���`�� 4&
�&T�k�� ��e�]�����֠�3a��6
~~	�qnyE&�:��]��O���)S�� N��\�G���8�8>�nׄCׄ<��,���'�|\׃�\�b�v�l�v��L6&3���f�fp����"�|x�"lT��"�z��Sؼ�6���0?[��!z)f��zC���~���I{�;e�
,2\eY�~�yD�{�֮>?�|�	 O�U��c|�<v�5���h��7O�D� �����M����fED�u�A�s�,�E�L��7�G�y���Fo���u���
���W��� �J��B 狤������>̍����+rF�*J�G�T�K-D��mZ�%	켫��	��֡x�ȩqrΤl�΅�Fd�%#?��#����8C��-آ�Cv���xxn�\� >>]�f��t �ӕ�HI��h�sZ�*a͜4��-�Α"�,+H��K=��8���nP{OĔ�����KW`�,�[ �  �q��(3��p�τ� 4eәL�;�*�CKg�fH,��O���{("�_`� ū�xR�"<�kc���?{�kP&��2�\���ڡ
r�t���	�ua6֖�y�K����՟��� 6���s:9�  �O}c6ܹ������8�<���]!/Ee�
l,���D��0˲8��y����0�#/�Q! �̞��'�����7h��j�j蛶��(�XY��E�>c��m��?���N�#CT	�0�����m��|���m�jՠ�M����I	�8>�g�Q��@yn�k�wX�������ß���\�C!*`��dl�{9��^�t���jЊ�^{��o�Jo�j�:i���\�x!�2!f$š05���q���&|�E%����虺M.�Z ��r8XXR����cy����՘(��,PZ��[ѣ��v4י�p8X�);���,�db8�� U��$	��N[���4�J��x�����f���ǧg�p��	43��o�B �!I�gfbq�,,,)����ѹ/�������4�\M����\>�� x�ᐘ�����l̚���d�%' -9��8;����j�z�hh�������&J6�o�vBƁ��n4�u��y� ���p	CVj�d��%dpHb�b� 	E��mK;h�8`�Za���8.L���~��j����QkУ�F�Ic*�v0,ˢ�O��ȇ��� x�oɎ1mk$�y&��oX���Ѷ}$�^�D����Ĉ>ڶ�����L5yF�1&ﶥL��p=6���ѹ�#t�ۖCr>$��� \Jb����nm���Gh���	0T�GI���J��?ܯ�-�Ȅ��15���Mݠi�}��Զ_E?k����;l����4F��̃px���~ִK�~�in�9��/���)(Ktll#x(�����^6Ԟ�   8��e�g�b�:�pmq��`4�<ADb�ň ,�y��{<�V�z��m�f�vK�]�*[,W^�"H|�\~t�wc|h�
�b;Z�2kU�Z+��x8�1�>E6�3F@�`$�˂���F�CrCA��X��p��Рmf��F�,n� ^%0��w]?{��FL�F��T��Ģ�,�<� ���?�$Qeҩ7i�;�-lG��R��"Y�^�XʇS��#�DX �1t���Ā��?̸�7O�rFVR�_p��� ��5#�h�y����UK���;~}����R����5�����s "`��	�Tc��R4[�!��u�Q��Ϫm�8���r|Uj�;�    IEND�B`�  ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Color Bluff    application/run/main_scene         res://Level.tscn   application/config/icon         res://icon.png     display/window/size/resizable             display/window/stretch/mode         2d     display/window/stretch/aspect         keep   physics/2d/default_gravity          $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres       