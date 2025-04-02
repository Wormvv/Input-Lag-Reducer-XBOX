GDPC                �                                                                      	   P   .godot/exported/133200997/export-21a49e14a0c58d7941d04142a5bf9ddc-main_scene.scn        a      
PþJ5h�-+(]Yu+'    $   .godot/global_script_class_cache.cfg�*             9>�ʱ�p�˛OL�7u    @   .godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex         f      ���.��
>`��u       .godot/uid_cache.bin�.      m       ?c��|�0}�_"��A@       icon.svg�*      �      �W|��/�\�pF[       icon.svg.import �)      �       ϶N�k`	�zu����       project.binary  0/      m      N��1�����`6���       scenes/main_scene.tscn.remapP*      g       kFM���9l�.��P       scripts/main_scene.gd   p      �      �䛽�j�
�+�֋T�    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://scripts/main_scene.gd &FL7�u      local://PackedScene_kkkrr          PackedScene          	         names "   *      AppMain    process_mode    script    Node2D    AppTitleText    offset_right    offset_bottom )   theme_override_font_sizes/bold_font_size    bbcode_enabled    text    fit_content    horizontal_alignment    vertical_alignment    metadata/_edit_use_anchors_    RichTextLabel    FPSText    visible    offset_left    offset_top    RefreshRateText    TimeElapsedText    SetMaxFPSText    size_flags_horizontal    size_flags_vertical    SetMaxFPSLineEdit $   theme_override_font_sizes/font_size    placeholder_text 
   alignment 	   LineEdit    ApplyMaxFPSButton    Button    SetTimeScaleText    TimeScaleOf1Button    TimeScaleOf2Button    TimeScaleOf3Button    TimeScaleOf4Button !   _on_apply_max_fps_button_pressed    pressed #   _on_time_scale_of_1_button_pressed #   _on_time_scale_of_2_button_pressed #   _on_time_scale_of_3_button_pressed #   _on_time_scale_of_4_button_pressed    	   variants    6                        �D     6C   2               [b][u]INPUT LAG REDUCER XBOX                  ��C     �B     �D     �C   
   [b]FPS: 0      eC     C    ��D    ��C      [b]REFRESH RATE: 0      iC     ^C    `�D     �C      [b]ELAPSED TIME: 0      �C    �#D     �C            [b][u]SET MAX FPS      �C    �"D    @D            120    #   EXAMPLES - "120" or "144" or "240"     �D    �"D      APPLY     �eD     �C   -         [b][u]TIME SCALE      �C     �C    @D    ��C      1      �C    ��C      2     �D    �aD      3       4       node_count             nodes     1  ��������       ����                                  ����	                           	      
                                          ����            	      
                           	      
                                    ����                                             	      
                                    ����                                             	      
                                    ����                                                         	      
                              ����	                                        	   !      "                           ����                  #            $         	   %                     ����      	            &      '                  (         	   )   
                               ����      *      +      ,      -         	   .                  !   ����      *      /      ,      0         	   1                  "   ����      2      +      3      -         	   4                  #   ����      2      /      3      0         	   5             conn_count             conns     #          %   $              	       %   &              
       %   '                     %   (                     %   )                    node_paths              editable_instances              version             RSRC               extends Node2D

var thread_1 : Thread = Thread.new()
var thread_2 : Thread = Thread.new()
var thread_3 : Thread = Thread.new()
var thread_4 : Thread = Thread.new()
var thread_5 : Thread = Thread.new()
var thread_6 : Thread = Thread.new()
var thread_7 : Thread = Thread.new()
var thread_8 : Thread = Thread.new()
var thread_9 : Thread = Thread.new()
var thread_10 : Thread = Thread.new()
var thread_11 : Thread = Thread.new()
var thread_12 : Thread = Thread.new()

var thread_semaphore : Semaphore = Semaphore.new()

#var refresh_rate : int = 0

#var current_fps : int = 0
#var time_elapsed = 0

@onready var refresh_rate_text: RichTextLabel = $RefreshRateText
@onready var fps_text: RichTextLabel = $FPSText
@onready var time_elapsed_text: RichTextLabel = $TimeElapsedText


func _ready() -> void:
	Engine.time_scale = 1.0
	Engine.max_fps = 0
	
	thread_semaphore.post(12)
	
	thread_1.start(_my_thread_loop.bind(1))
	thread_2.start(_my_thread_loop.bind(2))
	thread_3.start(_my_thread_loop.bind(3))
	thread_4.start(_my_thread_loop.bind(4))
	thread_5.start(_my_thread_loop.bind(5))
	thread_6.start(_my_thread_loop.bind(6))
	thread_7.start(_my_thread_loop.bind(7))
	thread_8.start(_my_thread_loop.bind(8))
	thread_9.start(_my_thread_loop.bind(9))
	thread_10.start(_my_thread_loop.bind(10))
	thread_11.start(_my_thread_loop.bind(11))
	thread_12.start(_my_thread_loop.bind(12))

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	pass

func _my_thread_loop(number):
	thread_semaphore.wait()
	#print(str(number) + " is starting.")
	
	var loop_counter = 0
	while loop_counter < 10000000:
		#current_fps = Engine.get_frames_per_second()
		Engine.physics_ticks_per_second = Engine.get_frames_per_second()
		
		loop_counter += 1
		#time_elapsed += 1
		
		#call_deferred("_update_fps_ui", roundi(current_fps))
		#call_deferred("_update_elapsed_time_ui", roundi(time_elapsed))
		
		#refresh_rate = DisplayServer.screen_get_refresh_rate(0)
		#call_deferred("_update_refresh_rate_ui", roundi(refresh_rate))
		
		#print("MEMORY USAGE: " + str(OS.get_static_memory_usage()))
		
		OS.delay_msec(1.0)
		#await get_tree().create_timer(1.0).timeout
	
	#print(str(number) + " is leaving.")
	
	thread_1.wait_to_finish()
	thread_2.wait_to_finish()
	thread_3.wait_to_finish()
	thread_4.wait_to_finish()
	thread_5.wait_to_finish()
	thread_6.wait_to_finish()
	thread_7.wait_to_finish()
	thread_8.wait_to_finish()
	thread_9.wait_to_finish()
	thread_10.wait_to_finish()
	thread_11.wait_to_finish()
	thread_12.wait_to_finish()
	
	thread_semaphore.post(12)

func _update_fps_ui(fps):
	fps_text.text = "[b]FPS: " + str(fps)

func _update_elapsed_time_ui(elapsed_time):
	time_elapsed_text.text = "[b]ELAPSED TIME: " + str(elapsed_time)

#func _update_refresh_rate_ui(refresh_rate):
#	#refresh_rate = Performance.get_monitor(Performance.TIME_FPS)
#	if refresh_rate < 0:
#		refresh_rate = current_fps
#		current_fps = refresh_rate
#		refresh_rate_text.text = "[b]REFRESH RATE: UNAVAILABLE"
#	else:
#		refresh_rate = current_fps
#		current_fps = refresh_rate
#		refresh_rate_text.text = "[b]REFRESH RATE: " + str(refresh_rate)
	
	#if refresh_rate < 0:
	#	refresh_rate_text.text = "[b]REFRESH RATE: UNAVAILABLE"
	#else:
	#	refresh_rate_text.text = "[b]REFRESH RATE: " + str(refresh_rate)

func _exit_tree() -> void:
	pass

func _on_time_scale_of_1_button_pressed() -> void:
	Engine.set_time_scale(1.0)
	print(Engine.time_scale)

func _on_time_scale_of_2_button_pressed() -> void:
	Engine.set_time_scale(2.0)
	print(Engine.time_scale)

func _on_time_scale_of_3_button_pressed() -> void:
	Engine.set_time_scale(3.0)
	print(Engine.time_scale)

func _on_time_scale_of_4_button_pressed() -> void:
	Engine.set_time_scale(4.0)
	print(Engine.time_scale)
            GST2   �   �      ����               � �        .  RIFF&  WEBPVP8L  /������!"2�Hrl�m�T����^�$G�A�A8��U���i�;��$I����'cp��uwu��$ɲ��PTNuƌ�k������e��
p(!ڂ'=���S���̢C�mz���HI������ڶ�$�U�m<�c��c�Ծc�Z��n�m��Q�����:�W�ض�$��H�6e��i���h�V���{��NO��$!��Ց`��mI=�;���{��JQ�`�йHR�u1ֳ�]���b���)=��j<���E2b�Y���RB�jQNR[G*�b}PϪ2��f(T��@gI�+�l��f�Q�4���Y��	�F��b%�إۃ�g��b�8{[ųƃ/io�-�	|אe3�(�L��[���N�Wtc����� ޛ�Z@���(��g�_�w���[�&p �jQ�Zh,�J.�
4���E*����]�KEQت�-�!>�=��*o�6��������+�t�� }����N�'����6�'���"7{E�.������W��4�SJ�8k����P������WZ��/���*��/�5ӑG�nO)�7"a6d�S���e���R�@���}IgodIa�&�/q>a.��ڔ�����YK!���0kW}���)�n����+T�Ÿy�aI�����D�HıƄ^,�H�)g��^j��b�6���
�@�Tʲ����Ԃ��B�UN�%$Q�����I�I�_Uj�X[;|pK:�V�b�6w�%,�g	�*�R�~���XQ%�M���P������[�(w˔�PR%
�+��b��/
Kh��/P'G�Q���)��8&k<�)n>�4�bZ�mxZ���v�x����B��{�G�d�f�c.�w�a����]a�s*��Y�OTDZD��v�M�Q��P����5�'�s����L[���oe���×a�n��j����������N�G�'u!׊3�8�m��R\�m�����ꡰdRjg��RR)b�m�|�F�\�<u������Q������<�ص^qQ�]�U��j�,�,2V����.]��s�O�bPX4�SύoX�<����@�r�PkkSX6��+>���Iq<~I�9!W�C��+,	-��<8�d�DV����rw�g��R��rz�TgW�t��8?e�Demm�����Md}��㾷vՋiͺ��J�,�-"*�m�R��@<�\D�a)U�+����hہ��	y��k�����W>��}��� �xpn{��31�l/��/h� ����h-w�]�G��1d��.�� �,�i�����~T\����6�%�6ˀ�u;��>�͎���f����Z5SyT	��'��>��@{�G���� �t%{G[�σT�j�b��=��v"GbM�O� w�oP�|����Т����_�FJ�m�4�����Bho���$�H��;�3� �F��ƌ���J ��d��'�U9��D�7�7��a?H�ڥ�"��6��3��ؑX�t"`���F`y���Z-�Ot&�0{��Nlrf�#1�� No�{uU��^ G�~��P�1�9��"�pPL-���I~T�j�ǀ3;C�� X��\9_�L%1�� �6Ƹ�˒ �A�|"��Έ`��23D�O �;�q�=~ �!��mD�"��� NĀ8",�Ԧ�5K���	�F�P�5�A�u��I�����\@� v.��s�)��k�J�Ͽb�{����Q�@��'�^~}�.mǁk-r�!�*!�	P�?�m3��_�3�Q�L":��j�K��73�
K@�荋"�;�r$�"� �'Z�}s�A�}w���WY��� �*;=����n2��*߁%@�������>x</���	��b��j@��L�T�/X�s{��{�T\�񥣠ۃ��4Iq�h88�������8ꛤ���8���T�V�C�4I��p8��Nm�C�q�7K'mn2^�����j���k��+��g���,�΋�|03+;6i�g�1��a=�"P��Vu�6恱�vӫj�!�q��_��/�!5~~��������8PGW�.׍��;�.�Y������8�|�|���Hh�~���Ȳ�o����ó���?��������:{Ŵ*ǥ�x����z�ko̳���{��ߞ'�����\��&)���xw�h{&��ua����$���R����^�@.�����ΞF����������d�㽱W_��������l�üHލx�x�|)oԹ�����ܲ��v���׹�s��a�/��5�V���^��iش6�'�Y>Y���jϬHG# �k��M+�Gj��J)��0�.m�uf�U9`Iq�5��/k�mȎ����Ti6�����I:A�̞�^]���)�Q۝������<�N�R%8��/���J 5�_�R�{��>
>oz��'7���n��١1f�Ex}`ܿ�s{5ҙf�~���U'6�Mț�����U������^4EG:����j��ڔ� Fr�$1����*kV=o�A�	Ijpha1{��W�p�F����>��nMȰ:�}ؘg~����G�噝�|���G����S~��ɖkb~.=����[	@j��d������q�y��s�$����e�g�Z����t&z�iNR%���)a{
r�6�cn�N�K�G�����5�';��<zŅ�>,TV�;�v�ү�7�ķ���/�ß�w�Ï�/��^q,W��׻s���ݔ�pկ�������9�y�����������o��q����j�����7~�e�%�0����$��#�)�$�d��T��:�ɹ�? v1��6�Z�]���e�R)}�f�ur�N9S�g�dk�>����0�J��J��qt�W���tOM�p��X���^	Y*m�d�G��[����lR�_:�n#�n�rH����Z�ޮ��*�(�i��n�G]�_:��:�_�=��w�ٰ��.f߮�t�6m̾�u��{��n}��31�ԕ7�<����V�+�FCQD�g�^99����q�W��4�S�c��+�F�7�3�M���O�+�`��E����蓍o�x�wh�ŚX��έb>�ڒE=�zVHl�'ou����QY��D=�z�e���m��.iB�,� �}^�cZg��b����%�4S4S4S5�=/�6�����Vw79�)���%�h�0�k��7li��<9��؟��\�-��ߢ5��\�T��̢��J��F�T`AQ��?�9p��Qd3 @تR� ?� �c���A9b"�%�d�"lA�����SEm��(����XoF4��nn�9��h          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://y0irgcn4yh4g"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 [remap]

path="res://.godot/exported/133200997/export-21a49e14a0c58d7941d04142a5bf9ddc-main_scene.scn"
         list=[]
        <svg xmlns="http://www.w3.org/2000/svg" width="128" height="128"><rect width="124" height="124" x="2" y="2" fill="#363d52" stroke="#212532" stroke-width="4" rx="14"/><g fill="#fff" transform="translate(12.322 12.322)scale(.101)"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042" transform="translate(12.322 12.322)scale(.101)"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></svg>                 ��l� �   res://scenes/main_scene.tscn&FL7�u   res://scripts/main_scene.gd,��DX�   res://icon.svg   ECFG      application/config/name          Input Lag Reducer XBOX     application/run/main_scene         uid://uo8rt0mwwbay  &   application/config/use_custom_user_dir         '   application/config/custom_user_dir_name$         InputLagReducerXBOXDirectory   application/config/features(   "         4.4    GL Compatibility       application/config/icon         res://icon.svg  "   display/window/size/viewport_width         #   display/window/size/viewport_height      �     display/window/size/mode            display/window/size/resizable          )   display/window/size/window_width_override      @  *   display/window/size/window_height_override      �      display/window/stretch/mode         canvas_items   display/window/vsync/vsync_mode          ,   input_devices/buffering/agile_event_flushing         '   physics/common/physics_ticks_per_second      �  *   physics/common/max_physics_steps_per_frame         !   physics/common/physics_jitter_fix     {�G�z�?4   rendering/textures/vram_compression/import_etc2_astc         "   rendering/environment/ssil/quality          *   rendering/environment/ssil/adaptive_target          '   rendering/environment/glow/upscale_mode          ?   rendering/environment/screen_space_reflection/roughness_quality          I   rendering/environment/subsurface_scattering/subsurface_scattering_quality          /   rendering/environment/volumetric_fog/use_filter          <   rendering/limits/spatial_indexer/update_iterations_per_frame      �  2   rendering/environment/defaults/default_clear_color      @>3�V>���>  �?   