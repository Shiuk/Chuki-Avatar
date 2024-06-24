Shader "Hidden/Locked/.poiyomi/Poiyomi 8.0/Poiyomi Toon/a7f5168d28089214c8fbf7ebb21fc851"
{
	Properties
	{
		[HideInInspector] shader_master_label ("<color=#E75898ff>Poiyomi 8.0.426</color>", Float) = 0
		[HideInInspector] shader_is_using_thry_editor ("", Float) = 0
		[HideInInspector] footer_youtube ("{texture:{name:icon-youtube,height:16},action:{type:URL,data:https://www.youtube.com/poiyomi},hover:YOUTUBE}", Float) = 0
		[HideInInspector] footer_twitter ("{texture:{name:icon-twitter,height:16},action:{type:URL,data:https://twitter.com/poiyomi},hover:TWITTER}", Float) = 0
		[HideInInspector] footer_patreon ("{texture:{name:icon-patreon,height:16},action:{type:URL,data:https://www.patreon.com/poiyomi},hover:PATREON}", Float) = 0
		[HideInInspector] footer_discord ("{texture:{name:icon-discord,height:16},action:{type:URL,data:https://discord.gg/Ays52PY},hover:DISCORD}", Float) = 0
		[HideInInspector] footer_github ("{texture:{name:icon-github,height:16},action:{type:URL,data:https://github.com/poiyomi/PoiyomiToonShader},hover:GITHUB}", Float) = 0
		[HideInInspector] _ForgotToLockMaterial (";;YOU_FORGOT_TO_LOCK_THIS_MATERIAL;", Int) = 1
		[ThryShaderOptimizerLockButton] _ShaderOptimizerEnabled ("", Int) = 1
		[Helpbox(1)] _LockTooltip ("Animations don't work by default when locked in. Right click a property if you want to animate it. The shader will lock in automatically at upload time.", Int) = 0
		[ThryWideEnum(Opaque, 0, Cutout, 1, TransClipping, 9, Fade, 2, Transparent, 3, Additive, 4, Soft Additive, 5, Multiplicative, 6, 2x Multiplicative, 7)]_Mode("Rendering Preset--{on_value_actions:[
		{value:0,actions:[{type:SET_PROPERTY,data:render_queue=2000}, {type:SET_PROPERTY,data:render_type=Opaque},            {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:1,actions:[{type:SET_PROPERTY,data:render_queue=2450}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=.5}, {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_AlphaToMask=1},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:9,actions:[{type:SET_PROPERTY,data:render_queue=2450}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:2,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:3,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=1}]},
		{value:4,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:5,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:RenderType=Transparent},        {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=4}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:6,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:7,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=3},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]}
		}]}]}", Int) = 0
		[HideInInspector] m_mainCategory ("Color & Normals--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/color-and-normals/main},hover:Documentation}}", Float) = 0
		_Color ("Color & Alpha--{reference_property:_ColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _ColorThemeIndex ("", Int) = 0
		_MainTex ("Texture--{reference_properties:[_MainTexPan, _MainTexUV, _MainPixelMode]}", 2D) = "white" { }
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _MainTexUV ("UV", Int) = 0
		[HideInInspector][Vector2]_MainTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ToggleUI]_MainPixelMode ("Pixel Mode", Float) = 0
		[Normal]_BumpMap ("Normal Map--{reference_properties:[_BumpMapPan, _BumpMapUV, _BumpScale]}", 2D) = "bump" { }
		[HideInInspector][Vector2]_BumpMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _BumpMapUV ("UV", Int) = 0
		[HideInInspector]_BumpScale ("Intensity", Range(0, 10)) = 1
		_ClippingMask ("Alpha Map--{reference_properties:[_ClippingMaskPan, _ClippingMaskUV, _Inverse_Clipping]}", 2D) = "white" { }
		[HideInInspector][Vector2]_ClippingMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _ClippingMaskUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Inverse_Clipping ("Invert", Float) = 0
		_Cutoff ("Alpha Cutoff", Range(0, 1.001)) = 0.5
		//ifex _MainColorAdjustToggle==0
		[HideInInspector] m_start_MainHueShift ("Color Adjust--{reference_property:_MainColorAdjustToggle,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/color-and-normals/color-adjust},hover:Documentation}}", Float) = 0
		[HideInInspector][ThryToggle(COLOR_GRADING_HDR)] _MainColorAdjustToggle ("Adjust Colors", Float) = 0
		[ThryRGBAPacker(R Hue Mask, G Brightness Mask, B Saturation Mask, A Nothing)]_MainColorAdjustTexture ("Mask (Expand)--{reference_properties:[_MainColorAdjustTexturePan, _MainColorAdjustTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_MainColorAdjustTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _MainColorAdjustTextureUV ("UV", Int) = 0
		_Saturation ("Saturation", Range(-1, 10)) = 0
		_MainBrightness ("Brightness", Range(-1, 1)) = 0
		[ThryToggleUI(true)] _MainHueShiftToggle ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		[ToggleUI]_MainHueShiftReplace ("Hue Replace?--{condition_showS:(_MainHueShiftToggle==1)}", Float) = 1
		_MainHueShift ("Hue Shift--{condition_showS:(_MainHueShiftToggle==1)}", Range(0, 1)) = 0
		_MainHueShiftSpeed ("Hue Shift Speed--{condition_showS:(_MainHueShiftToggle==1)}", Float) = 0
		[Space(4)]
		[ThryToggleUI(true)]_MainHueALCTEnabled ("<size=13><b>  Hue Shift Audio Link</b></size>--{condition_showS:(_MainHueShiftToggle==1 && _EnableAudioLink==1)}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)]_MainALHueShiftBand ("Band--{condition_showS:(_MainHueShiftToggle==1 && _EnableAudioLink==1 && _MainHueALCTEnabled==1)}", Int) = 0
		[ThryWideEnum(Motion increases as intensity of band increases, 0, Above but Smooth, 1, Motion moves back and forth as a function of intensity, 2, Above but Smoooth, 3, Fixed speed increase when the band is dark Stationary when light, 4, Above but Smooooth, 5, Fixed speed increase when the band is dark Fixed speed decrease when light, 6, Above but Smoooooth, 7)]_MainALHueShiftCTIndex ("Motion Type--{condition_showS:(_MainHueShiftToggle==1 && _EnableAudioLink==1 && _MainHueALCTEnabled==1)}", Int) = 0
		_MainHueALMotionSpeed ("Motion Speed--{condition_showS:(_MainHueShiftToggle==1 && _EnableAudioLink==1 && _MainHueALCTEnabled==1)}", Float) = 1
		[HideInInspector] m_end_MainHueShift ("Hue Shift", Float) = 0
		[HideInInspector] m_start_Alpha ("Alpha Options--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/color-and-normals/alpha-options},hover:Documentation}}", Float) = 0
		[ToggleUI]_AlphaForceOpaque ("Force Opaque", Float) = 0
		_AlphaMod ("Alpha Mod", Range(-1, 1)) = 0.0
		[ToggleUI]_AlphaPremultiply ("Alpha Premultiply", Float) = 0
		_AlphaBoostFA ("Boost Transparency in ForwardAdd--{condition_showS:(_AddBlendOp==4)}", Range(1, 100)) = 10
		[HideInInspector] m_end_Alpha ("Alpha Options", Float) = 0
		//ifex _DetailEnabled==0
		[HideInInspector] m_start_DetailOptions ("Details--{reference_property:_DetailEnabled,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/color-and-normals/details},hover:Documentation}}", Float) = 0
		[HideInInspector][ThryToggle(FINALPASS)]_DetailEnabled ("Enable", Float) = 0
		[ThryRGBAPacker(R Texture Mask, G Normal Mask, B Nothing, A Nothing)]_DetailMask ("Detail Mask (Expand)--{reference_properties:[_DetailMaskPan, _DetailMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DetailMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DetailMaskUV ("UV", Int) = 0
		_DetailTint ("Detail Texture Tint--{reference_property:_DetailTintThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DetailTintThemeIndex ("", Int) = 0
		_DetailTex ("Detail Texture--{reference_properties:[_DetailTexPan, _DetailTexUV]}", 2D) = "gray" { }
		[HideInInspector][Vector2]_DetailTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DetailTexUV ("UV", Int) = 0
		_DetailTexIntensity ("Detail Tex Intensity", Range(0, 10)) = 1
		_DetailBrightness ("Detail Brightness:", Range(0, 2)) = 1
		[Normal]_DetailNormalMap ("Detail Normal--{reference_properties:[_DetailNormalMapPan, _DetailNormalMapUV, _DetailNormalMapScale]}", 2D) = "bump" { }
		[HideInInspector]_DetailNormalMapScale ("Detail Normal Intensity", Range(0, 10)) = 1
		[HideInInspector][Vector2]_DetailNormalMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DetailNormalMapUV ("UV", Int) = 0
		[HideInInspector] m_end_DetailOptions ("Details", Float) = 0
		//ifex _RGBMaskEnabled==0
		[HideInInspector] m_start_RGBMask ("RGBA Color Masking--{reference_property:_RGBMaskEnabled,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/color-and-normals/rgba-color-masking},hover:Documentation}}", Float) = 0
		[HideInInspector][ThryToggle(VIGNETTE)]_RGBMaskEnabled ("RGB Mask Enabled", Float) = 0
		[ToggleUI]_RGBUseVertexColors ("Use Vertex Colors", Float) = 0
		[ToggleUI]_RGBBlendMultiplicative ("Multiplicative?", Float) = 0
		[ThryRGBAPacker(R Mask,G Mask,B Mask,A Mask)]_RGBMask ("Mask--{reference_properties:[_RGBMaskPan, _RGBMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_RGBMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RGBMaskUV ("UV", int) = 0
		_RedColor ("R Color--{reference_property:_RedColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _RedColorThemeIndex ("", Int) = 0
		_RedTexture ("R Texture--{reference_properties:[_RedTexturePan, _RedTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_RedTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RedTextureUV ("UV", int) = 0
		_RedAlphaAdd ("R Alpha Add", Range(-1,1)) = 0
		_GreenColor ("G Color--{reference_property:_GreenColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _GreenColorThemeIndex ("", Int) = 0
		_GreenTexture ("G Texture--{reference_properties:[_GreenTexturePan, _GreenTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_GreenTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_GreenTextureUV ("UV", int) = 0
		_GreenAlphaAdd ("G Alpha Add", Range(-1,1)) = 0
		_BlueColor ("B Color--{reference_property:_BlueColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _BlueColorThemeIndex ("", Int) = 0
		_BlueTexture ("B Texture--{reference_properties:[_BlueTexturePan, _BlueTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_BlueTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_BlueTextureUV ("UV", int) = 0
		_BlueAlphaAdd ("B Alpha Add", Range(-1,1)) = 0
		_AlphaColor ("A Color--{reference_property:_AlphaColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _AlphaColorThemeIndex ("", Int) = 0
		_AlphaTexture ("A Texture--{reference_properties:[_AlphaTexturePan, _AlphaTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_AlphaTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_AlphaTextureUV ("UV", int) = 0
		_AlphaAlphaAdd ("A Alpha Add", Range(-1,1)) = 0
		[ThryToggle(GEOM_TYPE_MESH)]_RgbNormalsEnabled ("Enable Normals", Float) = 0
		[ToggleUI]_RGBNormalBlend ("Blend with Base--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Float) = 0
		[Normal]_RgbNormalR ("R Normal--{reference_properties:[_RgbNormalRPan, _RgbNormalRUV],condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", 2D) = "bump" { }
		[HideInInspector][Vector2]_RgbNormalRPan ("Pan", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RgbNormalRUV ("UV", int) = 0
		_RgbNormalRScale ("Intensity--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Range(0, 10)) = 0
		[Normal]_RgbNormalG ("G Normal--{reference_properties:[_RgbNormalGPan, _RgbNormalGUV],condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", 2D) = "bump" { }
		[HideInInspector][Vector2]_RgbNormalGPan ("Pan", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RgbNormalGUV ("UV", int) = 0
		_RgbNormalGScale ("Intensity--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Range(0, 10)) = 0
		[Normal]_RgbNormalB ("B Normal--{reference_properties:[_RgbNormalBPan, _RgbNormalBUV],condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", 2D) = "bump" { }
		[HideInInspector][Vector2]_RgbNormalBPan ("Pan", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RgbNormalBUV ("UV", int) = 0
		_RgbNormalBScale ("Intensity--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Range(0, 10)) = 0
		[Normal]_RgbNormalA ("A Normal--{reference_properties:[_RgbNormalAPan, _RgbNormalAUV],condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", 2D) = "bump" { }
		[HideInInspector][Vector2]_RgbNormalAPan ("Pan", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RgbNormalAUV ("UV", int) = 0
		_RgbNormalAScale ("Intensity--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Range(0, 10)) = 0
		[HideInInspector] m_end_RGBMask ("RGB Color Masking", Float) = 0
		[HideInInspector] m_start_DecalSection ("Decals--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/color-and-normals/decals},hover:YouTube}}", Float) = 0
		[ThryRGBAPacker(Decal 0 Mask, Decal 1 Mask, Decal 2 Mask, Decal 3 Mask)]_DecalMask ("Decal RGBA Mask--{reference_properties:[_DecalMaskPan, _DecalMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalMaskUV ("UV", Int) = 0
		[ThryToggleUI(true)] _DecalTPSDepthMaskEnabled ("<size=13><b>  TPS Depth Enabled</b></size>", Float) = 0
		_Decal0TPSMaskStrength ("Mask r Strength--{condition_showS:(_DecalTPSDepthMaskEnabled==1)}", Range(0, 1)) = 1
		_Decal1TPSMaskStrength ("Mask g Strength--{condition_showS:(_DecalTPSDepthMaskEnabled==1)}", Range(0, 1)) = 1
		_Decal2TPSMaskStrength ("Mask b Strength--{condition_showS:(_DecalTPSDepthMaskEnabled==1)}", Range(0, 1)) = 1
		_Decal3TPSMaskStrength ("Mask a Strength--{condition_showS:(_DecalTPSDepthMaskEnabled==1)}", Range(0, 1)) = 1
		//ifex _DecalEnabled==0
		[HideInInspector] m_start_Decal0 ("Decal 0--{reference_property:_DecalEnabled}", Float) = 0
		[HideInInspector][ThryToggle(GEOM_TYPE_BRANCH)]_DecalEnabled ("Enable", Float) = 0
		[Enum(R, 0, G, 1, B, 2, A, 3)] _Decal0MaskChannel ("Mask Channel", Int) = 0
		_DecalColor ("Color--{reference_property:_DecalColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DecalColorThemeIndex ("", Int) = 0
		_DecalEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_DecalTexture ("Decal--{reference_properties:[_DecalTexturePan, _DecalTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalTextureUV ("UV", Int) = 0
		[ToggleUI]_DecalTiled ("Tiled?", Float) = 0
		_Decal0Depth ("Depth", Float) = 0
		[Vector2]_DecalScale ("Scale", Vector) = (1, 1, 0, 0)
		_DecalSideOffset ("Side Offset ←→↓↑", Vector) = (0, 0, 0, 0)
		[Vector2]_DecalPosition ("Position", Vector) = (.5, .5, 0, 0)
		_DecalRotation ("Rotation", Range(0, 360)) = 0
		_DecalRotationSpeed ("Rotation Speed", Float) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge(Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_DecalBlendType ("Blending", Range(0, 1)) = 0
		_DecalBlendAlpha ("Alpha", Range(0, 1)) = 1
		[ToggleUI]_DecalOverrideAlpha ("Override Alpha", Float) = 0
		[ThryToggleUI(true)]_DecalHueShiftEnabled ("<size=13><b>Hue Shift</b></size>", Float) = 0
		_DecalHueShiftSpeed ("Shift Speed--{condition_showS:(_DecalHueShiftEnabled==1)}", Float) = 0
		_DecalHueShift ("Hue Shift--{condition_showS:(_DecalHueShiftEnabled==1)}", Range(0, 1)) = 0
		_Decal0HueAngleStrength ("Hue Angle Power--{condition_showS:(_DecalHueShiftEnabled==1)}", Float) = 0
		[HideInInspector] m_start_Decal0AudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal0ScaleBand ("Scale Band", Int) = 0
		_AudioLinkDecal0Scale ("Scale Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal0SideBand ("Side Band", Int) = 0
		_AudioLinkDecal0SideMin ("Side Mod Min", Vector) = (0, 0, 0, 0)
		_AudioLinkDecal0SideMax ("Side Mod Max", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal0RotationBand ("Rotation Band", Int) = 0
		[Vector2]_AudioLinkDecal0Rotation ("Rotation Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal0AlphaBand ("Alpha Band", Int) = 0
		[Vector2]_AudioLinkDecal0Alpha ("Alpha Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal0EmissionBand ("Emission Band", Int) = 0
		[Vector2]_AudioLinkDecal0Emission ("Emission Mod", Vector) = (0, 0, 0, 0)
		[ToggleUI]_AudioLinkDecalCC0 ("CC Strip", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _DecalRotationCTALBand0 ("Chrono Rotation Band", Int) = 0
		[ThryWideEnum(Motion increases as intensity of band increases, 0, Above but Smooth, 1, Motion moves back and forth as a function of intensity, 2, Above but Smoooth, 3, Fixed speed increase when the band is dark Stationary when light, 4, Above but Smooooth, 5, Fixed speed increase when the band is dark Fixed speed decrease when light, 6, Above but Smoooooth, 7)]_DecalRotationCTALType0 ("Chrono Motion Type", Int) = 0
		_DecalRotationCTALSpeed0 ("Chrono Rotation Speed", Float) = 0
		[HideInInspector] m_end_Decal0AudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Decal0 ("Decal 0", Float) = 0
		//ifex _DecalEnabled1==0
		[HideInInspector] m_start_Decal1 ("Decal 1--{reference_property:_DecalEnabled1}", Float) = 0
		[HideInInspector][ThryToggle(GEOM_TYPE_BRANCH_DETAIL)]_DecalEnabled1 ("Enable", Float) = 0
		[Enum(R, 0, G, 1, B, 2, A, 3)] _Decal1MaskChannel ("Mask Channel", Int) = 1
		_DecalColor1 ("Color--{reference_property:_DecalColor1ThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DecalColor1ThemeIndex ("", Int) = 0
		_DecalEmissionStrength1 ("Emission Strength", Range(0, 20)) = 0
		_DecalTexture1 ("Decal--{reference_properties:[_DecalTexture1Pan, _DecalTexture1UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalTexture1Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalTexture1UV ("UV", Int) = 0
		[ToggleUI]_DecalTiled1 ("Tiled?", Float) = 0
		_Decal1Depth ("Depth", Float) = 0
		[Vector2]_DecalScale1 ("Scale", Vector) = (1, 1, 0, 0)
		_DecalSideOffset1 ("Side Offset ←→↓↑", Vector) = (0, 0, 0, 0)
		[Vector2]_DecalPosition1 ("Position", Vector) = (.5, .5, 0, 0)
		_DecalRotation1 ("Rotation", Range(0, 360)) = 0
		_DecalRotationSpeed1 ("Rotation Speed", Float) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge(Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_DecalBlendType1 ("Blending", Range(0, 1)) = 0
		_DecalBlendAlpha1 ("Alpha", Range(0, 1)) = 1
		[ToggleUI]_DecalOverrideAlpha1 ("Override Alpha", Float) = 0
		[ThryToggleUI(true)]_DecalHueShiftEnabled1 ("<size=13><b>Hue Shift</b></size>", Float) = 0
		_DecalHueShiftSpeed1 ("Shift Speed--{condition_showS:(_DecalHueShiftEnabled1==1)}", Float) = 0
		_DecalHueShift1 ("Hue Shift--{condition_showS:(_DecalHueShiftEnabled1==1)}", Range(0, 1)) = 0
		_Decal1HueAngleStrength ("Hue Angle Power--{condition_showS:(_DecalHueShiftEnabled1==1)}", Float) = 0
		[HideInInspector] m_start_Decal1AudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal1ScaleBand ("Scale Band", Int) = 0
		_AudioLinkDecal1Scale ("Scale Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal1SideBand ("Side Band", Int) = 0
		_AudioLinkDecal1SideMin ("Side Mod Min", Vector) = (0, 0, 0, 0)
		_AudioLinkDecal1SideMax ("Side Mod Max", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal1RotationBand ("Rotation Band", Int) = 0
		[Vector2]_AudioLinkDecal1Rotation ("Rotation Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal1AlphaBand ("Alpha Band", Int) = 0
		[Vector2]_AudioLinkDecal1Alpha ("Alpha Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal1EmissionBand ("Emission Band", Int) = 0
		[Vector2]_AudioLinkDecal1Emission ("Emission Mod", Vector) = (0, 0, 0, 0)
		[ToggleUI]_AudioLinkDecalCC1 ("CC Strip", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _DecalRotationCTALBand1 ("Chrono Rotation Band", Int) = 0
		[ThryWideEnum(Motion increases as intensity of band increases, 0, Above but Smooth, 1, Motion moves back and forth as a function of intensity, 2, Above but Smoooth, 3, Fixed speed increase when the band is dark Stationary when light, 4, Above but Smooooth, 5, Fixed speed increase when the band is dark Fixed speed decrease when light, 6, Above but Smoooooth, 7)]_DecalRotationCTALType1 ("Chrono Motion Type", Int) = 0
		_DecalRotationCTALSpeed1 ("Chrono Rotation Speed", Float) = 0
		[HideInInspector] m_end_Decal1AudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Decal1 ("Decal 0", Float) = 0
		//ifex _DecalEnabled2==0
		[HideInInspector] m_start_Decal2 ("Decal 2--{reference_property:_DecalEnabled2}", Float) = 0
		[HideInInspector][ThryToggle(GEOM_TYPE_FROND)]_DecalEnabled2 ("Enable", Float) = 0
		[Enum(R, 0, G, 1, B, 2, A, 3)] _Decal2MaskChannel ("Mask Channel", Int) = 2
		_DecalColor2 ("Color--{reference_property:_DecalColor2ThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DecalColor2ThemeIndex ("", Int) = 0
		_DecalEmissionStrength2 ("Emission Strength", Range(0, 20)) = 0
		_DecalTexture2 ("Decal--{reference_properties:[_DecalTexture2Pan, _DecalTexture2UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalTexture2Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalTexture2UV ("UV", Int) = 0
		[ToggleUI]_DecalTiled2 ("Tiled?", Float) = 0
		_Decal2Depth ("Depth", Float) = 0
		[Vector2]_DecalScale2 ("Scale", Vector) = (1, 1, 0, 0)
		_DecalSideOffset2 ("Side Offset ←→↓↑", Vector) = (0, 0, 0, 0)
		[Vector2]_DecalPosition2 ("Position", Vector) = (.5, .5, 0, 0)
		_DecalRotation2 ("Rotation", Range(0, 360)) = 0
		_DecalRotationSpeed2 ("Rotation Speed", Float) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge(Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_DecalBlendType2 ("Blending", Range(0, 1)) = 0
		_DecalBlendAlpha2 ("Alpha", Range(0, 1)) = 1
		[ToggleUI]_DecalOverrideAlpha2 ("Override Alpha", Float) = 0
		[ThryToggleUI(true)]_DecalHueShiftEnabled2 ("<size=13><b>Hue Shift</b></size>", Float) = 0
		_DecalHueShiftSpeed2 ("Shift Speed--{condition_showS:(_DecalHueShiftEnabled2==1)}", Float) = 0
		_DecalHueShift2 ("Hue Shift--{condition_showS:(_DecalHueShiftEnabled2==1)}", Range(0, 1)) = 0
		_Decal2HueAngleStrength ("Hue Angle Power--{condition_showS:(_DecalHueShiftEnabled2==1)}", Float) = 0
		[HideInInspector] m_start_Decal2AudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal2ScaleBand ("Scale Band", Int) = 0
		_AudioLinkDecal2Scale ("Scale Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal2SideBand ("Side Band", Int) = 0
		_AudioLinkDecal2SideMin ("Side Mod Min", Vector) = (0, 0, 0, 0)
		_AudioLinkDecal2SideMax ("Side Mod Max", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal2RotationBand ("Rotation Band", Int) = 0
		[Vector2]_AudioLinkDecal2Rotation ("Rotation Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal2AlphaBand ("Alpha Band", Int) = 0
		[Vector2]_AudioLinkDecal2Alpha ("Alpha Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal2EmissionBand ("Emission Band", Int) = 0
		[Vector2]_AudioLinkDecal2Emission ("Emission Mod", Vector) = (0, 0, 0, 0)
		[ToggleUI]_AudioLinkDecalCC2 ("CC Strip", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _DecalRotationCTALBand2 ("Chrono Rotation Band", Int) = 0
		[ThryWideEnum(Motion increases as intensity of band increases, 0, Above but Smooth, 1, Motion moves back and forth as a function of intensity, 2, Above but Smoooth, 3, Fixed speed increase when the band is dark Stationary when light, 4, Above but Smooooth, 5, Fixed speed increase when the band is dark Fixed speed decrease when light, 6, Above but Smoooooth, 7)]_DecalRotationCTALType2 ("Chrono Motion Type", Int) = 0
		_DecalRotationCTALSpeed2 ("Chrono Rotation Speed", Float) = 0
		[HideInInspector] m_end_Decal2AudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Decal2 ("Decal 0", Float) = 0
		//ifex _DecalEnabled3==0
		[HideInInspector] m_start_Decal3 ("Decal 3--{reference_property:_DecalEnabled3}", Float) = 0
		[HideInInspector][ThryToggle(DEPTH_OF_FIELD_COC_VIEW)]_DecalEnabled3 ("Enable", Float) = 0
		[Enum(R, 0, G, 1, B, 2, A, 3)] _Decal3MaskChannel ("Mask Channel", Int) = 3
		_DecalColor3 ("Color--{reference_property:_DecalColor3ThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DecalColor3ThemeIndex ("", Int) = 0
		_DecalEmissionStrength3 ("Emission Strength", Range(0, 20)) = 0
		_DecalTexture3 ("Decal--{reference_properties:[_DecalTexture3Pan, _DecalTexture3UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalTexture3Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalTexture3UV ("UV", Int) = 0
		[ToggleUI]_DecalTiled3 ("Tiled?", Float) = 0
		_Decal3Depth ("Depth", Float) = 0
		[Vector2]_DecalScale3 ("Scale", Vector) = (1, 1, 0, 0)
		_DecalSideOffset3 ("Side Offset ←→↓↑", Vector) = (0, 0, 0, 0)
		[Vector2]_DecalPosition3 ("Position", Vector) = (.5, .5, 0, 0)
		_DecalRotation3 ("Rotation", Range(0, 360)) = 0
		_DecalRotationSpeed3 ("Rotation Speed", Float) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge(Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_DecalBlendType3 ("Blending", Range(0, 1)) = 0
		_DecalBlendAlpha3 ("Alpha", Range(0, 1)) = 1
		[ToggleUI]_DecalOverrideAlpha3 ("Override Alpha", Float) = 0
		[ThryToggleUI(true)]_DecalHueShiftEnabled3 ("<size=13><b>Hue Shift</b></size>", Float) = 0
		_DecalHueShiftSpeed3 ("Shift Speed--{condition_showS:(_DecalHueShiftEnabled3==1)}", Float) = 0
		_DecalHueShift3 ("Hue Shift--{condition_showS:(_DecalHueShiftEnabled3==1)}", Range(0, 1)) = 0
		_Decal3HueAngleStrength ("Hue Angle Power--{condition_showS:(_DecalHueShiftEnabled3==1)}", Float) = 0
		[HideInInspector] m_start_Decal3AudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3ScaleBand ("Scale Band", Int) = 0
		_AudioLinkDecal3Scale ("Scale Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3SideBand ("Side Band", Int) = 0
		_AudioLinkDecal3SideMin ("Side Mod Min", Vector) = (0, 0, 0, 0)
		_AudioLinkDecal3SideMax ("Side Mod Max", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3RotationBand ("Rotation Band", Int) = 0
		[Vector2]_AudioLinkDecal3Rotation ("Rotation Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3AlphaBand ("Alpha Band", Int) = 0
		[Vector2]_AudioLinkDecal3Alpha ("Alpha Mod", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3EmissionBand ("Emission Band", Int) = 0
		[Vector2]_AudioLinkDecal3Emission ("Emission Mod", Vector) = (0, 0, 0, 0)
		[ToggleUI]_AudioLinkDecalCC3 ("CC Strip", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _DecalRotationCTALBand3 ("Chrono Rotation Band", Int) = 0
		[ThryWideEnum(Motion increases as intensity of band increases, 0, Above but Smooth, 1, Motion moves back and forth as a function of intensity, 2, Above but Smoooth, 3, Fixed speed increase when the band is dark Stationary when light, 4, Above but Smooooth, 5, Fixed speed increase when the band is dark Fixed speed decrease when light, 6, Above but Smoooooth, 7)]_DecalRotationCTALType3 ("Chrono Motion Type", Int) = 0
		_DecalRotationCTALSpeed3 ("Chrono Rotation Speed", Float) = 0
		[HideInInspector] m_end_Decal3AudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Decal3 ("Decal 0", Float) = 0
		[HideInInspector] m_end_DecalSection ("Decal", Float) = 0
		[HideInInspector] m_start_GlobalThemes ("Global Themes--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/color-and-normals/global-themes},hover:Documentation}}", Float) = 0
		[HDR]_GlobalThemeColor0 ("Color 0", Color) = (1, 1, 1, 1)
		[HDR]_GlobalThemeColor1 ("Color 1", Color) = (1, 1, 1, 1)
		[HDR]_GlobalThemeColor2 ("Color 2", Color) = (1, 1, 1, 1)
		[HDR]_GlobalThemeColor3 ("Color 3", Color) = (1, 1, 1, 1)
		[HideInInspector] m_end_GlobalThemes ("Global Themes", Float) = 0
		[HideInInspector] m_lightingCategory ("Shading", Float) = 0
		[HideInInspector] m_start_PoiLightData ("Light Data--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/shading/light-data},hover:Documentation}}", Float) = 0
		_LightingAOMaps ("AO Maps (expand)--{reference_properties:[_LightingAOMapsPan, _LightingAOMapsUV,_LightDataAOStrengthR,_LightDataAOStrengthG,_LightDataAOStrengthB,_LightDataAOStrengthA]}", 2D) = "white" { }
		[HideInInspector][Vector2]_LightingAOMapsPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _LightingAOMapsUV ("UV", Int) = 0
		[HideInInspector]_LightDataAOStrengthR ("R Strength", Range(0, 1)) = 1
		[HideInInspector]_LightDataAOStrengthG ("G Strength", Range(0, 1)) = 0
		[HideInInspector]_LightDataAOStrengthB ("B Strength", Range(0, 1)) = 0
		[HideInInspector]_LightDataAOStrengthA ("A Strength", Range(0, 1)) = 0
		_LightingDetailShadowMaps ("Detail Shadows (expand)--{reference_properties:[_LightingDetailShadowMapsPan, _LightingDetailShadowMapsUV,_LightingDetailShadowStrengthR,_LightingDetailShadowStrengthG,_LightingDetailShadowStrengthB,_LightingDetailShadowStrengthA,_LightingAddDetailShadowStrengthR,_LightingAddDetailShadowStrengthG,_LightingAddDetailShadowStrengthB,_LightingAddDetailShadowStrengthA]}", 2D) = "white" { }
		[HideInInspector][Vector2]_LightingDetailShadowMapsPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _LightingDetailShadowMapsUV ("UV", Int) = 0
		[HideInInspector]_LightingDetailShadowStrengthR ("R Strength", Range(0, 1)) = 1
		[HideInInspector]_LightingDetailShadowStrengthG ("G Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingDetailShadowStrengthB ("B Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingDetailShadowStrengthA ("A Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingAddDetailShadowStrengthR ("Additive R Strength", Range(0, 1)) = 1
		[HideInInspector]_LightingAddDetailShadowStrengthG ("Additive G Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingAddDetailShadowStrengthB ("Additive B Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingAddDetailShadowStrengthA ("Additive A Strength", Range(0, 1)) = 0
		_LightingShadowMasks ("Shadow Masks (expand)--{reference_properties:[_LightingShadowMasksPan, _LightingShadowMasksUV,_LightingShadowMaskStrengthR,_LightingShadowMaskStrengthG,_LightingShadowMaskStrengthB,_LightingShadowMaskStrengthA]}", 2D) = "white" { }
		[HideInInspector][Vector2]_LightingShadowMasksPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _LightingShadowMasksUV ("UV", Int) = 0
		[HideInInspector]_LightingShadowMaskStrengthR ("R Strength", Range(0, 1)) = 1
		[HideInInspector]_LightingShadowMaskStrengthG ("G Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingShadowMaskStrengthB ("B Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingShadowMaskStrengthA ("A Strength", Range(0, 1)) = 0
		[Space(15)]
		[ThryHeaderLabel(Base Pass Lighting, 13)]
		[Space(4)]
		[Enum(Poi Custom, 0, Standard, 1, UTS2, 2, OpenLit (lil toon), 3)] _LightingColorMode ("Light Color Mode", Int) = 0
		[Enum(Poi Custom, 0, Normalized NDotL, 1, Saturated NDotL, 2)] _LightingMapMode ("Light Map Mode", Int) = 0
		[Enum(Poi Custom, 0, Forced Local Direction, 1, Forced World Direction, 2, UTS2, 3, OpenLit (lil toon), 4)] _LightingDirectionMode ("Light Direction Mode", Int) = 0
		[Vector3]_LightngForcedDirection ("Forced Direction--{condition_showS:(_LightingDirectionMode==1 || _LightingDirectionMode==2)}", Vector) = (0, 0, 0)
		[ToggleUI]_LightingForceColorEnabled ("Force Light Color", Float) = 0
		_LightingForcedColor ("Forced Color--{condition_showS:(_LightingForceColorEnabled==1), reference_property:_LightingForcedColorThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _LightingForcedColorThemeIndex ("", Int) = 0
		_Unlit_Intensity ("Unlit_Intensity--{condition_showS:(_LightingColorMode==2)}", Range(0.001, 4)) = 1
		[ToggleUI]_LightingCapEnabled ("Limit Brightness", Float) = 1
		_LightingCap ("Max Brightness--{condition_showS:(_LightingCapEnabled==1)}", Range(0, 10)) = 1
		_LightingMinLightBrightness ("Min Brightness", Range(0, 1)) = 0
		_LightingIndirectUsesNormals ("Indirect Uses Normals--{condition_showS:(_LightingColorMode==0)}", Range(0, 1)) = 0
		_LightingCastedShadows ("Receive Casted Shadows", Range(0, 1)) = 0
		_LightingMonochromatic ("Grayscale Lighting?", Range(0, 1)) = 0
		[Space(15)]
		[ThryHeaderLabel(Add Pass Lighting, 13)]
		[Space(4)]
		[ThryToggle(POI_LIGHT_DATA_ADDITIVE_ENABLE)]_LightingAdditiveEnable ("Enable Additive", Float) = 1
		[ThryToggle(POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE)]_DisableDirectionalInAdd ("Ignore Directional--{condition_showS:(_LightingAdditiveEnable==1)}", Float) = 1
		[ToggleUI]_LightingAdditiveLimited ("Limit Brightness?--{condition_showS:(_LightingAdditiveEnable==1)}", Float) = 0
		_LightingAdditiveLimit ("Max Brightness--{ condition_showS:(_LightingAdditiveLimited==1&&_LightingAdditiveEnable==1)}", Range(0, 10)) = 1
		_LightingAdditiveMonochromatic ("Grayscale Lighting?", Range(0, 1)) = 0
		_LightingAdditivePassthrough ("Point Light Passthrough--{condition_showS:(_LightingAdditiveEnable==1)}", Range(0, 1)) = .5
		[Space(15)]
		[ThryHeaderLabel(Vertex Lighting, 13)]
		[Space(4)]
		[ThryToggle(POI_VERTEXLIGHT_ON)]_LightingVertexLightingEnabled ("Enabled", Float) = 1
		[Space(15)]
		[ThryHeaderLabel(Debug Visualization, 13)]
		[Space(4)]
		[ThryToggle(POI_LIGHT_DATA_DEBUG)]_LightDataDebugEnabled ("Debug", Float) = 0
		[ThryWideEnum(Direct Color, 0, Indirect Color, 1, Light Map, 2, Attenuation, 3, N Dot L, 4, Half Dir, 5, Direction, 6, Add Color, 7, Add Attenuation, 8, Add Shadow, 9, Add N Dot L, 10)] _LightingDebugVisualize ("Visualize--{condition_showS:(_LightDataDebugEnabled==1)}", Int) = 0
		[HideInInspector] m_end_PoiLightData ("Light Data", Float) = 0
		//ifex _ShadingEnabled==0
		[HideInInspector] m_start_PoiShading (" Shading--{reference_property:_ShadingEnabled,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/shading/main},hover:Documentation}}", Float) = 0
		[HideInInspector][ThryToggle(VIGNETTE_MASKED)]_ShadingEnabled ("Enable Shading", Float) = 1
		[ThryHeaderLabel(Base Pass Shading, 13)]
		[Space(4)]
		[KeywordEnum(TextureRamp, Multilayer Math, Wrapped, Skin, ShadeMap, Flat, Realistic, Cloth, SDF)] _LightingMode ("Lighting Type", Float) = 5
		_LightingShadowColor ("Shadow Tint--{condition_showS:(_LightingMode!=4 && _LightingMode!=1 && _LightingMode!=5)}", Color) = (1, 1, 1)
		[Gradient]_ToonRamp ("Lighting Ramp--{texture:{width:512,height:4,filterMode:Bilinear,wrapMode:Clamp},force_texture_options:true,condition_showS:(_LightingMode==0)}", 2D) = "white" { }
		_ShadowOffset ("Ramp Offset--{condition_showS:(_LightingMode==0)}", Range(-1, 1)) = 0
		_LightingWrappedWrap ("Wrap--{condition_showS:(_LightingMode==2)}", Range(0, 2)) = 0
		_LightingWrappedNormalization ("Normalization--{condition_showS:(_LightingMode==2)}", Range(0, 1)) = 0
		[ToggleUI]_LightingMulitlayerNonLinear ("Non Linear Edge--{condition_showS:(_LightingMode==1)}", Float) = 1
		_ShadowColorTex ("Shadow Color--{reference_properties:[_ShadowColorTexPan, _ShadowColorTexUV], condition_showS:(_LightingMode==1)}", 2D) = "black" { }
		[HideInInspector][Vector2]_ShadowColorTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _ShadowColorTexUV ("UV", Int) = 0
		_ShadowColor ("Shadow Color--{condition_showS:(_LightingMode==1)}", Color) = (0.7, 0.75, 0.85, 1.0)
		_MultilayerMathBlurMap ("Blur Map--{reference_properties:[_MultilayerMathBlurMapPan, _MultilayerMathBlurMapUV], condition_showS:(_LightingMode==1)}", 2D) = "white" { }
		[HideInInspector][Vector2]_MultilayerMathBlurMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _MultilayerMathBlurMapUV ("UV", Int) = 0
		_ShadowBorder ("Border--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = 0.5
		_ShadowBlur ("Blur--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = 0.1
		_Shadow2ndColorTex ("2nd Color--{reference_properties:[_Shadow2ndColorTexPan, _Shadow2ndColorTexUV], condition_showS:(_LightingMode==1)}", 2D) = "black" { }
		[HideInInspector][Vector2]_Shadow2ndColorTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _Shadow2ndColorTexUV ("UV", Int) = 0
		_Shadow2ndColor ("2nd Color--{condition_showS:(_LightingMode==1)}", Color) = (0, 0, 0, 0)
		_Shadow2ndBorder ("2nd Border--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = 0.5
		_Shadow2ndBlur ("2nd Blur--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = 0.3
		_Shadow3rdColorTex ("3rd Color--{reference_properties:[_Shadow3rdColorTexPan, _Shadow3rdColorTexUV], condition_showS:(_LightingMode==1)}", 2D) = "black" { }
		[HideInInspector][Vector2]_Shadow3rdColorTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _Shadow3rdColorTexUV ("UV", Int) = 0
		_Shadow3rdColor ("3rd Color--{condition_showS:(_LightingMode==1)}", Color) = (0, 0, 0, 0)
		_Shadow3rdBorder ("3rd Border--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = 0.25
		_Shadow3rdBlur ("3rd Blur--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = 0.1
		_ShadowBorderColor ("Border Color--{condition_showS:(_LightingMode==1)}", Color) = (1, 0, 0, 1)
		_ShadowBorderRange ("Border Range--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = 0
		_LightingGradientStart ("Gradient Start--{condition_showS:(_LightingMode==2)}", Range(0, 1)) = 0
		_LightingGradientEnd ("Gradient End--{condition_showS:(_LightingMode==2)}", Range(0, 1)) = .5
		_1st_ShadeColor ("1st ShadeColor--{condition_showS:(_LightingMode==4)}", Color) = (1, 1, 1)
		_1st_ShadeMap ("1st ShadeMap--{reference_properties:[_1st_ShadeMapPan, _1st_ShadeMapUV, _Use_1stShadeMapAlpha_As_ShadowMask, _1stShadeMapMask_Inverse],condition_showS:(_LightingMode==4)}", 2D) = "white" { }
		[HideInInspector][Vector2]_1st_ShadeMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _1st_ShadeMapUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Use_1stShadeMapAlpha_As_ShadowMask ("1st ShadeMap.a As ShadowMask", Float) = 0
		[HideInInspector][ToggleUI]_1stShadeMapMask_Inverse ("1st ShadeMapMask Inverse", Float) = 0
		[ToggleUI] _Use_BaseAs1st ("Use BaseMap as 1st ShadeMap--{condition_showS:(_LightingMode==4)}", Float) = 0
		_2nd_ShadeColor ("2nd ShadeColor--{condition_showS:(_LightingMode==4)}", Color) = (1, 1, 1, 1)
		_2nd_ShadeMap ("2nd ShadeMap--{reference_properties:[_2nd_ShadeMapPan, _2nd_ShadeMapUV, _Use_2ndShadeMapAlpha_As_ShadowMask, _2ndShadeMapMask_Inverse],condition_showS:(_LightingMode==4)}", 2D) = "white" { }
		[HideInInspector][Vector2]_2nd_ShadeMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _2nd_ShadeMapUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Use_2ndShadeMapAlpha_As_ShadowMask ("2nd ShadeMap.a As ShadowMask", Float) = 0
		[HideInInspector][ToggleUI]_2ndShadeMapMask_Inverse ("2nd ShadeMapMask Inverse", Float) = 0
		[ToggleUI] _Use_1stAs2nd ("Use 1st ShadeMap as 2nd_ShadeMap--{condition_showS:(_LightingMode==4)}", Float) = 0
		_BaseColor_Step ("BaseColor_Step--{condition_showS:(_LightingMode==4)}", Range(0.01, 1)) = 0.5
		_BaseShade_Feather ("Base/Shade_Feather--{condition_showS:(_LightingMode==4)}", Range(0.0001, 1)) = 0.0001
		_ShadeColor_Step ("ShadeColor_Step--{condition_showS:(_LightingMode==4)}", Range(0, 1)) = 0
		_1st2nd_Shades_Feather ("1st/2nd_Shades_Feather--{condition_showS:(_LightingMode==4)}", Range(0.0001, 1)) = 0.0001
		[Enum(Replace, 0, Multiply, 1)]_ShadingShadeMapBlendType ("Blend Mode--{condition_showS:(_LightingMode==4)}", Int) = 0
		_SkinLUT ("LUT--{condition_showS:(_LightingMode==3)}", 2D) = "white" { }
		_SssScale ("Scale--{condition_showS:(_LightingMode==3)}", Range(0, 1)) = 1
		[HideInInspector]_SssBumpBlur ("Bump Blur--{condition_showS:(_LightingMode==3)}", Range(0, 1)) = 0.7
		[HideInInspector][Vector3]_SssTransmissionAbsorption ("Absorption--{condition_showS:(_LightingMode==3)}", Vector) = (-8, -40, -64, 0)
		[HideInInspector][Vector3]_SssColorBleedAoWeights ("AO Color Bleed--{condition_showS:(_LightingMode==3)}", Vector) = (0.4, 0.15, 0.13, 0)
		[NonModifiableTextureData] [NoScaleOffset] _ClothDFG ("MultiScatter Cloth DFG--{condition_showS:(_LightingMode==7)}", 2D) = "black" { }
		[ThryRGBAPacker(Metallic Map, Cloth Mask, Reflectance, Smoothness)]_ClothMetallicSmoothnessMap ("Maps (Expand)--{reference_properties:[_ClothMetallicSmoothnessMapPan, _ClothMetallicSmoothnessMapUV, _ClothMetallicSmoothnessMapInvert],condition_showS:(_LightingMode==7)}", 2D) = "white" { }
		[HideInInspector][Vector2] _ClothMetallicSmoothnessMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ToggleUI] _ClothMetallicSmoothnessMapInvert ("Invert Smoothness", Float) = 0
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _ClothMetallicSmoothnessMapUV ("UV", Int) = 0
		_ClothReflectance ("Reflectance--{condition_showS:(_LightingMode==7)}", Range(0.35, 1)) = 0.5
		_ClothSmoothness ("Smoothness--{condition_showS:(_LightingMode==7)}", Range(0, 1)) = 0.5
		_SDFShadingTexture ("SDF--{reference_properties:[_SDFShadingTexturePan, _SDFShadingTextureUV],condition_showS:(_LightingMode==8)}", 2D) = "white" { }
		[HideInInspector][Vector2]_SDFShadingTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _SDFShadingTextureUV ("UV", Int) = 0
		_SDFBlur ("Blur--{condition_showS:(_LightingMode==8)}", Range(0, 1)) = 0.1
		[Vector3]_SDFForward ("Forward Direction--{condition_showS:(_LightingMode==8)}", Vector) = (0, 0, 1, 0)
		[Vector3]_SDFLeft ("Left Direction--{condition_showS:(_LightingMode==8)}", Vector) = (-1, 0, 0, 0)
		_ShadowStrength ("Shadow Strength--{condition_showS:(_LightingMode<=4 || _LightingMode==8)}", Range(0, 1)) = 1
		_LightingIgnoreAmbientColor ("Ignore Indirect Shadow Color--{condition_showS:(_LightingMode<=3 || _LightingMode==8)}", Range(0, 1)) = 1
		[Space(15)]
		[ThryHeaderLabel(Add Pass Shading, 13)]
		[Space(4)]
		[Enum(Realistic, 0, Toon, 1)] _LightingAdditiveType ("Lighting Type", Int) = 1
		_LightingAdditiveGradientStart ("Gradient Start--{condition_showS:(_LightingAdditiveType==1)}", Range(0, 1)) = 0
		_LightingAdditiveGradientEnd ("Gradient End--{condition_showS:(_LightingAdditiveType==1)}", Range(0, 1)) = .5
		[HideInInspector] m_end_PoiShading ("Shading", Float) = 0
		//ifex _EnableRimLighting==0
		[HideInInspector] m_start_rimLightOptions ("Rim Lighting--{reference_property:_EnableRimLighting,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/shading/rim-lighting},hover:Documentation}}", Float) = 0
		[HideInInspector][ThryToggle(_GLOSSYREFLECTIONS_OFF)]_EnableRimLighting ("Enable Rim Lighting", Float) = 0
		[KeywordEnum(Poiyomi, UTS2)] _RimStyle ("Style", Float) = 0
		_RimTex ("Rim Texture--{reference_properties:[_RimTexPan, _RimTexUV], condition_showS:_RimStyle==0}", 2D) = "white" { }
		[HideInInspector][Vector2]_RimTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _RimTexUV ("UV", Int) = 0
		_RimMask ("Rim Mask--{reference_properties:[_RimMaskPan, _RimMaskUV], condition_showS:_RimStyle==0}", 2D) = "white" { }
		[HideInInspector][Vector2]_RimMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _RimMaskUV ("UV", Int) = 0
		_Is_NormalMapToRimLight ("Normal Strength", Range(0, 1)) = 1
		[ToggleUI]_RimLightingInvert ("Invert Rim Lighting--{ condition_showS:_RimStyle==0}", Float) = 0
		_RimLightColor ("Rim Color--{reference_property:_RimLightColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _RimLightColorThemeIndex ("", Int) = 0
		_RimWidth ("Rim Width--{ condition_showS:_RimStyle==0}", Range(0, 1)) = 0.8
		_RimSharpness ("Rim Sharpness--{ condition_showS:_RimStyle==0}", Range(0, 1)) = .25
		_RimPower ("Rim Power--{ condition_showS:_RimStyle==0}", Range(0, 10)) = 1
		_RimStrength ("Rim Emission--{ condition_showS:_RimStyle==0}", Range(0, 20)) = 0
		_RimBaseColorMix ("Mix Base Color--{ condition_showS:_RimStyle==0}", Range(0, 1)) = 0
		[ThryWideEnum(Add, 0, Replace, 1, Multiply, 2, Mixed, 3)] _RimBlendMode ("Blend Mode--{ condition_showS:_RimStyle==0}", Int) = 0
		_RimBrightness ("Brightness--{ condition_showS:_RimStyle==0}", Range(0, 10)) = 1
		_RimBlendStrength ("Blend Strength--{ condition_showS:_RimStyle==0}", Range(0, 1)) = 1
		_Is_LightColor_RimLight ("Mix Light Color--{ condition_showS:_RimStyle==1}", Range(0, 1)) = 1
		_RimLight_Power ("Rim Power--{ condition_showS:_RimStyle==1}", Range(0, 1)) = 0.1
		_RimLight_InsideMask ("Inside Mask--{ condition_showS:_RimStyle==1}", Range(0.0001, 1)) = 0.0001
		[Toggle(_)] _RimLight_FeatherOff ("Feather Off--{ condition_showS:_RimStyle==1}", Float) = 0
		[ThryToggleUI(true)] _LightDirection_MaskOn ("<size=13><b>  Light Direction Mask</b></size>--{ condition_showS:_RimStyle==1}", Float) = 0
		_Tweak_LightDirection_MaskLevel ("Light Dir Mask Level--{ condition_showS:_LightDirection_MaskOn==1&&_RimStyle==1}", Range(0, 0.5)) = 0
		[ThryToggleUI(true)] _Add_Antipodean_RimLight ("<size=13><b>  Antipodean(Ap) Rim</b></size>--{ condition_showS:_LightDirection_MaskOn==1&&_RimStyle==1}", Float) = 0
		_Is_LightColor_Ap_RimLight ("Ap Light Color Mix--{ condition_showS:_LightDirection_MaskOn==1&&_Add_Antipodean_RimLight==1&&_RimStyle==1}", Range(0, 1)) = 1
		_Ap_RimLightColor ("Ap Color--{reference_property:_RimApColorThemeIndex, condition_showS:_LightDirection_MaskOn==1&&_Add_Antipodean_RimLight==1&&_RimStyle==1}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _RimApColorThemeIndex ("", Int) = 0
		_Ap_RimLight_Power ("Ap Power--{ condition_showS:_LightDirection_MaskOn==1&&_Add_Antipodean_RimLight==1&&_RimStyle==1}", Range(0, 1)) = 0.1
		[Toggle(_)] _Ap_RimLight_FeatherOff ("Ap Feather Off--{ condition_showS:_LightDirection_MaskOn==1&&_Add_Antipodean_RimLight==1&&_RimStyle==1}", Float) = 0
		_Set_RimLightMask ("Set_RimLightMask--{ condition_showS:_LightDirection_MaskOn==1&&_RimStyle==1}", 2D) = "white" { }
		_Tweak_RimLightMaskLevel ("Tweak_RimLightMaskLevel--{ condition_showS:_LightDirection_MaskOn==1&&_RimStyle==1}", Range(-1, 1)) = 0
		[ThryToggleUI(true)] _RimShadowToggle ("<size=13><b>  Light Direction Mask</b></size>--{ condition_showS:_RimStyle==0}", Float) = 0
		[Enum(Shadow Map, 0, Custom, 1)]_RimShadowMaskRampType ("Light Falloff Type--{ condition_showS:_RimStyle==0&&_RimShadowToggle==1}", Int) = 0
		_RimShadowMaskStrength ("Shadow Mask Strength--{ condition_showS:_RimStyle==0&&_RimShadowToggle==1}", Range(0, 1)) = 1
		[MultiSlider]_RimShadowAlpha ("Hide In Shadow--{ condition_showS:_RimStyle==0&&_RimShadowToggle==1&&_RimShadowMaskRampType==1}", Vector) = (0.0, 0.0, 0, 1)
		_RimShadowWidth ("Shrink In Shadow--{ condition_showS:_RimStyle==0&&_RimShadowToggle==1}", Range(0, 1)) = 0
		[ThryToggleUI(true)] _RimHueShiftEnabled ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_RimHueShiftSpeed ("Shift Speed--{condition_showS:(_RimHueShiftEnabled==1)}", Float) = 0
		_RimHueShift ("Hue Shift--{condition_showS:(_RimHueShiftEnabled==1)}", Range(0, 1)) = 0
		[HideInInspector] m_start_RimAudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkRimWidthBand ("Width Add Band", Int) = 0
		[Vector2] _AudioLinkRimWidthAdd ("Width Add (XMin, YMax)", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkRimEmissionBand ("Emission Add Band", Int) = 0
		[Vector2] _AudioLinkRimEmissionAdd ("Emission Add (XMin, YMax)", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkRimBrightnessBand ("Brightness Band", Int) = 0
		[Vector2] _AudioLinkRimBrightnessAdd ("Brightness Add (XMin, YMax)", Vector) = (0, 0, 0, 0)
		[HideInInspector] m_end_RimAudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_rimLightOptions ("Rim Lighting", Float) = 0
		//ifex _MochieBRDF==0
		[HideInInspector] m_start_brdf ("Reflections & Specular--{reference_property:_MochieBRDF,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/shading/reflections-and-specular},hover:Documentation}}", Float) = 0
		[HideInInspector][ThryToggle(MOCHIE_PBR)]_MochieBRDF ("Enable", Float) = 0
		_MochieReflectionStrength ("Reflection Strength", Range(0, 1)) = 1
		_MochieSpecularStrength ("Specular Strength", Range(0, 1)) = 1
		_MochieMetallicMultiplier ("Metallic", Range(0, 1)) = 0
		_MochieRoughnessMultiplier ("Smoothness", Range(0, 1)) = 1
		_MochieReflectionTint ("Reflection Tint--{reference_property:_MochieReflectionTintThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _MochieReflectionTintThemeIndex ("", Int) = 0
		_MochieSpecularTint ("Specular Tint--{reference_property:_MochieSpecularTintThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _MochieSpecularTintThemeIndex ("", Int) = 0
		[Space(8)]
		[ThryRGBAPacker(R Metallic Map, G Smoothness Map, B Reflection Mask, A Specular Mask)]_MochieMetallicMaps ("Maps [Expand]--{reference_properties:[_MochieMetallicMapsPan, _MochieMetallicMapsUV, _MochieMetallicMapInvert, _MochieRoughnessMapInvert, _MochieReflectionMaskInvert, _MochieSpecularMaskInvert]}", 2D) = "white" { }
		[HideInInspector][Vector2]_MochieMetallicMapsPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_MochieMetallicMapsUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_MochieMetallicMapInvert ("Invert Metallic", Float) = 0
		[HideInInspector][ToggleUI]_MochieRoughnessMapInvert ("Invert Smoothness", Float) = 0
		[HideInInspector][ToggleUI]_MochieReflectionMaskInvert ("Invert Reflection Mask", Float) = 0
		[HideInInspector][ToggleUI]_MochieSpecularMaskInvert ("Invert Specular Mask", Float) = 0
		[ThryToggleUI(true)]_PBRSplitMaskSample ("<size=13><b>  Split Mask Sampling</b></size>", Float) = 0
		_PBRMaskScaleTiling ("ScaleXY TileZW--{condition_showS:(_PBRSplitMaskSample==1)}", Vector) = (1, 1, 0, 0)
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_MochieMetallicMasksUV ("UV--{condition_showS:(_PBRSplitMaskSample==1)}", Int) = 0
		[Vector2]_MochieMetallicMasksPan ("Panning--{condition_showS:(_PBRSplitMaskSample==1)}", Vector) = (0, 0, 0, 0)
		[ThryToggleUI(true)]_Specular2ndLayer ("<size=13><b>  2nd Specular</b></size>", Float) = 0
		_MochieSpecularStrength2 ("Strength--{condition_showS:(_Specular2ndLayer==1)}", Range(0, 1)) = 1
		_MochieRoughnessMultiplier2 ("Smoothness--{condition_showS:(_Specular2ndLayer==1)}", Range(0, 1)) = 1
		[ThryToggleUI(true)] _BRDFTPSDepthEnabled ("<size=13><b>  TPS Depth Enabled</b></size>", Float) = 0
		_BRDFTPSReflectionMaskStrength ("Reflection Mask Strength--{condition_showS:(_BRDFTPSDepthEnabled==1)}", Range(0, 1)) = 1
		_BRDFTPSSpecularMaskStrength ("Specular Mask Strength--{condition_showS:(_BRDFTPSDepthEnabled==1)}", Range(0, 1)) = 1
		[ToggleUI]_IgnoreCastedShadows ("Ignore Casted Shadows", Float) = 0
		[Space(8)]
		[ThryTexture][NoScaleOffset]_MochieReflCube ("Fallback Cubemap", Cube) = "" { }
		[ToggleUI]_MochieForceFallback ("Force Fallback", Int) = 0
		[ToggleUI]_MochieLitFallback ("Lit Fallback", Float) = 0
		[ThryToggleUI(true)]_MochieGSAAEnabled ("<size=13><b>  GSAA</b></size>", Float) = 1
		_PoiGSAAVariance ("GSAA Variance", Range(0, 1)) = 0.15
		_PoiGSAAThreshold ("GSAA Threshold", Range(0, 1)) = 0.1
		_RefSpecFresnel ("Fresnel Reflection", Range(0, 1)) = 1
		[HideInInspector] m_end_brdf ("", Float) = 0
		[HideInInspector] m_specialFXCategory ("Special FX", Float) = 0
		//ifex _GlitterEnable==0
		[HideInInspector] m_start_glitter ("Glitter / Sparkle--{reference_property:_GlitterEnable,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/special-fx/glitter},hover:Documentation}}", Float) = 0
		[HideInInspector][ThryToggle(_SUNDISK_SIMPLE)]_GlitterEnable ("Enable Glitter?", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _GlitterUV ("UV", Int) = 0
		[Enum(Angle, 0, Linear Emission, 1, Light Reflections, 2)]_GlitterMode ("Mode", Int) = 0
		[Enum(Circle, 0, Square, 1)]_GlitterShape ("Shape", Int) = 0
		[Enum(Add, 0, Replace, 1)] _GlitterBlendType ("Blend Mode", Int) = 0
		[HDR]_GlitterColor ("Color--{reference_property:_GlitterColorThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _GlitterColorThemeIndex ("", Int) = 0
		_GlitterUseSurfaceColor ("Use Surface Color", Range(0, 1)) = 0
		_GlitterColorMap ("Glitter Color Map--{reference_properties:[_GlitterColorMapPan, _GlitterColorMapUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_GlitterColorMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _GlitterColorMapUV ("UV", Int) = 0
		[HideInInspector][Vector2]_GlitterPan ("Panning", Vector) = (0, 0, 0, 0)
		_GlitterMask ("Glitter Mask--{reference_properties:[_GlitterMaskPan, _GlitterMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_GlitterMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _GlitterMaskUV ("UV", Int) = 0
		_GlitterTexture ("Glitter Texture--{reference_properties:[_GlitterTexturePan]}", 2D) = "white" { }
		[HideInInspector][Vector2]_GlitterTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[Vector2]_GlitterUVPanning ("Panning Speed", Vector) = (0, 0, 0, 0)
		_GlitterTextureRotation ("Rotation Speed", Float) = 0
		_GlitterFrequency ("Glitter Density", Float) = 300.0
		_GlitterJitter ("Glitter Jitter", Range(0, 1)) = 1.0
		_GlitterSpeed ("Glitter Speed", Float) = 10.0
		_GlitterSize ("Glitter Size", Range(0, 1)) = .3
		_GlitterContrast ("Glitter Contrast--{condition_showS:(_GlitterMode==0||_GlitterMode==2)}", Range(1, 1000)) = 300
		_GlitterAngleRange ("Glitter Angle Range--{condition_showS:(_GlitterMode==0||_GlitterMode==2)}", Range(0, 90)) = 90
		_GlitterMinBrightness ("Glitter Min Brightness", Range(0, 1)) = 0
		_GlitterBrightness ("Glitter Max Brightness", Range(0, 40)) = 3
		_GlitterBias ("Glitter Bias--{condition_show:(_GlitterMode==0)}", Range(0, 1)) = .8
		_GlitterHideInShadow ("Hide in shadow", Range(0, 1)) = 0
		_GlitterCenterSize ("dim light--{condition_show:{type:AND,condition1:{type:PROPERTY_BOOL,data:_GlitterMode==1},condition2:{type:PROPERTY_BOOL,data:_GlitterShape==1}}}", Range(0, 1)) = .08
		_glitterFrequencyLinearEmissive ("Frequency--{condition_show:{type:PROPERTY_BOOL,data:_GlitterMode==1}}", Range(0, 100)) = 20
		_GlitterJaggyFix ("Jaggy Fix--{condition_show:{type:PROPERTY_BOOL,data:_GlitterShape==1}}", Range(0, .1)) = .0
		[Space(10)]
		[ThryToggleUI(true)]_GlitterHueShiftEnabled ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_GlitterHueShiftSpeed ("Shift Speed--{condition_showS:(_GlitterHueShiftEnabled==1)}", Float) = 0
		_GlitterHueShift ("Hue Shift--{condition_showS:(_GlitterHueShiftEnabled==1)}", Range(0, 1)) = 0
		[Space(10)]
		[ThryToggleUI(true)]_GlitterRandomColors ("<size=13><b>  Random Stuff</b></size>", Float) = 0
		[MultiSlider]_GlitterMinMaxSaturation ("Saturation Range--{condition_showS:(_GlitterRandomColors==1)}", Vector) = (0.8, 1, 0, 1)
		[MultiSlider]_GlitterMinMaxBrightness ("Brightness Range--{condition_showS:(_GlitterRandomColors==1)}", Vector) = (0.8, 1, 0, 1)
		[ToggleUI]_GlitterRandomSize ("Random Size?--{condition_showS:(_GlitterRandomColors==1)}", Float) = 0
		[MultiSlider]_GlitterMinMaxSize ("Size Range--{condition_showS:(_GlitterRandomColors==1)}", Vector) = (0.1, 0.5, 0, 1)
		[ToggleUI]_GlitterRandomRotation ("Random Tex Rotation--{condition_showS:(_GlitterRandomColors==1)}", Float) = 0
		[HideInInspector] m_end_glitter ("Glitter / Sparkle--{condition_showS:(_GlitterRandomColors==1)}", Float) = 0
		//ifex _EnableIridescence==0
		[HideInInspector] m_start_Iridescence ("Iridescence--{reference_property:_EnableIridescence,button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/special-fx/iridescence},hover:Documentation}}", Float) = 0
		[HideInInspector][ThryToggle(POI_IRIDESCENCE)]_EnableIridescence ("Enable Iridescence", Float) = 0
		[Gradient]_IridescenceRamp ("Ramp--{reference_properties:[_IridescenceRampPan]}", 2D) = "white" { }
		[HideInInspector][Vector2]_IridescenceRampPan ("Panning", Vector) = (0, 0, 0, 0)
		_IridescenceMask ("Mask--{reference_properties:[_IridescenceMaskPan, _IridescenceMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_IridescenceMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_IridescenceMaskUV ("Mask UV", Int) = 0
		[ToggleUI]_IridescenceNormalToggle ("Custom Normals?", Float) = 0
		[Normal]_IridescenceNormalMap ("Normal Map--{reference_properties:[_IridescenceNormalIntensity, _IridescenceNormalMapPan, _IridescenceNormalMapUV]}", 2D) = "bump" { }
		[HideInInspector]_IridescenceNormalIntensity ("Normal Intensity", Range(0, 10)) = 1
		[HideInInspector][Vector2]_IridescenceNormalMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_IridescenceNormalMapUV ("Normal UV", Int) = 0
		[Enum(Vertex, 0, Pixel, 1)] _IridescenceNormalSelection ("Normal Select", Int) = 1
		_IridescenceIntensity ("Intensity", Range(0, 10)) = 1
		_IridescenceAddBlend ("Blend Add", Range(0, 1)) = 0
		_IridescenceReplaceBlend ("Blend Replace", Range(0, 1)) = 0
		_IridescenceMultiplyBlend ("Blend Multiply", Range(0, 1)) = 0
		_IridescenceEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		[ThryToggleUI(true)]_IridescenceHueShiftEnabled ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_IridescenceHueShiftSpeed ("Speed--{condition_showS:(_IridescenceHueShiftEnabled==1)}", Float) = 0
		_IridescenceHueShift ("Shift--{condition_showS:(_IridescenceHueShiftEnabled==1)}", Range(0, 1)) = 0
		[HideInInspector] m_start_IridescenceAudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _IridescenceAudioLinkEmissionAddBand ("Emission Band", Int) = 0
		[Vector2]_IridescenceAudioLinkEmissionAdd ("Emission Mod", Vector) = (0, 0, 0, 0)
		[HideInInspector] m_end_IridescenceAudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Iridescence ("Iridescence", Float) = 0
		//ifex _EnableAudioLink==0
		[HideInInspector] m_AudioLinkCategory (" Audio Link--{reference_property:_EnableAudioLink}", Float) = 0
		[HideInInspector] m_start_audioLink ("Audio Link", Float) = 0
		[HideInInspector][ThryToggle(POI_AUDIOLINK)] _EnableAudioLink ("Enabled?", Float) = 0
		[Helpbox(1)] _AudioLinkHelp ("This section houses the global controls for audio link. Controls for individual features are in their respective sections. (Emission, Dissolve, etc...)", Int) = 0
		[ToggleUI] _AudioLinkAnimToggle ("Anim Toggle", Float) = 1
		[HideInInspector] m_end_audioLink ("Audio Link", Float) = 0
		//ifex _EnableALDecal==0
		[HideInInspector] m_start_ALDecalSpectrum ("AL ♫ Spectrum--{  reference_property:_EnableALDecal}", Float) = 0
		[HideInInspector][ThryToggle(POI_AL_DECAL)]_EnableALDecal ("Enable AL Decal", Float) = 0
		[HideInInspector][ThryWideEnum(lil Spectrum, 0)] _ALDecalType ("AL Type--{ condition_showS:_EnableAudioLink==1}", Int) = 0
		[ThryHeaderLabel(Transform, 13)]
		[Space(4)]
		[Enum(Normal, 0, Circle, 1)] _ALDecalUVMode ("UV Mode", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _ALDecalUV ("UV", Int) = 0
		[Vector2]_ALUVPosition ("Position", Vector) = (.5, .5, 1)
		_ALUVScale ("Scale", Vector) = (1, 1, 1, 1)
		_ALUVRotation ("Rotation", Range(0, 360)) = 0
		_ALUVRotationSpeed ("Rotation Speed", Float) = 0
		_ALDecalLineWidth ("Line Width", Range(0, 1)) = 1.0
		_ALDecaldCircleDimensions ("Cirlce Dimensions--{ condition_showS:_ALDecalUVMode==1}", Vector) = (0, 1, 0, 1)
		[Space][ThryHeaderLabel(Volume, 13)]
		[Space(4)]
		_ALDecalVolumeStep ("Volume Step Num (0 = Off)", Float) = 0.0
		_ALDecalVolumeClipMin ("Volume Clip Min", Range(0, 1)) = 0.0
		_ALDecalVolumeClipMax ("Volume Clip Max", Range(0, 1)) = 1.0
		[Space][ThryHeaderLabel(Band, 13)]
		[Space(4)]
		_ALDecalBandStep ("Band Step Num (0 = Off)", Float) = 0.0
		_ALDecalBandClipMin ("Band Clip Min", Range(0, 1)) = 0.0
		_ALDecalBandClipMax ("Band Clip Max", Range(0, 1)) = 1.0
		[Space][ThryToggleUI(true)]_ALDecalShapeClip ("<size=13><b>  Shape Clip</b></size>", Float) = 0
		_ALDecalShapeClipVolumeWidth ("Volume Width--{ condition_showS:_ALDecalShapeClip==1}", Range(0, 1)) = 0.5
		_ALDecalShapeClipBandWidth ("Band Width--{ condition_showS:_ALDecalShapeClip==1}", Range(0, 1)) = 0.5
		[Space][ThryHeaderLabel(Audio Mods, 13)]
		[Space(4)]
		_ALDecalVolume ("Volume", Int) = 0.5
		_ALDecalBaseBoost ("Bass Boost", Float) = 5.0
		_ALDecalTrebleBoost ("Treble Boost", Float) = 1.0
		[Space][ThryHeaderLabel(Colors and Blending, 13)]
		[Space(4)]
		[ThryRGBAPacker(1, RGB Color, A Mask, 1)]_ALDecalColorMask ("Color & Mask--{reference_properties:[_ALDecalColorMaskPan, _ALDecalColorMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_ALDecalColorMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _ALDecalColorMaskUV ("UV", Int) = 0
		[Enum(UVX, 0, UVY, 1, Volume, 2)] _ALDecalVolumeColorSource ("Source", Int) = 1
		_ALDecalVolumeColorLow ("Volume Color Low", Color) = (0, 0, 1)
		_ALDecalLowEmission ("Low Emission", Range(0, 20)) = 0
		_ALDecalVolumeColorMid ("Volume Color Mid", Color) = (0, 1, 0)
		_ALDecalMidEmission ("Mid Emission", Range(0, 20)) = 0
		_ALDecalVolumeColorHigh ("Volume Color High", Color) = (1, 0, 0)
		_ALDecalHighEmission ("High Emission", Range(0, 20)) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge(Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_ALDecalBlendType ("Blend Type", Range(0, 1)) = 0
		_ALDecalBlendAlpha ("Alpha", Range(0, 1)) = 1
		_ALDecalControlsAlpha ("Override Alpha", Range(0, 1)) = 0
		[HideInInspector] m_end_ALDecalSpectrum ("AL ♫ Spectrum", Float) = 0
		[HideInInspector] m_modifierCategory ("Modifiers", Float) = 0
		[HideInInspector] m_start_uvPanosphere ("Panosphere UV", Float) = 0
		[ToggleUI] _StereoEnabled ("Stereo Enabled", Float) = 0
		[ToggleUI] _PanoUseBothEyes ("Perspective Correct (VR)", Float) = 1
		[HideInInspector] m_end_uvPanosphere ("Panosphere UV", Float) = 0
		[HideInInspector] m_start_uvPolar ("Polar UV", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5)] _PolarUV ("UV", Int) = 0
		[Vector2]_PolarCenter ("Center Coordinate", Vector) = (.5, .5, 0, 0)
		_PolarRadialScale ("Radial Scale", Float) = 1
		_PolarLengthScale ("Length Scale", Float) = 1
		_PolarSpiralPower ("Spiral Power", Float) = 0
		[HideInInspector] m_end_uvPolar ("Polar UV", Float) = 0
		[HideInInspector] m_thirdpartyCategory ("Third Party", Float) = 0
		[HideInInspector] m_postprocessing ("Post Processing", Float) = 0
		[HideInInspector] m_start_PoiLightData ("PP Animations--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/post-processing/pp-animations},hover:Documentation}}", Float) = 0
		[Helpbox(1)] _PPHelp ("This section meant for real time adjustments through animations and not to be changed in unity", Int) = 0
		_PPLightingMultiplier ("Lighting Mulitplier", Float) = 1
		_PPLightingAddition ("Lighting Add", Float) = 0
		_PPEmissionMultiplier ("Emission Multiplier", Float) = 1
		_PPFinalColorMultiplier ("Final Color Multiplier", Float) = 1
		[HideInInspector] m_end_PoiLightData ("PP Animations ", Float) = 0
		[HideInInspector] m_renderingCategory ("Rendering--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/rendering/main},hover:Documentation}}", Float) = 0
		[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull", Float) = 2
		[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Float) = 4
		[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Int) = 1
		[Enum(Thry.ColorMask)] _ColorMask ("Color Mask", Int) = 15
		_OffsetFactor ("Offset Factor", Float) = 0.0
		_OffsetUnits ("Offset Units", Float) = 0.0
		[ToggleUI]_RenderingReduceClipDistance ("Reduce Clip Distance", Float) = 0
		[ToggleUI]_IgnoreFog ("Ignore Fog", Float) = 0
		[HideInInspector] Instancing ("Instancing", Float) = 0 //add this property for instancing variants settings to be shown
		[HideInInspector] m_start_blending ("Blending--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/rendering/blending},hover:Documentation}}", Float) = 0
		[Enum(Thry.BlendOp)]_BlendOp ("RGB Blend Op", Int) = 0
		[Enum(Thry.BlendOp)]_BlendOpAlpha ("Alpha Blend Op", Int) = 0
		[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("Source Blend", Int) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("Destination Blend", Int) = 0
		[Space][ThryHeaderLabel(Additive Blending, 13)]
		[Enum(Thry.BlendOp)]_AddBlendOp ("RGB Blend Op", Int) = 0
		[Enum(Thry.BlendOp)]_AddBlendOpAlpha ("Alpha Blend Op", Int) = 0
		[Enum(UnityEngine.Rendering.BlendMode)] _AddSrcBlend ("Source Blend", Int) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] _AddDstBlend ("Destination Blend", Int) = 1
		[HideInInspector] m_end_blending ("Blending", Float) = 0
		[HideInInspector] m_start_StencilPassOptions ("Stencil--{button_help:{text:Tutorial,action:{type:URL,data:https://www.poiyomi.com/rendering/stencil},hover:Documentation}}", Float) = 0
		[ThryWideEnum(Simple, 0, Front Face vs Back Face, 1)] _StencilType ("Stencil Type", Float) = 0
		[IntRange] _StencilRef ("Stencil Reference Value", Range(0, 255)) = 0
		[IntRange] _StencilReadMask ("Stencil ReadMask Value", Range(0, 255)) = 255
		[IntRange] _StencilWriteMask ("Stencil WriteMask Value", Range(0, 255)) = 255
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilPassOp ("Stencil Pass Op--{condition_showS:(_StencilType==0)}", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFailOp ("Stencil Fail Op--{condition_showS:(_StencilType==0)}", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilZFailOp ("Stencil ZFail Op--{condition_showS:(_StencilType==0)}", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilCompareFunction ("Stencil Compare Function--{condition_showS:(_StencilType==0)}", Float) = 8
		[HideInInspector] m_start_StencilPassBackOptions("Back--{condition_showS:(_StencilType==1)}", Float) = 0
		[Helpbox(1)] _FFBFStencilHelp0 ("Front Face and Back Face Stencils only work when locked in due to Unity's Stencil managment", Int) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilBackPassOp ("Back Pass Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilBackFailOp ("Back Fail Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilBackZFailOp ("Back ZFail Op", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilBackCompareFunction ("Back Compare Function", Float) = 8
		[HideInInspector] m_end_StencilPassBackOptions("Back", Float) = 0
		[HideInInspector] m_start_StencilPassFrontOptions("Front--{condition_showS:(_StencilType==1)}", Float) = 0
		[Helpbox(1)] _FFBFStencilHelp1 ("Front Face and Back Face Stencils only work when locked in due to Unity's Stencil managment", Int) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFrontPassOp ("Front Pass Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFrontFailOp ("Front Fail Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFrontZFailOp ("Front ZFail Op", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilFrontCompareFunction ("Front Compare Function", Float) = 8
		[HideInInspector] m_end_StencilPassFrontOptions("Front", Float) = 0
		[HideInInspector] m_end_StencilPassOptions ("Stencil", Float) = 0
	}
	SubShader
	{
		Tags { "RenderType" = "Opaque" "Queue" = "Geometry" "VRCFallback" = "Standard" }
		Pass
		{
			Tags { "LightMode" = "ForwardBase" }
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				//ifex _StencilType == 1
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			ZWrite [_ZWrite]
			Cull [_Cull]
			AlphaToMask [_AlphaToCoverage]
			ZTest [_ZTest]
			ColorMask [_ColorMask]
			Offset [_OffsetFactor], [_OffsetUnits]
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend]
			CGPROGRAM
 #define OPTIMIZER_ENABLED 
 #define COLOR_GRADING_HDR 
 #define DEPTH_OF_FIELD_COC_VIEW 
 #define FINALPASS 
 #define GEOM_TYPE_BRANCH 
 #define GEOM_TYPE_BRANCH_DETAIL 
 #define GEOM_TYPE_FROND 
 #define MOCHIE_PBR 
 #define POI_AL_DECAL 
 #define POI_AUDIOLINK 
 #define POI_IRIDESCENCE 
 #define POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE 
 #define POI_LIGHT_DATA_ADDITIVE_ENABLE 
 #define POI_VERTEXLIGHT_ON 
 #define VIGNETTE 
 #define VIGNETTE_MASKED 
 #define _GLOSSYREFLECTIONS_OFF 
 #define _LIGHTINGMODE_TEXTURERAMP 
 #define _RIMSTYLE_POIYOMI 
 #define _SUNDISK_SIMPLE 
 #define PROP_DETAILMASK 
 #define PROP_DETAILTEX 
 #define PROP_RGBMASK 
 #define PROP_REDTEXTURE 
 #define PROP_DECALMASK 
 #define PROP_DECALTEXTURE 
 #define PROP_DECALTEXTURE1 
 #define PROP_DECALTEXTURE2 
 #define PROP_DECALTEXTURE3 
 #define PROP_RIMMASK 
 #define PROP_SET_RIMLIGHTMASK 
 #define PROP_MOCHIEMETALLICMAPS 
 #define PROP_GLITTERCOLORMAP 
 #define PROP_IRIDESCENCERAMP 
 #define PROP_IRIDESCENCEMASK 
 #define PROP_ALDECALCOLORMASK 
			#pragma target 5.0
			#pragma skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			#pragma multi_compile_fwdbase
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#pragma multi_compile _ VERTEXLIGHT_ON
			#define POI_PASS_BASE
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"
			#include "UnityPBSLighting.cginc"
			#ifdef POI_PASS_META
			#include "UnityMetaPass.cginc"
			#endif
			#pragma vertex vert
			#pragma fragment frag
			#define DielectricSpec float4(0.04, 0.04, 0.04, 1.0 - 0.04)
			#define PI float(3.14159265359)
			#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan))
			#define POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, ddx, ddy) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan, ddx, ddy))
			#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_PAN(tex, uv, pan) (tex2D(tex, uv + _Time.x * pan))
			#define POI2D(tex, uv) (tex2D(tex, uv))
			#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
			#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, uv + _Time.x * pan))
			#define POI2D_MAINTEX_SAMPLER_PAN_INLINED(tex, poiMesh) (POI2D_SAMPLER_PAN(tex, _MainTex, poiUV(poiMesh.uv[tex##UV], tex##_ST), tex##Pan))
			#define POI_SAFE_RGB0 float4(mainTexture.rgb * .0001, 0)
			#define POI_SAFE_RGB1 float4(mainTexture.rgb * .0001, 1)
			#define POI_SAFE_RGBA mainTexture
			#if defined(UNITY_COMPILER_HLSL)
			#define PoiInitStruct(type, name) name = (type)0;
			#else
			#define PoiInitStruct(type, name)
			#endif
			#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
			#define POI_MODE_OPAQUE 0
			#define POI_MODE_CUTOUT 1
			#define POI_MODE_FADE 2
			#define POI_MODE_TRANSPARENT 3
			#define POI_MODE_ADDITIVE 4
			#define POI_MODE_SOFTADDITIVE 5
			#define POI_MODE_MULTIPLICATIVE 6
			#define POI_MODE_2XMULTIPLICATIVE 7
			#define POI_MODE_TRANSCLIPPING 9
			//ifex float(1)==0
			#define ALPASS_DFT                      uint2(0,4)   //Size: 128, 2
			#define ALPASS_WAVEFORM                 uint2(0,6)   //Size: 128, 16
			#define ALPASS_AUDIOLINK                uint2(0,0)   //Size: 128, 4
			#define ALPASS_AUDIOBASS                uint2(0,0)   //Size: 128, 1
			#define ALPASS_AUDIOLOWMIDS             uint2(0,1)   //Size: 128, 1
			#define ALPASS_AUDIOHIGHMIDS            uint2(0,2)   //Size: 128, 1
			#define ALPASS_AUDIOTREBLE              uint2(0,3)   //Size: 128, 1
			#define ALPASS_AUDIOLINKHISTORY         uint2(1,0)   //Size: 127, 4
			#define ALPASS_GENERALVU                uint2(0,22)  //Size: 12, 1
			#define ALPASS_CCINTERNAL               uint2(12,22) //Size: 12, 2
			#define ALPASS_CCCOLORS                 uint2(25,22) //Size: 11, 1
			#define ALPASS_CCSTRIP                  uint2(0,24)  //Size: 128, 1
			#define ALPASS_CCLIGHTS                 uint2(0,25)  //Size: 128, 2
			#define ALPASS_AUTOCORRELATOR           uint2(0,27)  //Size: 128, 1
			#define ALPASS_GENERALVU_INSTANCE_TIME  uint2(2,22)
			#define ALPASS_GENERALVU_LOCAL_TIME     uint2(3,22)
			#define ALPASS_GENERALVU_NETWORK_TIME   uint2(4,22)
			#define ALPASS_GENERALVU_PLAYERINFO     uint2(6,22)
			#define ALPASS_FILTEREDAUDIOLINK        uint2(0,28)  //Size: 16, 4
			#define ALPASS_CHRONOTENSITY            uint2(16,28) //Size: 8, 4
			#define ALPASS_THEME_COLOR0             uint2(0,23)
			#define ALPASS_THEME_COLOR1             uint2(1,23)
			#define ALPASS_THEME_COLOR2             uint2(2,23)
			#define ALPASS_THEME_COLOR3             uint2(3,23)
			#define ALPASS_FILTEREDVU               uint2(24,28) //Size: 4, 4
			#define ALPASS_FILTEREDVU_INTENSITY     uint2(24,28) //Size: 4, 1
			#define ALPASS_FILTEREDVU_MARKER        uint2(24,29) //Size: 4, 1
			#define AUDIOLINK_SAMPHIST              3069        // Internal use for algos, do not change.
			#define AUDIOLINK_SAMPLEDATA24          2046
			#define AUDIOLINK_EXPBINS               24
			#define AUDIOLINK_EXPOCT                10
			#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
			#define AUDIOLINK_WIDTH                 128
			#define AUDIOLINK_SPS                   48000       // Samples per second
			#define AUDIOLINK_ROOTNOTE              0
			#define AUDIOLINK_4BAND_FREQFLOOR       0.123
			#define AUDIOLINK_4BAND_FREQCEILING     1
			#define AUDIOLINK_BOTTOM_FREQUENCY      13.75
			#define AUDIOLINK_BASE_AMPLITUDE        2.5
			#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
			#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
			#define AUDIOLINK_DFT_Q                 4.0
			#define AUDIOLINK_TREBLE_CORRECTION     5.0
			#define COLORCHORD_EMAXBIN              192
			#define COLORCHORD_IIR_DECAY_1          0.90
			#define COLORCHORD_IIR_DECAY_2          0.85
			#define COLORCHORD_CONSTANT_DECAY_1     0.01
			#define COLORCHORD_CONSTANT_DECAY_2     0.0
			#define COLORCHORD_NOTE_CLOSEST         3.0
			#define COLORCHORD_NEW_NOTE_GAIN        8.0
			#define COLORCHORD_MAX_NOTES            10
			#ifndef glsl_mod
			#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
			#endif
			uniform float4               _AudioTexture_TexelSize;
			#ifdef SHADER_TARGET_SURFACE_ANALYSIS
			#define AUDIOLINK_STANDARD_INDEXING
			#endif
			#ifdef AUDIOLINK_STANDARD_INDEXING
			sampler2D _AudioTexture;
			#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
			#else
			uniform Texture2D<float4> _AudioTexture;
			SamplerState sampler_AudioTexture;
			#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
			#endif
			uniform sampler2D _Stored;
			uniform float4 _Stored_TexelSize;
			#define LumaData(x,y) tex2Dlod(_Stored, float4(x, y, 0, 0))
			float _Mode;
			float4 _GlobalThemeColor0;
			float4 _GlobalThemeColor1;
			float4 _GlobalThemeColor2;
			float4 _GlobalThemeColor3;
			float _StereoEnabled;
			float _PolarUV;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _PanoUseBothEyes;
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			float _AudioLinkDelay;
			float _AudioLinkAnimToggle;
			float _DebugWaveform;
			float _DebugDFT;
			float _DebugBass;
			float _DebugLowMids;
			float _DebugHighMids;
			float _DebugTreble;
			float _DebugCCColors;
			float _DebugCCStrip;
			float _DebugCCLights;
			float _DebugAutocorrelator;
			float _DebugChronotensity;
			float _AudioLinkCCStripY;
			#endif
			#if defined(PROP_LIGHTINGAOMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingAOMaps;
			#endif
			float4 _LightingAOMaps_ST;
			float2 _LightingAOMapsPan;
			float _LightingAOMapsUV;
			float _LightDataAOStrengthR;
			float _LightDataAOStrengthG;
			float _LightDataAOStrengthB;
			float _LightDataAOStrengthA;
			#if defined(PROP_LIGHTINGDETAILSHADOWMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingDetailShadowMaps;
			#endif
			float4 _LightingDetailShadowMaps_ST;
			float2 _LightingDetailShadowMapsPan;
			float _LightingDetailShadowMapsUV;
			float _LightingDetailShadowStrengthR;
			float _LightingDetailShadowStrengthG;
			float _LightingDetailShadowStrengthB;
			float _LightingDetailShadowStrengthA;
			float _LightingAddDetailShadowStrengthR;
			float _LightingAddDetailShadowStrengthG;
			float _LightingAddDetailShadowStrengthB;
			float _LightingAddDetailShadowStrengthA;
			#if defined(PROP_LIGHTINGSHADOWMASKS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingShadowMasks;
			#endif
			float4 _LightingShadowMasks_ST;
			float2 _LightingShadowMasksPan;
			float _LightingShadowMasksUV;
			float _LightingShadowMaskStrengthR;
			float _LightingShadowMaskStrengthG;
			float _LightingShadowMaskStrengthB;
			float _LightingShadowMaskStrengthA;
			float _Unlit_Intensity;
			float _LightingColorMode;
			float _LightingMapMode;
			float _LightingDirectionMode;
			float3 _LightngForcedDirection;
			float _LightingIndirectUsesNormals;
			float _LightingCapEnabled;
			float _LightingCap;
			float _LightingForceColorEnabled;
			float3 _LightingForcedColor;
			float _LightingForcedColorThemeIndex;
			float _LightingCastedShadows;
			float _LightingMonochromatic;
			float _LightingAdditiveMonochromatic;
			float _LightingMinLightBrightness;
			float _LightingAdditiveLimited;
			float _LightingAdditiveLimit;
			float _LightingAdditivePassthrough;
			float _LightingDebugVisualize;
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			float _AddBlendOp;
			float4 _Color;
			float _ColorThemeIndex;
			UNITY_DECLARE_TEX2D(_MainTex);
			UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
			float _MainPixelMode;
			float4 _MainTex_ST;
			float2 _MainTexPan;
			float _MainTexUV;
			float4 _MainTex_TexelSize;
			Texture2D _BumpMap;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			Texture2D _ClippingMask;
			float4 _ClippingMask_ST;
			float2 _ClippingMaskPan;
			float _ClippingMaskUV;
			float _Inverse_Clipping;
			float _Cutoff;
			//ifex float(1)==0
			float _MainColorAdjustToggle;
			#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MainColorAdjustTexture;
			#endif
			float4 _MainColorAdjustTexture_ST;
			float2 _MainColorAdjustTexturePan;
			float _MainColorAdjustTextureUV;
			float _MainHueShiftToggle;
			float _MainHueShiftReplace;
			float _MainHueShift;
			float _MainHueShiftSpeed;
			float _Saturation;
			float _MainBrightness;
			float _MainHueALCTEnabled;
			float _MainALHueShiftBand;
			float _MainALHueShiftCTIndex;
			float _MainHueALMotionSpeed;
			SamplerState sampler_linear_clamp;
			SamplerState sampler_linear_repeat;
			float _AlphaForceOpaque;
			float _AlphaMod;
			float _AlphaPremultiply;
			float _AlphaBoostFA;
			//ifex float(1)==0
			#ifdef FINALPASS
			#if defined(PROP_DETAILMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailMask;
			#endif
			float4 _DetailMask_ST;
			float2 _DetailMaskPan;
			float _DetailMaskUV;
			#if defined(PROP_DETAILNORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailNormalMap;
			#endif
			float4 _DetailNormalMap_ST;
			float2 _DetailNormalMapPan;
			float _DetailNormalMapUV;
			#if defined(PROP_DETAILTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailTex;
			#endif
			float4 _DetailTex_ST;
			float2 _DetailTexPan;
			float _DetailTexUV;
			float3 _DetailTint;
			float _DetailTintThemeIndex;
			float _DetailTexIntensity;
			float _DetailBrightness;
			float _DetailNormalMapScale;
			#endif
			//ifex float(1)==0
			#ifdef VIGNETTE
			#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RGBMask;
			#endif
			float4 _RGBMask_ST;
			float2 _RGBMaskPan;
			float _RGBMaskUV;
			#if defined(PROP_REDTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RedTexture;
			#endif
			float4 _RedTexture_ST;
			float2 _RedTexturePan;
			float _RedTextureUV;
			float _RedAlphaAdd;
			#if defined(PROP_GREENTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GreenTexture;
			#endif
			float4 _GreenTexture_ST;
			float2 _GreenTexturePan;
			float _GreenTextureUV;
			float _GreenAlphaAdd;
			#if defined(PROP_BLUETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BlueTexture;
			#endif
			float4 _BlueTexture_ST;
			float2 _BlueTexturePan;
			float _BlueTextureUV;
			float _BlueAlphaAdd;
			#if defined(PROP_ALPHATEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _AlphaTexture;
			#endif
			float4 _AlphaTexture_ST;
			float2 _AlphaTexturePan;
			float _AlphaTextureUV;
			float _AlphaAlphaAdd;
			float4 _RedColor;
			float4 _GreenColor;
			float4 _BlueColor;
			float4 _AlphaColor;
			float _RedColorThemeIndex;
			float _GreenColorThemeIndex;
			float _BlueColorThemeIndex;
			float _AlphaColorThemeIndex;
			float _RGBBlendMultiplicative;
			float _RGBUseVertexColors;
			float _RGBNormalBlend;
			#endif
			//ifex float(1)==0 && float(1)==0 && float(1)==0 && float(1)==0
			#if defined(PROP_DECALMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DecalMask;
			float4 _DecalMask_ST;
			float2 _DecalMaskPan;
			float _DecalMaskUV;
			#endif
			float _DecalTPSDepthMaskEnabled;
			float _Decal0TPSMaskStrength;
			float _Decal1TPSMaskStrength;
			float _Decal2TPSMaskStrength;
			float _Decal3TPSMaskStrength;
			#ifdef POI_AUDIOLINK
			half _AudioLinkDecal0ScaleBand;
			float4 _AudioLinkDecal0Scale;
			half _AudioLinkDecal0RotationBand;
			float2 _AudioLinkDecal0Rotation;
			half _AudioLinkDecal0AlphaBand;
			float2 _AudioLinkDecal0Alpha;
			half _AudioLinkDecal0EmissionBand;
			float2 _AudioLinkDecal0Emission;
			float _DecalRotationCTALBand0;
			float _DecalRotationCTALSpeed0;
			float _DecalRotationCTALType0;
			float _AudioLinkDecalCC0;
			float _AudioLinkDecal0SideBand;
			float4 _AudioLinkDecal0SideMin;
			float4 _AudioLinkDecal0SideMax;
			half _AudioLinkDecal1ScaleBand;
			float4 _AudioLinkDecal1Scale;
			half _AudioLinkDecal1RotationBand;
			float2 _AudioLinkDecal1Rotation;
			half _AudioLinkDecal1AlphaBand;
			float2 _AudioLinkDecal1Alpha;
			half _AudioLinkDecal1EmissionBand;
			float2 _AudioLinkDecal1Emission;
			float _DecalRotationCTALBand1;
			float _DecalRotationCTALSpeed1;
			float _DecalRotationCTALType1;
			float _AudioLinkDecalCC1;
			float _AudioLinkDecal1SideBand;
			float4 _AudioLinkDecal1SideMin;
			float4 _AudioLinkDecal1SideMax;
			half _AudioLinkDecal2ScaleBand;
			float4 _AudioLinkDecal2Scale;
			half _AudioLinkDecal2RotationBand;
			float2 _AudioLinkDecal2Rotation;
			half _AudioLinkDecal2AlphaBand;
			float2 _AudioLinkDecal2Alpha;
			half _AudioLinkDecal2EmissionBand;
			float2 _AudioLinkDecal2Emission;
			float _DecalRotationCTALBand2;
			float _DecalRotationCTALSpeed2;
			float _DecalRotationCTALType2;
			float _AudioLinkDecalCC2;
			float _AudioLinkDecal2SideBand;
			float4 _AudioLinkDecal2SideMin;
			float4 _AudioLinkDecal2SideMax;
			half _AudioLinkDecal3ScaleBand;
			float4 _AudioLinkDecal3Scale;
			half _AudioLinkDecal3RotationBand;
			float2 _AudioLinkDecal3Rotation;
			half _AudioLinkDecal3AlphaBand;
			float2 _AudioLinkDecal3Alpha;
			half _AudioLinkDecal3EmissionBand;
			float2 _AudioLinkDecal3Emission;
			float _DecalRotationCTALBand3;
			float _DecalRotationCTALSpeed3;
			float _DecalRotationCTALType3;
			float _AudioLinkDecalCC3;
			float _AudioLinkDecal3SideBand;
			float4 _AudioLinkDecal3SideMin;
			float4 _AudioLinkDecal3SideMax;
			#endif
			//ifex float(1)==0
			#ifdef GEOM_TYPE_BRANCH
			float _Decal0MaskChannel;
			sampler2D _DecalTexture;
			float4 _DecalTexture_ST;
			float2 _DecalTexturePan;
			float _DecalTextureUV;
			float4 _DecalColor;
			float _DecalColorThemeIndex;
			fixed _DecalTiled;
			float _DecalBlendType;
			half _DecalRotation;
			half2 _DecalScale;
			float4 _DecalSideOffset;
			half2 _DecalPosition;
			half _DecalRotationSpeed;
			float _DecalEmissionStrength;
			float _DecalBlendAlpha;
			float _DecalOverrideAlpha;
			float _DecalHueShiftEnabled;
			float _DecalHueShift;
			float _DecalHueShiftSpeed;
			float _Decal0Depth;
			float _Decal0HueAngleStrength;
			#endif
			//ifex float(1)==0
			#ifdef GEOM_TYPE_BRANCH_DETAIL
			float _Decal1MaskChannel;
			sampler2D _DecalTexture1;
			float4 _DecalTexture1_ST;
			float2 _DecalTexture1Pan;
			float _DecalTexture1UV;
			float4 _DecalColor1;
			float _DecalColor1ThemeIndex;
			fixed _DecalTiled1;
			float _DecalBlendType1;
			half _DecalRotation1;
			half2 _DecalScale1;
			float4 _DecalSideOffset1;
			half2 _DecalPosition1;
			half _DecalRotationSpeed1;
			float _DecalEmissionStrength1;
			float _DecalBlendAlpha1;
			float _DecalOverrideAlpha1;
			float _DecalHueShiftEnabled1;
			float _DecalHueShift1;
			float _DecalHueShiftSpeed1;
			float _Decal1Depth;
			float _Decal1HueAngleStrength;
			#endif
			//ifex float(1)==0
			#ifdef GEOM_TYPE_FROND
			float _Decal2MaskChannel;
			sampler2D _DecalTexture2;
			float4 _DecalTexture2_ST;
			float2 _DecalTexture2Pan;
			float _DecalTexture2UV;
			float4 _DecalColor2;
			float _DecalColor2ThemeIndex;
			fixed _DecalTiled2;
			float _DecalBlendType2;
			half _DecalRotation2;
			half2 _DecalScale2;
			float4 _DecalSideOffset2;
			half2 _DecalPosition2;
			half _DecalRotationSpeed2;
			float _DecalEmissionStrength2;
			float _DecalBlendAlpha2;
			float _DecalOverrideAlpha2;
			float _DecalHueShiftEnabled2;
			float _DecalHueShift2;
			float _DecalHueShiftSpeed2;
			float _Decal2Depth;
			float _Decal2HueAngleStrength;
			#endif
			//ifex float(1)==0
			#ifdef DEPTH_OF_FIELD_COC_VIEW
			float _Decal3MaskChannel;
			sampler2D _DecalTexture3;
			float4 _DecalTexture3_ST;
			float2 _DecalTexture3Pan;
			float _DecalTexture3UV;
			float4 _DecalColor3;
			float _DecalColor3ThemeIndex;
			fixed _DecalTiled3;
			float _DecalBlendType3;
			half _DecalRotation3;
			half2 _DecalScale3;
			float4 _DecalSideOffset3;
			half2 _DecalPosition3;
			half _DecalRotationSpeed3;
			float _DecalEmissionStrength3;
			float _DecalBlendAlpha3;
			float _DecalOverrideAlpha3;
			float _DecalHueShiftEnabled3;
			float _DecalHueShift3;
			float _DecalHueShiftSpeed3;
			float _Decal3Depth;
			float _Decal3HueAngleStrength;
			#endif
			//ifex float(1)==0
			#ifdef _LIGHTINGMODE_TEXTURERAMP
			UNITY_DECLARE_TEX2D(_ToonRamp);
			#endif
			float _ShadowOffset;
			float _ShadowStrength;
			float _LightingIgnoreAmbientColor;
			float _LightingGradientStart;
			float _LightingGradientEnd;
			float3 _LightingShadowColor;
			float _LightingGradientStartWrap;
			float _LightingGradientEndWrap;
			#ifdef _LIGHTINGMODE_SHADEMAP
			float3 _1st_ShadeColor;
			#if defined(PROP_1ST_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _1st_ShadeMap;
			#endif
			float4 _1st_ShadeMap_ST;
			float2 _1st_ShadeMapPan;
			float _1st_ShadeMapUV;
			float _Use_1stShadeMapAlpha_As_ShadowMask;
			float _1stShadeMapMask_Inverse;
			float _Use_BaseAs1st;
			float3 _2nd_ShadeColor;
			#if defined(PROP_2ND_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _2nd_ShadeMap;
			#endif
			float4 _2nd_ShadeMap_ST;
			float2 _2nd_ShadeMapPan;
			float _2nd_ShadeMapUV;
			float _Use_2ndShadeMapAlpha_As_ShadowMask;
			float _2ndShadeMapMask_Inverse;
			float _Use_1stAs2nd;
			float _BaseColor_Step;
			float _BaseShade_Feather;
			float _ShadeColor_Step;
			float _1st2nd_Shades_Feather;
			float _ShadingShadeMapBlendType;
			#endif
			sampler2D _SkinLUT;
			float _SssScale;
			float _SssBumpBlur;
			float3 _SssTransmissionAbsorption;
			float3 _SssColorBleedAoWeights;
			#ifdef _LIGHTINGMODE_MULTILAYER_MATH
			float4 _ShadowColor;
			float _LightingMulitlayerNonLinear;
			#if defined(PROP_SHADOWCOLORTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ShadowColorTex;
			float4 _ShadowColorTex_ST;
			float2 _ShadowColorTexPan;
			float _ShadowColorTexUV;
			#endif
			#if defined(PROP_MULTILAYERMATHBLURMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MultilayerMathBlurMap;
			float4 _MultilayerMathBlurMap_ST;
			float2 _MultilayerMathBlurMapPan;
			float _MultilayerMathBlurMapUV;
			#endif
			float _ShadowBorder;
			float _ShadowBlur;
			float4 _Shadow2ndColor;
			#if defined(PROP_SHADOW2NDCOLORTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Shadow2ndColorTex;
			float4 _Shadow2ndColorTex_ST;
			float2 _Shadow2ndColorTexPan;
			float _Shadow2ndColorTexUV;
			#endif
			float _Shadow2ndBorder;
			float _Shadow2ndBlur;
			float4 _Shadow3rdColor;
			#if defined(PROP_SHADOW3RDCOLORTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Shadow3rdColorTex;
			float4 _Shadow3rdColorTex_ST;
			float2 _Shadow3rdColorTexPan;
			float _Shadow3rdColorTexUV;
			#endif
			float _Shadow3rdBorder;
			float _Shadow3rdBlur;
			float4 _ShadowBorderColor;
			float _ShadowBorderRange;
			#endif
			#ifdef _LIGHTINGMODE_CLOTH
			Texture2D_float _ClothDFG;
			SamplerState sampler_ClothDFG;
			#if defined(PROP_CLOTHMETALLICSMOOTHNESSMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ClothMetallicSmoothnessMap;
			#endif
			float4 _ClothMetallicSmoothnessMap_ST;
			float2 _ClothMetallicSmoothnessMapPan;
			float _ClothMetallicSmoothnessMapUV;
			float _ClothMetallicSmoothnessMapInvert;
			float _ClothMetallic;
			float _ClothReflectance;
			float _ClothSmoothness;
			#endif
			#ifdef _LIGHTINGMODE_SDF
			#if defined(PROP_SDFSHADINGTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _SDFShadingTexture;
			float _SDFShadingTextureUV;
			float2 _SDFShadingTexturePan;
			float4 _SDFShadingTexture_ST;
			float _SDFBlur;
			float4 _SDFForward;
			float4 _SDFLeft;
			#endif
			#endif
			float _LightingAdditiveType;
			float _LightingAdditiveGradientStart;
			float _LightingAdditiveGradientEnd;
			float _LightingAdditiveDetailStrength;
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			#ifdef POI_AL_DECAL
			float _ALDecalUV;
			float4 _ALUVScale;
			float2 _ALUVPosition;
			float _ALUVRotation;
			float _ALUVRotationSpeed;
			float4 _ALDecaldCircleDimensions;
			float _ALDecalUVMode;
			float _ALDecalVolumeStep;
			float _ALDecalVolumeClipMin;
			float _ALDecalVolumeClipMax;
			float _ALDecalBandStep;
			float _ALDecalBandClipMin;
			float _ALDecalBandClipMax;
			float _ALDecalShapeClip;
			float _ALDecalShapeClipVolumeWidth;
			float _ALDecalShapeClipBandWidth;
			#if defined(PROP_ALDECALCOLORMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ALDecalColorMask;
			float4 _ALDecalColorMask_ST;
			float2 _ALDecalColorMaskPan;
			float _ALDecalColorMaskUV;
			#endif
			float _ALDecalVolume;
			float _ALDecalBaseBoost;
			float _ALDecalTrebleBoost;
			float _ALDecalLineWidth;
			float _ALDecalVolumeColorSource;
			float3 _ALDecalVolumeColorLow;
			float3 _ALDecalVolumeColorMid;
			float3 _ALDecalVolumeColorHigh;
			float _ALDecalLowEmission;
			float _ALDecalMidEmission;
			float _ALDecalHighEmission;
			float _ALDecalBlendType;
			float _ALDecalBlendAlpha;
			float _ALDecalControlsAlpha;
			#endif
			#endif
			//ifex float(1)==0
			#ifdef _GLOSSYREFLECTIONS_OFF
			float _Is_NormalMapToRimLight;
			float4 _RimLightColor;
			float _RimLightColorThemeIndex;
			#ifdef _RIMSTYLE_POIYOMI
			float _RimLightingInvert;
			float _RimWidth;
			float _RimStrength;
			float _RimSharpness;
			float _RimBaseColorMix;
			float _ShadowMix;
			float _ShadowMixThreshold;
			float _ShadowMixWidthMod;
			float _EnableRimLighting;
			float _RimWidthNoiseStrength;
			float4 _RimShadowAlpha;
			float _RimShadowWidth;
			float _RimBlendStrength;
			float _RimBlendMode;
			float _RimShadowToggle;
			float _RimPower;
			float _RimShadowMaskStrength;
			float _RimShadowMaskRampType;
			float _RimBrightness;
			#if defined(PROP_RIMTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimTex;
			#endif
			float4 _RimTex_ST;
			float2 _RimTexPan;
			float _RimTexUV;
			#if defined(PROP_RIMMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimMask;
			#endif
			float4 _RimMask_ST;
			float2 _RimMaskPan;
			float _RimMaskUV;
			#if defined(PROP_RIMWIDTHNOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimWidthNoiseTexture;
			#endif
			float4 _RimWidthNoiseTexture_ST;
			float2 _RimWidthNoiseTexturePan;
			float _RimWidthNoiseTextureUV;
			#ifdef POI_AUDIOLINK
			half _AudioLinkRimWidthBand;
			float2 _AudioLinkRimWidthAdd;
			half _AudioLinkRimEmissionBand;
			float2 _AudioLinkRimEmissionAdd;
			half _AudioLinkRimBrightnessBand;
			float2 _AudioLinkRimBrightnessAdd;
			#endif
			#endif
			#ifdef _RIMSTYLE_UTS2
			float _RimLight;
			float _Is_LightColor_RimLight;
			float _RimLight_Power;
			float _RimLight_InsideMask;
			float _RimLight_FeatherOff;
			float _LightDirection_MaskOn;
			float _Tweak_LightDirection_MaskLevel;
			float _Add_Antipodean_RimLight;
			float4 _Ap_RimLightColor;
			float _RimApColorThemeIndex;
			float _Is_LightColor_Ap_RimLight;
			float _Ap_RimLight_Power;
			float _Ap_RimLight_FeatherOff;
			#if defined(PROP_SET_RIMLIGHTMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Set_RimLightMask;
			float4 _Set_RimLightMask_ST;
			float2 _Set_RimLightMaskPan;
			float _Set_RimLightMaskUV;
			#endif
			float _Tweak_RimLightMaskLevel;
			#endif
			float _RimHueShiftEnabled;
			float _RimHueShiftSpeed;
			float _RimHueShift;
			#endif
			//ifex float(1)==0
			#ifdef _SUNDISK_SIMPLE
			float _GlitterUV;
			half3 _GlitterColor;
			float _GlitterColorThemeIndex;
			float2 _GlitterPan;
			half _GlitterSpeed;
			half _GlitterBrightness;
			float _GlitterFrequency;
			float _GlitterJitter;
			half _GlitterSize;
			half _GlitterContrast;
			half _GlitterAngleRange;
			half _GlitterMinBrightness;
			half _GlitterBias;
			fixed _GlitterUseSurfaceColor;
			float _GlitterBlendType;
			float _GlitterMode;
			float _GlitterShape;
			float _GlitterCenterSize;
			float _glitterFrequencyLinearEmissive;
			float _GlitterJaggyFix;
			float _GlitterTextureRotation;
			float2 _GlitterUVPanning;
			float _GlitterHueShiftEnabled;
			float _GlitterHueShiftSpeed;
			float _GlitterHueShift;
			float _GlitterHideInShadow;
			float _GlitterRandomColors;
			float2 _GlitterMinMaxSaturation;
			float2 _GlitterMinMaxBrightness;
			float _GlitterRandomSize;
			float4 _GlitterMinMaxSize;
			float _GlitterRandomRotation;
			#if defined(PROP_GLITTERMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterMask;
			#endif
			float4 _GlitterMask_ST;
			float2 _GlitterMaskPan;
			float _GlitterMaskUV;
			#if defined(PROP_GLITTERCOLORMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterColorMap;
			#endif
			float4 _GlitterColorMap_ST;
			float2 _GlitterColorMapPan;
			float _GlitterColorMapUV;
			#if defined(PROP_GLITTERTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterTexture;
			#endif
			float4 _GlitterTexture_ST;
			float2 _GlitterTexturePan;
			float _GlitterTextureUV;
			#endif
			//ifex float(1)==0 && float(0)==0
			float4 _MochieReflCube_HDR;
			//ifex float(1)==0
			#ifdef MOCHIE_PBR
			#if defined(PROP_MOCHIEMETALLICMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MochieMetallicMaps;
			#endif
			float4 _MochieMetallicMaps_ST;
			float2 _MochieMetallicMapsPan;
			float _MochieMetallicMapsUV;
			float _MochieMetallicMapInvert;
			float _MochieRoughnessMapInvert;
			float _MochieReflectionMaskInvert;
			float _MochieSpecularMaskInvert;
			float _MochieReflectionTintThemeIndex;
			float _MochieSpecularTintThemeIndex;
			float _MochieRoughnessMultiplier;
			float _MochieMetallicMultiplier;
			float _MochieReflectionStrength;
			float _MochieSpecularStrength;
			float4 _MochieSpecularTint;
			float4 _MochieReflectionTint;
			float _MochieLitFallback;
			float _IgnoreCastedShadows;
			float _PBRSplitMaskSample;
			float4 _PBRMaskScaleTiling;
			float _MochieMetallicMasksUV;
			float4 _MochieMetallicMasksPan;
			float _Specular2ndLayer;
			float _MochieSpecularStrength2;
			float _MochieRoughnessMultiplier2;
			float _RefSpecFresnel;
			samplerCUBE _MochieReflCube;
			float _MochieForceFallback;
			float _MochieGSAAEnabled;
			float _PoiGSAAVariance;
			float _PoiGSAAThreshold;
			float _BRDFTPSReflectionMaskStrength;
			float _BRDFTPSSpecularMaskStrength;
			float _BRDFTPSDepthEnabled;
			#endif
			//ifex float(1)==0
			#ifdef POI_IRIDESCENCE
			#if defined(PROP_IRIDESCENCERAMP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceRamp;
			#endif
			float4 _IridescenceRamp_ST;
			float2 _IridescenceRampPan;
			#if defined(PROP_IRIDESCENCEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceMask;
			#endif
			float4 _IridescenceMask_ST;
			float2 _IridescenceMaskPan;
			float _IridescenceMaskUV;
			#if defined(PROP_IRIDESCENCENORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceNormalMap;
			#endif
			float4 _IridescenceNormalMap_ST;
			float2 _IridescenceNormalMapPan;
			float _IridescenceNormalMapUV;
			float _IridescenceIntensity;
			float _IridescenceHueShiftEnabled;
			float _IridescenceHueShiftSpeed;
			float _IridescenceHueShift;
			float _IridescenceNormalSelection;
			float _IridescenceNormalIntensity;
			float _IridescenceNormalToggle;
			float _IridescenceAddBlend;
			float _IridescenceReplaceBlend;
			float _IridescenceMultiplyBlend;
			float _IridescenceEmissionStrength;
			#ifdef POI_AUDIOLINK
			float _IridescenceAudioLinkEmissionAddBand;
			float2 _IridescenceAudioLinkEmissionAdd;
			#endif
			#endif
			float _PPLightingMultiplier;
			float _PPLightingAddition;
			float _PPEmissionMultiplier;
			float _PPFinalColorMultiplier;
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct v2f
			{
				float4 pos : SV_POSITION;
				float2 uv[4] : TEXCOORD0;
				float3 objNormal : TEXCOORD4;
				float3 normal : TEXCOORD5;
				float3 tangent : TEXCOORD6;
				float3 binormal : TEXCOORD7;
				float4 worldPos : TEXCOORD8;
				float4 localPos : TEXCOORD9;
				float3 objectPos : TEXCOORD10;
				float4 vertexColor : TEXCOORD11;
				float4 lightmapUV : TEXCOORD12;
				float4 grabPos: TEXCOORD13;
				float4 worldDirection: TEXCOORD14;
				UNITY_SHADOW_COORDS(15)
				UNITY_FOG_COORDS(16)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			struct PoiMesh
			{
				float3 normals[2];
				float3 objNormal;
				float3 tangentSpaceNormal;
				float3 binormal;
				float3 tangent;
				float3 worldPos;
				float3 localPos;
				float3 objectPosition;
				float isFrontFace;
				float4 vertexColor;
				float4 lightmapUV;
				float2 uv[8];
				float2 parallaxUV;
			};
			struct PoiCam
			{
				float3 viewDir;
				float3 forwardDir;
				float3 worldPos;
				float distanceToVert;
				float4 clipPos;
				float3 reflectionDir;
				float3 vertexReflectionDir;
				float3 tangentViewDir;
				float4 grabPos;
				float2 screenUV;
				float vDotN;
				float4 worldDirection;
			};
			struct PoiMods
			{
				float4 Mask;
				float4 audioLink;
				float audioLinkAvailable;
				float audioLinkVersion;
				float4 audioLinkTexture;
				float audioLinkViaLuma;
				float2 detailMask;
				float2 backFaceDetailIntensity;
				float globalEmission;
				float4 globalColorTheme[12];
				float ALTime[8];
			};
			struct PoiLight
			{
				float3 direction;
				float attenuation;
				float attenuationStrength;
				float3 directColor;
				float3 indirectColor;
				float occlusion;
				float shadowMask;
				float detailShadow;
				float3 halfDir;
				float lightMap;
				float3 rampedLightMap;
				float vertexNDotL;
				float nDotL;
				float nDotV;
				float vertexNDotV;
				float nDotH;
				float vertexNDotH;
				float lDotv;
				float lDotH;
				float nDotLSaturated;
				float nDotLNormalized;
				#ifdef POI_PASS_ADD
				float additiveShadow;
				#endif
				float3 finalLighting;
				float3 finalLightAdd;
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float4 vDotNL;
				float4 vertexVDotNL;
				float3 vColor[4];
				float4 vCorrectedDotNL;
				float4 vAttenuation;
				float4 vAttenuationDotNL;
				float3 vPosition[4];
				float3 vDirection[4];
				float3 vFinalLighting;
				float3 vHalfDir[4];
				half4 vDotNH;
				half4 vertexVDotNH;
				half4 vDotLH;
				#endif
			};
			struct PoiVertexLights
			{
				float3 direction;
				float3 color;
				float attenuation;
			};
			struct PoiFragData
			{
				float3 baseColor;
				float3 finalColor;
				float alpha;
				float3 emission;
			};
			float2 poiUV(float2 uv, float4 tex_st)
			{
				return uv * tex_st.xy + tex_st.zw;
			}
			float calculateluminance(float3 color)
			{
				return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
			}
			bool IsInMirror()
			{
				return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
			}
			bool IsOrthographicCamera()
			{
				return unity_OrthoParams.w == 1 || UNITY_MATRIX_P[3][3] == 1;
			}
			float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
			{
				float R0 = max(0, L0);
				float3 R1 = 0.5f * L1;
				float lenR1 = length(R1);
				float q = dot(normalize(R1), n) * 0.5 + 0.5;
				q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
				float p = 1.0f + 2.0f * lenR1 / R0;
				float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
				return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
			}
			half3 BetterSH9(half4 normal)
			{
				float3 indirect;
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
				indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
				indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
				indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
				indirect = max(0, indirect);
				indirect += SHEvalLinearL2(normal);
				return indirect;
			}
			float3 getCameraForward()
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1));
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1));
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				return normalize(p2 - p1);
			}
			half3 GetSHLength()
			{
				half3 x, x1;
				x.r = length(unity_SHAr);
				x.g = length(unity_SHAg);
				x.b = length(unity_SHAb);
				x1.r = length(unity_SHBr);
				x1.g = length(unity_SHBg);
				x1.b = length(unity_SHBb);
				return x + x1;
			}
			float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			float poiMax(float2 i)
			{
				return max(i.x, i.y);
			}
			float poiMax(float3 i)
			{
				return max(max(i.x, i.y), i.z);
			}
			float poiMax(float4 i)
			{
				return max(max(max(i.x, i.y), i.z), i.w);
			}
			float3 calculateNormal(in float3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in float4 normal_ST, in float2 normalPan, in float normalUV, in float normalIntensity)
			{
				float3 normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(normalTexture, _MainTex, poiUV(poiMesh.uv[normalUV], normal_ST), normalPan), normalIntensity);
				return normalize(
				normal.x * poiMesh.tangent +
				normal.y * poiMesh.binormal +
				normal.z * baseNormal
				);
			}
			float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float2 remapClamped(float2 minOld, float2 maxOld, float2 x, float2 minNew, float2 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float3 remapClamped(float3 minOld, float3 maxOld, float3 x, float3 minNew, float3 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float4 remapClamped(float4 minOld, float4 maxOld, float4 x, float4 minNew, float4 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float2 calcParallax(in float height, in PoiCam poiCam)
			{
				return ((height * - 1) + 1) * (poiCam.tangentViewDir.xy / poiCam.tangentViewDir.z);
			}
			float4 poiBlend(const float sourceFactor, const  float4 sourceColor, const  float destinationFactor, const  float4 destinationColor, const float4 blendFactor)
			{
				float4 sA = 1 - blendFactor;
				const float4 blendData[11] = {
					float4(0.0, 0.0, 0.0, 0.0),
					float4(1.0, 1.0, 1.0, 1.0),
					destinationColor,
					sourceColor,
					float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sA,
					saturate(sourceColor.aaaa),
					1 - sA,
				};
				return lerp(blendData[sourceFactor] * sourceColor + blendData[destinationFactor] * destinationColor, sourceColor, sA);
			}
			float3 blendAverage(float3 base, float3 blend)
			{
				return (base + blend) / 2.0;
			}
			float blendColorBurn(float base, float blend)
			{
				return (blend == 0.0)?blend : max((1.0 - ((1.0 - base) / blend)), 0.0);
			}
			float3 blendColorBurn(float3 base, float3 blend)
			{
				return float3(blendColorBurn(base.r, blend.r), blendColorBurn(base.g, blend.g), blendColorBurn(base.b, blend.b));
			}
			float blendColorDodge(float base, float blend)
			{
				return (blend == 1.0)?blend : min(base / (1.0 - blend), 1.0);
			}
			float3 blendColorDodge(float3 base, float3 blend)
			{
				return float3(blendColorDodge(base.r, blend.r), blendColorDodge(base.g, blend.g), blendColorDodge(base.b, blend.b));
			}
			float blendDarken(float base, float blend)
			{
				return min(blend, base);
			}
			float3 blendDarken(float3 base, float3 blend)
			{
				return float3(blendDarken(base.r, blend.r), blendDarken(base.g, blend.g), blendDarken(base.b, blend.b));
			}
			float3 blendExclusion(float3 base, float3 blend)
			{
				return base + blend - 2.0 * base * blend;
			}
			float blendReflect(float base, float blend)
			{
				return (blend == 1.0)?blend : min(base * base / (1.0 - blend), 1.0);
			}
			float3 blendReflect(float3 base, float3 blend)
			{
				return float3(blendReflect(base.r, blend.r), blendReflect(base.g, blend.g), blendReflect(base.b, blend.b));
			}
			float3 blendGlow(float3 base, float3 blend)
			{
				return blendReflect(blend, base);
			}
			float blendOverlay(float base, float blend)
			{
				return base < 0.5?(2.0 * base * blend) : (1.0 - 2.0 * (1.0 - base) * (1.0 - blend));
			}
			float3 blendOverlay(float3 base, float3 blend)
			{
				return float3(blendOverlay(base.r, blend.r), blendOverlay(base.g, blend.g), blendOverlay(base.b, blend.b));
			}
			float3 blendHardLight(float3 base, float3 blend)
			{
				return blendOverlay(blend, base);
			}
			float blendVividLight(float base, float blend)
			{
				return (blend < 0.5)?blendColorBurn(base, (2.0 * blend)) : blendColorDodge(base, (2.0 * (blend - 0.5)));
			}
			float3 blendVividLight(float3 base, float3 blend)
			{
				return float3(blendVividLight(base.r, blend.r), blendVividLight(base.g, blend.g), blendVividLight(base.b, blend.b));
			}
			float blendHardMix(float base, float blend)
			{
				return (blendVividLight(base, blend) < 0.5)?0.0 : 1.0;
			}
			float3 blendHardMix(float3 base, float3 blend)
			{
				return float3(blendHardMix(base.r, blend.r), blendHardMix(base.g, blend.g), blendHardMix(base.b, blend.b));
			}
			float blendLighten(float base, float blend)
			{
				return max(blend, base);
			}
			float3 blendLighten(float3 base, float3 blend)
			{
				return float3(blendLighten(base.r, blend.r), blendLighten(base.g, blend.g), blendLighten(base.b, blend.b));
			}
			float blendLinearBurn(float base, float blend)
			{
				return max(base + blend - 1.0, 0.0);
			}
			float3 blendLinearBurn(float3 base, float3 blend)
			{
				return max(base + blend - float3(1.0, 1.0, 1.0), float3(0.0, 0.0, 0.0));
			}
			float blendLinearDodge(float base, float blend)
			{
				return min(base + blend, 1.0);
			}
			float3 blendLinearDodge(float3 base, float3 blend)
			{
				return min(base + blend, float3(1.0, 1.0, 1.0));
			}
			float blendLinearLight(float base, float blend)
			{
				return blend < 0.5?blendLinearBurn(base, (2.0 * blend)) : blendLinearDodge(base, (2.0 * (blend - 0.5)));
			}
			float3 blendLinearLight(float3 base, float3 blend)
			{
				return float3(blendLinearLight(base.r, blend.r), blendLinearLight(base.g, blend.g), blendLinearLight(base.b, blend.b));
			}
			float3 blendMultiply(float3 base, float3 blend)
			{
				return base * blend;
			}
			float3 blendNegation(float3 base, float3 blend)
			{
				return float3(1.0, 1.0, 1.0) - abs(float3(1.0, 1.0, 1.0) - base - blend);
			}
			float3 blendNormal(float3 base, float3 blend)
			{
				return blend;
			}
			float3 blendPhoenix(float3 base, float3 blend)
			{
				return min(base, blend) - max(base, blend) + float3(1.0, 1.0, 1.0);
			}
			float blendPinLight(float base, float blend)
			{
				return (blend < 0.5)?blendDarken(base, (2.0 * blend)) : blendLighten(base, (2.0 * (blend - 0.5)));
			}
			float3 blendPinLight(float3 base, float3 blend)
			{
				return float3(blendPinLight(base.r, blend.r), blendPinLight(base.g, blend.g), blendPinLight(base.b, blend.b));
			}
			float blendScreen(float base, float blend)
			{
				return 1.0 - ((1.0 - base) * (1.0 - blend));
			}
			float3 blendScreen(float3 base, float3 blend)
			{
				return float3(blendScreen(base.r, blend.r), blendScreen(base.g, blend.g), blendScreen(base.b, blend.b));
			}
			float blendSoftLight(float base, float blend)
			{
				return (blend < 0.5)?(2.0 * base * blend + base * base * (1.0 - 2.0 * blend)) : (sqrt(base) * (2.0 * blend - 1.0) + 2.0 * base * (1.0 - blend));
			}
			float3 blendSoftLight(float3 base, float3 blend)
			{
				return float3(blendSoftLight(base.r, blend.r), blendSoftLight(base.g, blend.g), blendSoftLight(base.b, blend.b));
			}
			float blendSubtract(float base, float blend)
			{
				return max(base - blend, 0.0);
			}
			float3 blendSubtract(float3 base, float3 blend)
			{
				return max(base - blend, 0.0);
			}
			float blendDifference(float base, float blend)
			{
				return abs(base - blend);
			}
			float3 blendDifference(float3 base, float3 blend)
			{
				return abs(base - blend);
			}
			float blendDivide(float base, float blend)
			{
				return base / max(blend, 0.0001);
			}
			float3 blendDivide(float3 base, float3 blend)
			{
				return base / max(blend, 0.0001);
			}
			float3 customBlend(float3 base, float3 blend, float blendType)
			{
				float3 ret = 0;
				switch(blendType)
				{
					case 0:
					{
						ret = blendNormal(base, blend);
						break;
					}
					case 1:
					{
						ret = blendDarken(base, blend);
						break;
					}
					case 2:
					{
						ret = blendMultiply(base, blend);
						break;
					}
					case 3:
					{
						ret = blendColorBurn(base, blend);
						break;
					}
					case 4:
					{
						ret = blendLinearBurn(base, blend);
						break;
					}
					case 5:
					{
						ret = blendLighten(base, blend);
						break;
					}
					case 6:
					{
						ret = blendScreen(base, blend);
						break;
					}
					case 7:
					{
						ret = blendColorDodge(base, blend);
						break;
					}
					case 8:
					{
						ret = blendLinearDodge(base, blend);
						break;
					}
					case 9:
					{
						ret = blendOverlay(base, blend);
						break;
					}
					case 10:
					{
						ret = blendSoftLight(base, blend);
						break;
					}
					case 11:
					{
						ret = blendHardLight(base, blend);
						break;
					}
					case 12:
					{
						ret = blendVividLight(base, blend);
						break;
					}
					case 13:
					{
						ret = blendLinearLight(base, blend);
						break;
					}
					case 14:
					{
						ret = blendPinLight(base, blend);
						break;
					}
					case 15:
					{
						ret = blendHardMix(base, blend);
						break;
					}
					case 16:
					{
						ret = blendDifference(base, blend);
						break;
					}
					case 17:
					{
						ret = blendExclusion(base, blend);
						break;
					}
					case 18:
					{
						ret = blendSubtract(base, blend);
						break;
					}
					case 19:
					{
						ret = blendDivide(base, blend);
						break;
					}
				}
				return ret;
			}
			float random(float2 p)
			{
				return frac(sin(dot(p, float2(12.9898, 78.2383))) * 43758.5453123);
			}
			float2 random2(float2 p)
			{
				return frac(sin(float2(dot(p, float2(127.1, 311.7)), dot(p, float2(269.5, 183.3)))) * 43758.5453);
			}
			float3 random3(float3 p)
			{
				return frac(sin(float3(dot(p, float3(127.1, 311.7, 248.6)), dot(p, float3(269.5, 183.3, 423.3)), dot(p, float3(248.3, 315.9, 184.2)))) * 43758.5453);
			}
			float3 randomFloat3(float2 Seed, float maximum)
			{
				return (.5 + float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed), float2(12.9898, 78.233))) * 43758.5453)
				) * .5) * (maximum);
			}
			float3 randomFloat3Range(float2 Seed, float Range)
			{
				return (float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1) * Range;
			}
			float3 randomFloat3WiggleRange(float2 Seed, float Range, float wiggleSpeed)
			{
				float3 rando = (float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1);
				float speed = 1 + wiggleSpeed;
				return float3(sin((_Time.x + rando.x * PI) * speed), sin((_Time.x + rando.y * PI) * speed), sin((_Time.x + rando.z * PI) * speed)) * Range;
			}
			void poiDither(float4 In, float4 ScreenPosition, out float4 Out)
			{
				float2 uv = ScreenPosition.xy * _ScreenParams.xy;
				float DITHER_THRESHOLDS[16] = {
					1.0 / 17.0, 9.0 / 17.0, 3.0 / 17.0, 11.0 / 17.0,
					13.0 / 17.0, 5.0 / 17.0, 15.0 / 17.0, 7.0 / 17.0,
					4.0 / 17.0, 12.0 / 17.0, 2.0 / 17.0, 10.0 / 17.0,
					16.0 / 17.0, 8.0 / 17.0, 14.0 / 17.0, 6.0 / 17.0
				};
				uint index = (uint(uv.x) % 4) * 4 + uint(uv.y) % 4;
				Out = In - DITHER_THRESHOLDS[index];
			}
			static const float Epsilon = 1e-10;
			static const float3 HCYwts = float3(0.299, 0.587, 0.114);
			static const float HCLgamma = 3;
			static const float HCLy0 = 100;
			static const float HCLmaxL = 0.530454533953517; // == exp(HCLgamma / HCLy0) - 0.5
			static const float3 wref = float3(1.0, 1.0, 1.0);
			#define TAU 6.28318531
			float3 HUEtoRGB(in float H)
			{
				float R = abs(H * 6 - 3) - 1;
				float G = 2 - abs(H * 6 - 2);
				float B = 2 - abs(H * 6 - 4);
				return saturate(float3(R, G, B));
			}
			float3 RGBtoHCV(in float3 RGB)
			{
				float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
				float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
				float C = Q.x - min(Q.w, Q.y);
				float H = abs((Q.w - Q.y) / (6 * C + Epsilon) + Q.z);
				return float3(H, C, Q.x);
			}
			float3 HSVtoRGB(in float3 HSV)
			{
				float3 RGB = HUEtoRGB(HSV.x);
				return ((RGB - 1) * HSV.y + 1) * HSV.z;
			}
			float3 RGBtoHSV(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float S = HCV.y / (HCV.z + Epsilon);
				return float3(HCV.x, S, HCV.z);
			}
			float3 HSLtoRGB(in float3 HSL)
			{
				float3 RGB = HUEtoRGB(HSL.x);
				float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
				return (RGB - 0.5) * C + HSL.z;
			}
			float3 RGBtoHSL(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float L = HCV.z - HCV.y * 0.5;
				float S = HCV.y / (1 - abs(L * 2 - 1) + Epsilon);
				return float3(HCV.x, S, L);
			}
			float3 hueShift(float3 color, float hueOffset)
			{
				color = RGBtoHSV(color);
				color.x = frac(hueOffset +color.x);
				return HSVtoRGB(color);
			}
			float xyzF(float t)
			{
				return lerp(pow(t, 1. / 3.), 7.787037 * t + 0.139731, step(t, 0.00885645));
			}
			float xyzR(float t)
			{
				return lerp(t * t * t, 0.1284185 * (t - 0.139731), step(t, 0.20689655));
			}
			float4x4 poiRotationMatrixFromAngles(float x, float y, float z)
			{
				float angleX = radians(x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				float angleY = radians(y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				float angleZ = radians(z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			float4x4 poiRotationMatrixFromAngles(float3 angles)
			{
				float angleX = radians(angles.x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				float angleY = radians(angles.y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				float angleZ = radians(angles.z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			float3 getCameraPosition()
			{
				#ifdef USING_STEREO_MATRICES
				return lerp(unity_StereoWorldSpaceCameraPos[0], unity_StereoWorldSpaceCameraPos[1], 0.5);
				#endif
				return _WorldSpaceCameraPos;
			}
			half2 calcScreenUVs(half4 grabPos)
			{
				half2 uv = grabPos.xy / (grabPos.w + 0.0000000001);
				#if UNITY_SINGLE_PASS_STEREO
				uv.xy *= half2(_ScreenParams.x * 2, _ScreenParams.y);
				#else
				uv.xy *= _ScreenParams.xy;
				#endif
				return uv;
			}
			float CalcMipLevel(float2 texture_coord)
			{
				float2 dx = ddx(texture_coord);
				float2 dy = ddy(texture_coord);
				float delta_max_sqr = max(dot(dx, dx), dot(dy, dy));
				return 0.5 * log2(delta_max_sqr);
			}
			float inverseLerp(float A, float B, float T)
			{
				return (T - A) / (B - A);
			}
			float inverseLerp2(float2 a, float2 b, float2 value)
			{
				float2 AB = b - a;
				float2 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			float inverseLerp3(float3 a, float3 b, float3 value)
			{
				float3 AB = b - a;
				float3 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			float inverseLerp4(float4 a, float4 b, float4 value)
			{
				float4 AB = b - a;
				float4 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			float4 quaternion_conjugate(float4 v)
			{
				return float4(
				v.x, -v.yzw
				);
			}
			float4 quaternion_mul(float4 v1, float4 v2)
			{
				float4 result1 = (v1.x * v2 + v1 * v2.x);
				float4 result2 = float4(
				- dot(v1.yzw, v2.yzw),
				cross(v1.yzw, v2.yzw)
				);
				return float4(result1 + result2);
			}
			float4 get_quaternion_from_angle(float3 axis, float angle)
			{
				float sn = sin(angle * 0.5);
				float cs = cos(angle * 0.5);
				return float4(axis * sn, cs);
			}
			float4 quaternion_from_vector(float3 inVec)
			{
				return float4(0.0, inVec);
			}
			float degree_to_radius(float degree)
			{
				return (
				degree / 180.0 * PI
				);
			}
			float3 rotate_with_quaternion(float3 inVec, float3 rotation)
			{
				float4 qx = get_quaternion_from_angle(float3(1, 0, 0), radians(rotation.x));
				float4 qy = get_quaternion_from_angle(float3(0, 1, 0), radians(rotation.y));
				float4 qz = get_quaternion_from_angle(float3(0, 0, 1), radians(rotation.z));
				#define MUL3(A, B, C) quaternion_mul(quaternion_mul((A), (B)), (C))
				float4 quaternion = normalize(MUL3(qx, qy, qz));
				float4 conjugate = quaternion_conjugate(quaternion);
				float4 inVecQ = quaternion_from_vector(inVec);
				float3 rotated = (
				MUL3(quaternion, inVecQ, conjugate)
				).yzw;
				return rotated;
			}
			float4 transform(float4 input, float4 pos, float4 rotation, float4 scale)
			{
				input.rgb *= (scale.xyz * scale.w);
				input = float4(rotate_with_quaternion(input.xyz, rotation.xyz * rotation.w) + (pos.xyz * pos.w), input.w);
				return input;
			}
			float3 poiThemeColor(in PoiMods poiMods, in float3 srcColor, in float themeIndex)
			{
				if (themeIndex == 0) return srcColor;
				themeIndex -= 1;
				if (themeIndex <= 3)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				#endif
				return srcColor;
			}
			float lilIsIn0to1(float f)
			{
				float value = 0.5 - abs(f - 0.5);
				return saturate(value / clamp(fwidth(value), 0.0001, 1.0));
			}
			float lilIsIn0to1(float f, float nv)
			{
				float value = 0.5 - abs(f - 0.5);
				return saturate(value / clamp(fwidth(value), 0.0001, nv));
			}
			float poiEdgeLinearNoSaturate(float value, float border)
			{
				return (value - border) / clamp(fwidth(value), 0.0001, 1.0);
			}
			float poiEdgeLinearNoSaturate(float value, float border, float blur)
			{
				float borderMin = saturate(border - blur * 0.5);
				float borderMax = saturate(border + blur * 0.5);
				return (value - borderMin) / saturate(borderMax - borderMin + fwidth(value));
			}
			float poiEdgeLinearNoSaturate(float value, float border, float blur, float borderRange)
			{
				float borderMin = saturate(border - blur * 0.5 - borderRange);
				float borderMax = saturate(border + blur * 0.5);
				return (value - borderMin) / saturate(borderMax - borderMin + fwidth(value));
			}
			float poiEdgeNonLinearNoSaturate(float value, float border)
			{
				float fwidthValue = fwidth(value);
				return smoothstep(border - fwidthValue, border + fwidthValue, value);
			}
			float poiEdgeNonLinearNoSaturate(float value, float border, float blur)
			{
				float fwidthValue = fwidth(value);
				float borderMin = saturate(border - blur * 0.5);
				float borderMax = saturate(border + blur * 0.5);
				return smoothstep(borderMin - fwidthValue, borderMax + fwidthValue, value);
			}
			float poiEdgeNonLinearNoSaturate(float value, float border, float blur, float borderRange)
			{
				float fwidthValue = fwidth(value);
				float borderMin = saturate(border - blur * 0.5 - borderRange);
				float borderMax = saturate(border + blur * 0.5);
				return smoothstep(borderMin - fwidthValue, borderMax + fwidthValue, value);
			}
			float poiEdgeNonLinear(float value, float border)
			{
				return saturate(poiEdgeNonLinearNoSaturate(value, border));
			}
			float poiEdgeNonLinear(float value, float border, float blur)
			{
				return saturate(poiEdgeNonLinearNoSaturate(value, border, blur));
			}
			float poiEdgeNonLinear(float value, float border, float blur, float borderRange)
			{
				return saturate(poiEdgeNonLinearNoSaturate(value, border, blur, borderRange));
			}
			float poiEdgeLinear(float value, float border)
			{
				return saturate(poiEdgeLinearNoSaturate(value, border));
			}
			float poiEdgeLinear(float value, float border, float blur)
			{
				return saturate(poiEdgeLinearNoSaturate(value, border, blur));
			}
			float poiEdgeLinear(float value, float border, float blur, float borderRange)
			{
				return saturate(poiEdgeLinearNoSaturate(value, border, blur, borderRange));
			}
			float3 OpenLitLinearToSRGB(float3 col)
			{
				return LinearToGammaSpace(col);
			}
			float3 OpenLitSRGBToLinear(float3 col)
			{
				return GammaToLinearSpace(col);
			}
			float OpenLitLuminance(float3 rgb)
			{
				#if defined(UNITY_COLORSPACE_GAMMA)
				return dot(rgb, float3(0.22, 0.707, 0.071));
				#else
				return dot(rgb, float3(0.0396819152, 0.458021790, 0.00609653955));
				#endif
			}
			float OpenLitGray(float3 rgb)
			{
				return dot(rgb, float3(1.0/3.0, 1.0/3.0, 1.0/3.0));
			}
			void OpenLitShadeSH9ToonDouble(float3 lightDirection, out float3 shMax, out float3 shMin)
			{
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
				float3 N = lightDirection * 0.666666;
				float4 vB = N.xyzz * N.yzzx;
				float3 res = float3(unity_SHAr.w,unity_SHAg.w,unity_SHAb.w);
				res.r += dot(unity_SHBr, vB);
				res.g += dot(unity_SHBg, vB);
				res.b += dot(unity_SHBb, vB);
				res += unity_SHC.rgb * (N.x * N.x - N.y * N.y);
				float3 l1;
				l1.r = dot(unity_SHAr.rgb, N);
				l1.g = dot(unity_SHAg.rgb, N);
				l1.b = dot(unity_SHAb.rgb, N);
				shMax = res + l1;
				shMin = res - l1;
				#if defined(UNITY_COLORSPACE_GAMMA)
				shMax = OpenLitLinearToSRGB(shMax);
				shMin = OpenLitLinearToSRGB(shMin);
				#endif
				#else
				shMax = 0.0;
				shMin = 0.0;
				#endif
			}
			float3 OpenLitComputeCustomLightDirection(float4 lightDirectionOverride)
			{
				float3 customDir = length(lightDirectionOverride.xyz) * normalize(mul((float3x3)unity_ObjectToWorld, lightDirectionOverride.xyz));
				return lightDirectionOverride.w ? customDir : lightDirectionOverride.xyz; // .w isn't doc'd anywhere and is always 0 unless end user changes it
			}
			float3 OpenLitLightingDirection(float4 lightDirectionOverride)
			{
				float3 mainDir = _WorldSpaceLightPos0.xyz * OpenLitLuminance(_LightColor0.rgb);
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
				float3 sh9Dir = unity_SHAr.xyz * 0.333333 + unity_SHAg.xyz * 0.333333 + unity_SHAb.xyz * 0.333333;
				float3 sh9DirAbs = float3(sh9Dir.x, abs(sh9Dir.y), sh9Dir.z);
				#else
				float3 sh9Dir = 0;
				float3 sh9DirAbs = 0;
				#endif
				float3 customDir = OpenLitComputeCustomLightDirection(lightDirectionOverride);
				return normalize(sh9DirAbs + mainDir + customDir);
			}
			float3 OpenLitLightingDirection()
			{
				float4 customDir = float4(0.001,0.002,0.001,0.0);
				return OpenLitLightingDirection(customDir);
			}
			inline float4 CalculateFrustumCorrection()
			{
				float x1 = -UNITY_MATRIX_P._31 / (UNITY_MATRIX_P._11 * UNITY_MATRIX_P._34);
				float x2 = -UNITY_MATRIX_P._32 / (UNITY_MATRIX_P._22 * UNITY_MATRIX_P._34);
				return float4(x1, x2, 0, UNITY_MATRIX_P._33 / UNITY_MATRIX_P._34 + x1 * UNITY_MATRIX_P._13 + x2 * UNITY_MATRIX_P._23);
			}
			inline float CorrectedLinearEyeDepth(float z, float B)
			{
				return 1.0 / (z / UNITY_MATRIX_P._34 + B);
			}
			float2 sharpSample( float4 texelSize , float2 p )
			{
				p = p*texelSize.zw;
				float2 c = max(0.0, fwidth(p));
				p = floor(p) + saturate(frac(p) / c);
				p = (p - 0.5)*texelSize.xy;
				return p;
			}
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			float4 AudioLinkDataMultiline(uint2 xycoord) { return AudioLinkData(uint2(xycoord.x % AUDIOLINK_WIDTH, xycoord.y + xycoord.x/AUDIOLINK_WIDTH)); }
			float4 AudioLinkLerp(float2 xy) { return lerp( AudioLinkData(xy), AudioLinkData(xy+int2(1,0)), frac( xy.x ) ); }
			float4 AudioLinkLerpMultiline(float2 xy) { return lerp(AudioLinkDataMultiline(xy), AudioLinkDataMultiline(xy+float2(1,0)), frac(xy.x)); }
			bool AudioLinkIsAvailable()
			{
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				int width, height;
				_AudioTexture.GetDimensions(width, height);
				return width > 16;
				#else
				return _AudioTexture_TexelSize.z > 16;
				#endif
			}
			float AudioLinkGetVersion()
			{
				int2 dims;
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				_AudioTexture.GetDimensions(dims.x, dims.y);
				#else
				dims = _AudioTexture_TexelSize.zw;
				#endif
				if (dims.x >= 128)
				return AudioLinkData(ALPASS_GENERALVU).x;
				else if (dims.x > 16)
				return 1;
				else
				return 0;
			}
			#define AudioLinkGetSelfPixelData(xy) _SelfTexture2D[xy]
			uint AudioLinkDecodeDataAsUInt(uint2 indexloc)
			{
				uint4 rpx = AudioLinkData(indexloc);
				return rpx.r + rpx.g*1024 + rpx.b * 1048576 + rpx.a * 1073741824;
			}
			float AudioLinkDecodeDataAsSeconds(uint2 indexloc)
			{
				uint time = AudioLinkDecodeDataAsUInt(indexloc) & 0x7ffffff;
				return float(time / 1000) + float( time % 1000 ) / 1000.;
			}
			#define ALDecodeDataAsSeconds( x ) AudioLinkDecodeDataAsSeconds( x )
			#define ALDecodeDataAsUInt( x ) AudioLinkDecodeDataAsUInt( x )
			float AudioLinkRemap(float t, float a, float b, float u, float v) { return ((t-a) / (b-a)) * (v-u) + u; }
			float3 AudioLinkHSVtoRGB(float3 HSV)
			{
				float3 RGB = 0;
				float C = HSV.z * HSV.y;
				float H = HSV.x * 6;
				float X = C * (1 - abs(fmod(H, 2) - 1));
				if (HSV.y != 0)
				{
					float I = floor(H);
					if (I == 0) { RGB = float3(C, X, 0); }
					else if (I == 1) { RGB = float3(X, C, 0); }
					else if (I == 2) { RGB = float3(0, C, X); }
					else if (I == 3) { RGB = float3(0, X, C); }
					else if (I == 4) { RGB = float3(X, 0, C); }
					else { RGB = float3(C, 0, X); }
				}
				float M = HSV.z - C;
				return RGB + M;
			}
			float3 AudioLinkCCtoRGB(float bin, float intensity, int rootNote)
			{
				float note = bin / AUDIOLINK_EXPBINS;
				float hue = 0.0;
				note *= 12.0;
				note = glsl_mod(4. - note + rootNote, 12.0);
				{
					if(note < 4.0)
					{
						hue = (note) / 24.0;
					}
					else if(note < 8.0)
					{
						hue = (note-2.0) / 12.0;
					}
					else
					{
						hue = (note - 4.0) / 8.0;
					}
				}
				float val = intensity - 0.1;
				return AudioLinkHSVtoRGB(float3(fmod(hue, 1.0), 1.0, clamp(val, 0.0, 1.0)));
			}
			float4 AudioLinkGetAmplitudeAtFrequency(float hertz)
			{
				float note = AUDIOLINK_EXPBINS * log2(hertz / AUDIOLINK_BOTTOM_FREQUENCY);
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(note, 0));
			}
			float AudioLinkGetAmplitudeAtNote(float octave, float note)
			{
				float quarter = note * 2.0;
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(octave * AUDIOLINK_EXPBINS + quarter, 0));
			}
			float AudioLinkGetChronoTime(uint index, uint band)
			{
				return (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(index, band))) / 100000.0;
			}
			float AudioLinkGetChronoTimeNormalized(uint index, uint band, float speed)
			{
				return frac(AudioLinkGetChronoTime(index, band) * speed);
			}
			float AudioLinkGetChronoTimeInterval(uint index, uint band, float speed, float interval)
			{
				return AudioLinkGetChronoTimeNormalized(index, band, speed) * interval;
			}
			float getBandAtTime(float band, float time, float size = 1.0f)
			{
				return remapClamped(min(size,.9999), 1, AudioLinkData(ALPASS_AUDIOBASS + uint2(time * AUDIOLINK_WIDTH,band)).r);
			}
			fixed3 maximize(fixed3 c) {
				if (c.x == 0 && c.y == 0 && c.z == 0)
				return fixed3(1.0, 1.0, 1.0);
				else
				return c / max(c.r, max(c.g, c.b));
			}
			bool LumaIsAvailable()
			{
				return LumaData(0.629, 0.511).r > 0.9;
			}
			float3 getLumaGradient(uint index, float offset) {
				return LumaData(0.57 + (index * 0.11) + lerp(0, 0.107, offset), 0.493);
			}
			void initPoiAudioLink(inout PoiMods poiMods)
			{
				if (!_AudioLinkAnimToggle) return;
				if (AudioLinkIsAvailable())
				{
					poiMods.audioLinkAvailable = true;
					poiMods.audioLinkVersion = AudioLinkGetVersion();
					poiMods.audioLink.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					poiMods.audioLink.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					poiMods.audioLink.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					poiMods.audioLink.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
					poiMods.globalColorTheme[4] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(2, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[5] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(3, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[6] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(4, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[7] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(5, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[8] = AudioLinkData(ALPASS_THEME_COLOR0);
					poiMods.globalColorTheme[9] = AudioLinkData(ALPASS_THEME_COLOR1);
					poiMods.globalColorTheme[10] = AudioLinkData(ALPASS_THEME_COLOR2);
					poiMods.globalColorTheme[11] = AudioLinkData(ALPASS_THEME_COLOR3);
					return;
				}
				if (LumaIsAvailable())
				{
					float4 audioPixel = LumaData(0.578, 0.515);
					float audioLows = audioPixel.r;
					float audioHighs = audioPixel.g;
					float4 zone1 = LumaData(0.856, 0.522);
					float4 zone2 = LumaData(0.856, 0.507);
					float4 zone3 = LumaData(0.864, 0.522);
					float4 zone4 = LumaData(0.864, 0.507);
					poiMods.audioLinkAvailable = true;
					poiMods.audioLinkViaLuma = true;
					poiMods.audioLink.xy = audioLows;
					poiMods.audioLink.zw = audioHighs;
					poiMods.globalColorTheme[8] = zone1;
					poiMods.globalColorTheme[9] = zone2;
					poiMods.globalColorTheme[10] = zone3;
					poiMods.globalColorTheme[11] = zone4;
				}
			}
			void DebugVisualizer(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods){
				if (_DebugWaveform){
					float waveform = AudioLinkLerpMultiline(ALPASS_WAVEFORM + float2( 500. * poiMesh.uv[0].x, 0)).r;
					poiFragData.emission += clamp(1 - 50 * abs(waveform - poiMesh.uv[0].y * 2. + 1), 0, 1);
				}
				if (_DebugDFT){
					poiFragData.emission += AudioLinkLerpMultiline(ALPASS_DFT + uint2(poiMesh.uv[0].x * AUDIOLINK_ETOTALBINS, 0)).rrr;
				}
				if (_DebugBass){
					poiFragData.emission += poiMods.audioLink.x;
				}
				if (_DebugLowMids){
					poiFragData.emission += poiMods.audioLink.y;
				}
				if (_DebugHighMids){
					poiFragData.emission += poiMods.audioLink.z;
				}
				if (_DebugTreble){
					poiFragData.emission += poiMods.audioLink.w;
				}
				if (_DebugCCColors){
					poiFragData.emission += AudioLinkData(ALPASS_CCCOLORS + uint2(3 + 1, 0));
				}
				if (_DebugCCStrip){
					poiFragData.emission += AudioLinkLerp(ALPASS_CCSTRIP + float2(poiMesh.uv[0].x * AUDIOLINK_WIDTH, 0));
				}
				if (_DebugCCLights){
					poiFragData.emission += AudioLinkData(ALPASS_CCLIGHTS + uint2(uint(poiMesh.uv[0].x * 8) + uint(poiMesh.uv[0].y * 16) * 8, 0));
				}
				if (_DebugAutocorrelator){
					poiFragData.emission += saturate(AudioLinkLerp(ALPASS_AUTOCORRELATOR + float2((abs(1. - poiMesh.uv[0].x * 2.)) * AUDIOLINK_WIDTH, 0)).rrr);
				}
				if (_DebugChronotensity){
					poiFragData.emission += (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY  + uint2(1, 0)) % 1000000) / 1000000.0;
				}
			}
			void SetupAudioLink(inout PoiFragData poiFragData, inout PoiMods poiMods, in PoiMesh poiMesh){
				initPoiAudioLink(poiMods);
				DebugVisualizer(poiFragData, poiMesh, poiMods);
				if(_AudioLinkCCStripY)
				{
					poiFragData.emission += AudioLinkLerp( ALPASS_CCSTRIP + float2( poiMesh.uv[0].y * AUDIOLINK_WIDTH, 0 ) ).rgb * .5;
				}
			}
			#endif
			v2f vert(appdata v)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				PoiInitStruct(v2f, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				o.objectPos = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				o.objNormal = v.normal;
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.tangent = UnityObjectToWorldDir(v.tangent);
				o.binormal = cross(o.normal, o.tangent) * (v.tangent.w * unity_WorldTransformParams.w);
				o.vertexColor = v.color;
				o.uv[0] = v.uv0;
				o.uv[1] = v.uv1;
				o.uv[2] = v.uv2;
				o.uv[3] = v.uv3;
				#if defined(LIGHTMAP_ON)
				o.lightmapUV.xy = v.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				o.localPos.rgb += localOffset;
				o.worldPos.rgb += worldOffset;
				o.pos = UnityObjectToClipPos(o.localPos);
				#ifdef POI_PASS_OUTLINE
				#if defined(UNITY_REVERSED_Z)
				o.pos.z += _Offset_Z * - 0.01;
				#else
				o.pos.z += _Offset_Z * 0.01;
				#endif
				#endif
				o.grabPos = ComputeGrabScreenPos(o.pos);
				#ifndef FORWARD_META_PASS
				#if !defined(UNITY_PASS_SHADOWCASTER)
				UNITY_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				#endif
				UNITY_TRANSFER_FOG(o, o.pos);
				if (float(0))
				{
					if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
					{
						o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					}
				}
				#ifdef POI_PASS_META
				o.pos = UnityMetaVertexPosition(v.vertex, v.uv1.xy, v.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);
				#endif
				#if defined(GRAIN)
				float4 worldDirection;
				worldDirection.xyz = o.worldPos.xyz - _WorldSpaceCameraPos;
				worldDirection.w = dot(o.pos, CalculateFrustumCorrection());
				o.worldDirection = worldDirection;
				#endif
				return o;
			}
			void calculateGlobalThemes(inout PoiMods poiMods)
			{
				poiMods.globalColorTheme[0] = float4(1,1,1,1);
				poiMods.globalColorTheme[1] = float4(1,1,1,1);
				poiMods.globalColorTheme[2] = float4(1,1,1,1);
				poiMods.globalColorTheme[3] = float4(1,1,1,1);
			}
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[float(0)] - float4(0.5,0.5,0,0);
				float radius = length(delta) * 2 * float(1);
				float angle = atan2(delta.x, delta.y) * 1.0 / 6.28 * float(1);
				return float2(radius, angle + distance(poiMesh.uv[float(0)], float4(0.5,0.5,0,0)) * float(0));
			}
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(1.0, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).zw;
			}
			float2 StereoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).zw;
			}
			float2 calculatePanosphereUV(in PoiMesh poiMesh)
			{
				float3 viewDirection = normalize(lerp(getCameraPosition().xyz, _WorldSpaceCameraPos.xyz, float(1)) - poiMesh.worldPos.xyz) * - 1;
				return lerp(MonoPanoProjection(viewDirection), StereoPanoProjection(viewDirection), float(0));
			}
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + float(0));
			}
			//ifex float(1)==0
			#ifdef FINALPASS
			void ApplyDetailColor(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				#if defined(PROP_DETAILTEX) || !defined(OPTIMIZER_ENABLED)
				half3 detailTexture = POI2D_SAMPLER_PAN(_DetailTex, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0)).rgb * poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				#else
				half3 detailTexture = 0.21763764082 * poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				#endif
				poiFragData.baseColor.rgb *= LerpWhiteTo(detailTexture * float(0.912) * unity_ColorSpaceDouble.rgb, poiMods.detailMask.r * float(1.12));
			}
			void ApplyDetailNormal(inout PoiMods poiMods, inout PoiMesh poiMesh)
			{
				#if defined(PROP_DETAILMASK) || !defined(OPTIMIZER_ENABLED)
				poiMods.detailMask = POI2D_SAMPLER_PAN(_DetailMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0)).rg;
				#else
				poiMods.detailMask = 1;
				#endif
				#ifdef POI_BACKFACE
				if (!poiMesh.isFrontFace)
				{
					poiMods.detailMask.g *= float(1);
				}
				#endif
				#if defined(PROP_DETAILNORMALMAP) || !defined(OPTIMIZER_ENABLED)
				half3 detailNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_DetailNormalMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(1) * poiMods.detailMask.g);
				poiMesh.tangentSpaceNormal = BlendNormals(detailNormal, poiMesh.tangentSpaceNormal);
				#endif
			}
			#endif
			//ifex float(1)==0
			#ifdef VIGNETTE
			#if defined(GEOM_TYPE_MESH) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
			void calculateRGBNormals(inout PoiMesh poiMesh)
			{
				float4 rgbMask;
				if (float(0))
				{
					rgbMask = poiMesh.vertexColor;
				}
				else
				{
					#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
					rgbMask = POI2D_SAMPLER_PAN(_RGBMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					rgbMask = 1;
					#endif
				}
				if (float(0))
				{
					if (float(0) == 0)
					{
						if (float(0) > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalR, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.r);
						}
						if (float(0) > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalG, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.g);
						}
						if (float(0) > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalB, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.b);
						}
						if (float(0) > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalA, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.a);
						}
					}
					else
					{
						half3 newNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalR, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0) * rgbMask.r);
						half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalG, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0) * rgbMask.g);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalB, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0) * rgbMask.b);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalA, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0) * rgbMask.a);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						poiMesh.tangentSpaceNormal = BlendNormals(newNormal, poiMesh.tangentSpaceNormal);
					}
				}
			}
			#endif
			void calculateRGBMask(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float4 rgbMask = float4(1, 1, 1, 1);
				if (float(0))
				{
					rgbMask = poiMesh.vertexColor;
				}
				else
				{
					#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
					rgbMask = POI2D_SAMPLER_PAN(_RGBMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					rgbMask = 1;
					#endif
				}
				#if defined(PROP_REDTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 red = POI2D_SAMPLER_PAN(_RedTexture, _MainTex, poiUV(poiMesh.uv[float(1)], _RedTexture_ST), float4(0,0,0,0));
				#else
				float4 red = 1;
				#endif
				#if defined(PROP_GREENTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 green = POI2D_SAMPLER_PAN(_GreenTexture, _MainTex, poiUV(poiMesh.uv[float(1)], _GreenTexture_ST), float4(0,0,0,0));
				#else
				float4 green = 1;
				#endif
				#if defined(PROP_BLUETEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 blue = POI2D_SAMPLER_PAN(_BlueTexture, _MainTex, poiUV(poiMesh.uv[float(1)], float4(0.01,1,0.5,0)), float4(0,0,0,0));
				#else
				float4 blue = 1;
				#endif
				#if defined(PROP_ALPHATEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 alpha = POI2D_SAMPLER_PAN(_AlphaTexture, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 alpha = 1;
				#endif
				float4 maskFinal = 1;
				maskFinal.r = saturate(rgbMask.r + float(0)) * saturate(red.a * float4(1,1,1,1).a);
				maskFinal.g = saturate(rgbMask.g + _GreenAlphaAdd) * saturate(green.a * _GreenColor.a);
				maskFinal.b = saturate(rgbMask.b + float(0)) * saturate(blue.a * float4(1,0,0,0).a);
				maskFinal.a = saturate(rgbMask.a + float(0)) * saturate(alpha.a * float4(1,1,1,0).a);
				if (float(0))
				{
					float3 RGBColor = 1;
					RGBColor = lerp(RGBColor, red.rgb * poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), maskFinal.r);
					RGBColor = lerp(RGBColor, green.rgb * poiThemeColor(poiMods, _GreenColor.rgb, float(0)), maskFinal.g);
					RGBColor = lerp(RGBColor, blue.rgb * poiThemeColor(poiMods, float4(1,0,0,0).rgb, float(0)), maskFinal.b);
					RGBColor = lerp(RGBColor, alpha.rgb * poiThemeColor(poiMods, float4(1,1,1,0).rgb, float(0)), maskFinal.a);
					poiFragData.baseColor *= RGBColor;
				}
				else
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, red.rgb * poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), maskFinal.r);
					poiFragData.baseColor = lerp(poiFragData.baseColor, green.rgb * poiThemeColor(poiMods, _GreenColor.rgb, float(0)), maskFinal.g);
					poiFragData.baseColor = lerp(poiFragData.baseColor, blue.rgb * poiThemeColor(poiMods, float4(1,0,0,0).rgb, float(0)), maskFinal.b);
					poiFragData.baseColor = lerp(poiFragData.baseColor, alpha.rgb * poiThemeColor(poiMods, float4(1,1,1,0).rgb, float(0)), maskFinal.a);
				}
			}
			#endif
			#if defined(GEOM_TYPE_BRANCH) || defined(GEOM_TYPE_BRANCH_DETAIL) || defined(GEOM_TYPE_FROND) || defined(DEPTH_OF_FIELD_COC_VIEW)
			float2 decalUV(float uvNumber, float4 uv_st, float2 position, half rotation, half rotationSpeed, half2 scale, float4 scaleOffset, float depth, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				scaleOffset = float4(-scaleOffset.x, scaleOffset.y, -scaleOffset.z, scaleOffset.w);
				float2 uv = poiUV(poiMesh.uv[uvNumber], uv_st) + calcParallax(depth + 1, poiCam);
				float2 decalCenter = position;
				float theta = radians(rotation + _Time.z * rotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - scale / 2 + position + scaleOffset.xz, scale / 2 + position + scaleOffset.yw, float2(0, 0), float2(1, 1));
				return uv;
			}
			inline float3 decalHueShift(float enabled, float3 color, float shift, float shiftSpeed)
			{
				if (enabled)
				{
					color = hueShift(color, shift + _Time.x * shiftSpeed);
				}
				return color;
			}
			inline float applyTilingClipping(float enabled, float2 uv)
			{
				float ret = 1;
				if (!enabled)
				{
					if (uv.x > 1 || uv.y > 1 || uv.x < 0 || uv.y < 0)
					{
						ret = 0;
					}
				}
				return ret;
			}
			void applyDecals(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods, in PoiLight poiLight)
			{
				float decalAlpha = 1;
				float alphaOverride = 0;
				#if defined(PROP_DECALMASK) || !defined(OPTIMIZER_ENABLED)
				float4 decalMask = POI2D_SAMPLER_PAN(_DecalMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 decalMask = 1;
				#endif
				#ifdef TPS_Penetrator
				if (float(0))
				{
					decalMask.r = lerp(0, decalMask.r * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
					decalMask.g = lerp(0, decalMask.g * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
					decalMask.b = lerp(0, decalMask.b * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
					decalMask.a = lerp(0, decalMask.a * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
				}
				#endif
				float4 decalColor = 1;
				float2 uv = 0;
				float2 decalScale = float2(1, 1);
				float decalRotation = 0;
				float2 ddxuv = 0;
				float2 ddyuv = 0;
				float4 sideMod = 0;
				//ifex float(1)==0
				#ifdef GEOM_TYPE_BRANCH
				decalScale = float4(1,1,0,0);
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(float4(0,0,0,0).xy, float4(0,0,0,0).zw, poiMods.audioLink[float(0)]);
					sideMod += lerp(float4(0,0,0,0), float4(0,0,0,0), poiMods.audioLink[float(0)]);
					decalRotation += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					decalRotation += AudioLinkGetChronoTime(float(0), float(0)) * float(0) * 360;
				}
				#endif
				#if defined(PROP_DECALTEXTURE) || !defined(OPTIMIZER_ENABLED)
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) +sideMod, float(0), poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if (any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture, uv + float4(0,0,0,0) * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor.rgb, float(0)), _DecalColor.a);
				#else
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) +sideMod, float(0), poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor.rgb, float(0)), _DecalColor.a);
				#endif
				decalColor.rgb = decalHueShift(float(1), decalColor.rgb, _DecalHueShift + poiLight.nDotV * _Decal0HueAngleStrength, float(0));
				decalColor.a *= applyTilingClipping(float(0), uv) * decalMask[float(3)];
				float audioLinkDecalAlpha0 = 0;
				#ifdef POI_AUDIOLINK
				if (float(0) && poiMods.audioLinkAvailable)
				{
					decalColor.rgb *= AudioLinkLerp(ALPASS_CCSTRIP + float2(uv.x * AUDIOLINK_WIDTH, 0)).rgb;
				}
				audioLinkDecalAlpha0 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, float(0)), decalColor.a * saturate(float(1) + audioLinkDecalAlpha0));
				if (float(0))
				{
					alphaOverride += 1;
					decalAlpha = lerp(decalAlpha, min(decalAlpha, decalColor.a), decalMask[float(3)]);
				}
				float audioLinkDecalEmission0 = 0;
				#ifdef POI_AUDIOLINK
				audioLinkDecalEmission0 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength + audioLinkDecalEmission0, 0);
				#endif
				//ifex float(1)==0
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				decalScale = float4(1,1,0,0);
				decalRotation = 0;
				sideMod = 0;
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(float4(0,0,0,0).xy, float4(0,0,0,0).zw, poiMods.audioLink[float(0)]);
					sideMod += lerp(float4(0,0,0,0), float4(0,0,0,0), poiMods.audioLink[float(0)]);
					decalRotation += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					decalRotation += AudioLinkGetChronoTime(float(0), float(0)) * float(0) * 360;
				}
				#endif
				#if defined(PROP_DECALTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) + sideMod, float(0), poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if (any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture1, uv + float4(0,0,0,0) * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#else
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) + sideMod, float(0), poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#endif
				decalColor.rgb = decalHueShift(float(1), decalColor.rgb, float(0) + poiLight.nDotV * float(0), float(0));
				decalColor.a *= applyTilingClipping(float(0), uv) * decalMask[float(3)];
				float audioLinkDecalAlpha1 = 0;
				#ifdef POI_AUDIOLINK
				if (float(0) && poiMods.audioLinkAvailable)
				{
					decalColor.rgb *= AudioLinkLerp(ALPASS_CCSTRIP + float2(uv.x * AUDIOLINK_WIDTH, 0)).rgb;
				}
				audioLinkDecalAlpha1 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, float(0)), decalColor.a * saturate(_DecalBlendAlpha1 + audioLinkDecalAlpha1));
				if (float(0))
				{
					alphaOverride += 1;
					decalAlpha = lerp(decalAlpha, min(decalAlpha, decalColor.a), decalMask[float(3)]);
				}
				float audioLinkDecalEmission1 = 0;
				#ifdef POI_AUDIOLINK
				audioLinkDecalEmission1 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.emission += decalColor.rgb * decalColor.a * max(float(0) + audioLinkDecalEmission1, 0);
				#endif
				//ifex float(1)==0
				#ifdef GEOM_TYPE_FROND
				decalScale = float4(1,1,0,0);
				decalRotation = 0;
				sideMod = 0;
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(float4(0,0,0,0).xy, float4(0,0,0,0).zw, poiMods.audioLink[float(0)]);
					sideMod += lerp(float4(0,0,0,0), float4(0,0,0,0), poiMods.audioLink[float(0)]);
					decalRotation += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					decalRotation += AudioLinkGetChronoTime(float(0), float(0)) * float(0) * 360;
				}
				#endif
				#if defined(PROP_DECALTEXTURE2) || !defined(OPTIMIZER_ENABLED)
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) + sideMod, float(0), poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if (any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture2, uv + float4(0,0,0,0) * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, float4(0.06083425,0.8079984,1,1).rgb, float(0)), float4(0.06083425,0.8079984,1,1).a);
				#else
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) + sideMod, float(0), poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, float4(0.06083425,0.8079984,1,1).rgb, float(0)), float4(0.06083425,0.8079984,1,1).a);
				#endif
				decalColor.rgb = decalHueShift(float(1), decalColor.rgb, _DecalHueShift2 + poiLight.nDotV * float(0), float(0));
				decalColor.a *= applyTilingClipping(float(0), uv) * decalMask[float(3)];
				float audioLinkDecalAlpha2 = 0;
				#ifdef POI_AUDIOLINK
				if (float(0) && poiMods.audioLinkAvailable)
				{
					decalColor.rgb *= AudioLinkLerp(ALPASS_CCSTRIP + float2(uv.x * AUDIOLINK_WIDTH, 0)).rgb;
				}
				audioLinkDecalAlpha2 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, float(0)), decalColor.a * saturate(_DecalBlendAlpha2 + audioLinkDecalAlpha2));
				if (float(0))
				{
					alphaOverride += 1;
					decalAlpha = lerp(decalAlpha, min(decalAlpha, decalColor.a), decalMask[float(3)]);
				}
				float audioLinkDecalEmission2 = 0;
				#ifdef POI_AUDIOLINK
				audioLinkDecalEmission2 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.emission += decalColor.rgb * decalColor.a * max(float(0) + audioLinkDecalEmission2, 0);
				#endif
				//ifex float(1)==0
				#ifdef DEPTH_OF_FIELD_COC_VIEW
				decalScale = float4(0.07,0.05,0,0);
				decalRotation = 0;
				sideMod = 0;
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(float4(0,0,0,0).xy, float4(0,0,0,0).zw, poiMods.audioLink[float(0)]);
					sideMod += lerp(float4(0,0,0,0), float4(0,0,0,0), poiMods.audioLink[float(0)]);
					decalRotation += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					decalRotation += AudioLinkGetChronoTime(float(0), float(0)) * float(0) * 360;
				}
				#endif
				#if defined(PROP_DECALTEXTURE3) || !defined(OPTIMIZER_ENABLED)
				uv = decalUV(float(4), float4(4,4,0,0), float4(0,0,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0.01501,0) + sideMod, float(0), poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if (any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture3, uv + float4(0,0,0,0) * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#else
				uv = decalUV(float(4), float4(4,4,0,0), float4(0,0,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0.01501,0) + sideMod, float(0), poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#endif
				decalColor.rgb = decalHueShift(float(0), decalColor.rgb, float(0.137) + poiLight.nDotV * float(0), float(0));
				decalColor.a *= applyTilingClipping(float(1), uv) * decalMask[float(1)];
				float audioLinkDecalAlpha3 = 0;
				#ifdef POI_AUDIOLINK
				if (float(0) && poiMods.audioLinkAvailable)
				{
					decalColor.rgb *= AudioLinkLerp(ALPASS_CCSTRIP + float2(uv.x * AUDIOLINK_WIDTH, 0)).rgb;
				}
				audioLinkDecalAlpha3 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, float(1)), decalColor.a * saturate(_DecalBlendAlpha3 + audioLinkDecalAlpha3));
				if (float(0))
				{
					alphaOverride += 1;
					decalAlpha = lerp(decalAlpha, min(decalAlpha, decalColor.a), decalMask[float(1)]);
				}
				float audioLinkDecalEmission3 = 0;
				#ifdef POI_AUDIOLINK
				audioLinkDecalEmission3 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.emission += decalColor.rgb * decalColor.a * max(float(0) + audioLinkDecalEmission3, 0);
				#endif
				if (alphaOverride)
				{
					poiFragData.alpha *= decalAlpha;
				}
				poiFragData.baseColor = saturate(poiFragData.baseColor);
			}
			#endif
			//ifex float(1)==0
			#ifdef VIGNETTE_MASKED
			#ifdef _LIGHTINGMODE_CLOTH
			#define HARD 0
			#define LERP 1
			#define CLOTHMODE HARD
			float V_SmithGGXCorrelated(float roughness, float NoV, float NoL)
			{
				float a2 = roughness * roughness;
				float lambdaV = NoL * sqrt((NoV - a2 * NoV) * NoV + a2);
				float lambdaL = NoV * sqrt((NoL - a2 * NoL) * NoL + a2);
				float v = 0.5 / (lambdaV + lambdaL);
				return v;
			}
			float D_GGX(float roughness, float NoH)
			{
				float oneMinusNoHSquared = 1.0 - NoH * NoH;
				float a = NoH * roughness;
				float k = roughness / (oneMinusNoHSquared + a * a);
				float d = k * k * (1.0 / UNITY_PI);
				return d;
			}
			float D_Charlie(float roughness, float NoH)
			{
				float invAlpha = 1.0 / roughness;
				float cos2h = NoH * NoH;
				float sin2h = max(1.0 - cos2h, 0.0078125); // 0.0078125 = 2^(-14/2), so sin2h^2 > 0 in fp16
				return (2.0 + invAlpha) * pow(sin2h, invAlpha * 0.5) / (2.0 * UNITY_PI);
			}
			float V_Neubelt(float NoV, float NoL)
			{
				return 1.0 / (4.0 * (NoL + NoV - NoL * NoV));
			}
			float Distribution(float roughness, float NoH, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(GGXTerm(roughness, NoH), D_Charlie(roughness, NoH), cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? GGXTerm(roughness, NoH) : D_Charlie(roughness, NoH);
				#endif
			}
			float Visibility(float roughness, float NoV, float NoL, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(V_SmithGGXCorrelated(roughness, NoV, NoL), V_Neubelt(NoV, NoL), cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? V_SmithGGXCorrelated(roughness, NoV, NoL) : V_Neubelt(NoV, NoL);
				#endif
			}
			float F_Schlick(float3 f0, float f90, float VoH)
			{
				return f0 + (f90 - f0) * pow(1.0 - VoH, 5);
			}
			float F_Schlick(float3 f0, float VoH)
			{
				float f = pow(1.0 - VoH, 5.0);
				return f + f0 * (1.0 - f);
			}
			float Fresnel(float3 f0, float LoH)
			{
				float f90 = saturate(dot(f0, float(50.0 * 0.33).xxx));
				return F_Schlick(f0, f90, LoH);
			}
			float Fd_Burley(float roughness, float NoV, float NoL, float LoH)
			{
				float f90 = 0.5 + 2.0 * roughness * LoH * LoH;
				float lightScatter = F_Schlick(1.0, f90, NoL);
				float viewScatter = F_Schlick(1.0, f90, NoV);
				return lightScatter * viewScatter;
			}
			float Fd_Wrap(float NoL, float w)
			{
				return saturate((NoL + w) / pow(1.0 + w, 2));
			}
			float4 SampleDFG(float NoV, float perceptualRoughness)
			{
				return _ClothDFG.Sample(sampler_ClothDFG, float3(NoV, perceptualRoughness, 0));
			}
			float3 EnvBRDF(float2 dfg, float3 f0)
			{
				return f0 * dfg.x + dfg.y;
			}
			float3 EnvBRDFMultiscatter(float3 dfg, float3 f0, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(lerp(dfg.xxx, dfg.yyy, f0), f0 * dfg.z, cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? lerp(dfg.xxx, dfg.yyy, f0) : f0 * dfg.z;
				#endif
			}
			float3 EnvBRDFEnergyCompensation(float3 dfg, float3 f0, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(1.0 + f0 * (1.0 / dfg.y - 1.0), 1, cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? 1.0 + f0 * (1.0 / dfg.y - 1.0) : 1;
				#endif
			}
			float ClothMetallic(float cloth)
			{
				#if CLOTHMODE == LERP
				return cloth;
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? 1 : 0;
				#endif
			}
			float3 Specular(float roughness, PoiLight poiLight, float f0, float3 normal, float cloth)
			{
				float NoL = poiLight.nDotLSaturated;
				float NoH = poiLight.nDotH;
				float LoH = poiLight.lDotH;
				float NoV = poiLight.nDotV;
				float D = Distribution(roughness, NoH, cloth);
				float V = Visibility(roughness, NoV, NoL, cloth);
				float3 F = Fresnel(f0, LoH);
				return (D * V) * F;
			}
			float3 getBoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			float SpecularAO(float NoV, float ao, float roughness)
			{
				return clamp(pow(NoV + ao, exp2(-16.0 * roughness - 1.0)) - 1.0 + ao, 0.0, 1.0);
			}
			float3 IndirectSpecular(float3 dfg, float roughness, float occlusion, float energyCompensation, float cloth, float3 indirectDiffuse, float f0, PoiLight poiLight, PoiFragData poiFragData, PoiCam poiCam, PoiMesh poiMesh)
			{
				float3 normal = poiMesh.normals[1];
				float3 reflDir = reflect(-poiCam.viewDir, normal);
				Unity_GlossyEnvironmentData envData;
				envData.roughness = roughness;
				envData.reflUVW = getBoxProjection(reflDir, poiMesh.worldPos, unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz);
				float3 probe0 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData);
				float3 indirectSpecular = probe0;
				#if UNITY_SPECCUBE_BLENDING
				
				if (unity_SpecCube0_BoxMin.w < 0.99999)
				{
					envData.reflUVW = getBoxProjection(reflDir, poiMesh.worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz);
					float3 probe1 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0), unity_SpecCube1_HDR, envData);
					indirectSpecular = lerp(probe1, probe0, unity_SpecCube0_BoxMin.w);
				}
				#endif
				float horizon = min(1 + dot(reflDir, normal), 1);
				indirectSpecular = indirectSpecular * horizon * horizon * energyCompensation * EnvBRDFMultiscatter(dfg, f0, cloth);
				indirectSpecular *= SpecularAO(poiLight.nDotV, occlusion, roughness);
				return indirectSpecular;
			};
			#undef LERP
			#undef HARD
			#undef CLOTHMODE
			#endif
			float _LightingWrappedWrap;
			float _LightingWrappedNormalization;
			float RTWrapFunc(in float dt, in float w, in float norm)
			{
				float cw = saturate(w);
				float o = (dt + cw) / ((1.0 + cw) * (1.0 + cw * norm));
				float flt = 1.0 - 0.85 * norm;
				if (w > 1.0)
				{
					o = lerp(o, flt, w - 1.0);
				}
				return o;
			}
			float3 GreenWrapSH(float fA) // Greens unoptimized and non-normalized
			{
				float fAs = saturate(fA);
				float4 t = float4(fA + 1, fAs - 1, fA - 2, fAs + 1); // DJL edit: allow wrapping to L0-only at w=2
				return float3(t.x, -t.z * t.x / 3, 0.25 * t.y * t.y * t.w);
			}
			float3 GreenWrapSHOpt(float fW) // optimised and normalized https://blog.selfshadow.com/2012/01/07/righting-wrap-part-2/
			{
				const float4 t0 = float4(0.0, 1.0 / 4.0, -1.0 / 3.0, -1.0 / 2.0);
				const float4 t1 = float4(1.0, 2.0 / 3.0, 1.0 / 4.0, 0.0);
				float3 fWs = float3(fW, fW, saturate(fW)); // DJL edit: allow wrapping to L0-only at w=2
				float3 r;
				r.xyz = t0.xxy * fWs + t0.xzw;
				r.xyz = r.xyz * fWs + t1.xyz;
				return r;
			}
			float3 ShadeSH9_wrapped(float3 normal, float wrap)
			{
				float3 x0, x1, x2;
				float3 conv = lerp(GreenWrapSH(wrap), GreenWrapSHOpt(wrap), float(0)); // Should try optimizing this...
				conv *= float3(1, 1.5, 4); // Undo pre-applied cosine convolution by using the inverse
				x0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
				float3 L2_0 = float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / - 3.0;
				x0 -= L2_0;
				x1.r = dot(unity_SHAr.xyz, normal);
				x1.g = dot(unity_SHAg.xyz, normal);
				x1.b = dot(unity_SHAb.xyz, normal);
				float4 vB = normal.xyzz * normal.yzzx;
				x2.r = dot(unity_SHBr, vB);
				x2.g = dot(unity_SHBg, vB);
				x2.b = dot(unity_SHBb, vB);
				float vC = normal.x * normal.x - normal.y * normal.y;
				x2 += unity_SHC.rgb * vC;
				x2 += L2_0;
				return x0 * conv.x + x1 * conv.y + x2 * conv.z;
			}
			float3 GetSHDirectionL1()
			{
				return Unity_SafeNormalize((unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz));
			}
			half3 GetSHMaxL1()
			{
				float3 maxDirection = GetSHDirectionL1();
				return ShadeSH9_wrapped(maxDirection, 0);
			}
			#ifdef _LIGHTINGMODE_SHADEMAP
			void applyShadeMapping(inout PoiFragData poiFragData, PoiMesh poiMesh, inout PoiLight poiLight)
			{
				float MainColorFeatherStep = float(0.5) - float(0.0001);
				float firstColorFeatherStep = float(0) - float(0.0001);
				#if defined(PROP_1ST_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 firstShadeMap = POI2D_SAMPLER_PAN(_1st_ShadeMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 firstShadeMap = float4(1, 1, 1, 1);
				#endif
				firstShadeMap = lerp(firstShadeMap, float4(poiFragData.baseColor, 1), float(0));
				#if defined(PROP_2ND_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 secondShadeMap = POI2D_SAMPLER_PAN(_2nd_ShadeMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 secondShadeMap = float4(1, 1, 1, 1);
				#endif
				secondShadeMap = lerp(secondShadeMap, firstShadeMap, float(0));
				firstShadeMap.rgb *= float4(1,1,1,1).rgb; //* lighColor
				secondShadeMap.rgb *= float4(1,1,1,1).rgb; //* LightColor;
				float shadowMask = 1;
				shadowMask *= float(0) ?(float(0) ?(1.0 - firstShadeMap.a) : firstShadeMap.a) : 1;
				shadowMask *= float(0) ?(float(0) ?(1.0 - secondShadeMap.a) : secondShadeMap.a) : 1;
				float mainShadowMask = saturate(1 - ((poiLight.lightMap) - MainColorFeatherStep) / (float(0.5) - MainColorFeatherStep) * (shadowMask));
				float firstSecondShadowMask = saturate(1 - ((poiLight.lightMap) - firstColorFeatherStep) / (float(0) - firstColorFeatherStep) * (shadowMask));
				mainShadowMask *= poiLight.shadowMask * float(0.599);
				firstSecondShadowMask *= poiLight.shadowMask * float(0.599);
				if (float(0) == 0)
				{
					poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
				}
				else
				{
					poiFragData.baseColor.rgb *= lerp(1, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
				}
				poiLight.rampedLightMap = 1 - mainShadowMask;
			}
			#endif
			void ApplySubtractiveLighting(inout UnityIndirect indirectLight)
			{
				#if SUBTRACTIVE_LIGHTING
				poiLight.attenuation = FadeShadows(lerp(1, poiLight.attenuation, _AttenuationMultiplier));
				float ndotl = saturate(dot(i.normal, _WorldSpaceLightPos0.xyz));
				float3 shadowedLightEstimate = ndotl * (1 - poiLight.attenuation) * _LightColor0.rgb;
				float3 subtractedLight = indirectLight.diffuse - shadowedLightEstimate;
				subtractedLight = max(subtractedLight, unity_ShadowColor.rgb);
				subtractedLight = lerp(subtractedLight, indirectLight.diffuse, _LightShadowData.x);
				indirectLight.diffuse = min(subtractedLight, indirectLight.diffuse);
				#endif
			}
			UnityIndirect CreateIndirectLight(in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight)
			{
				UnityIndirect indirectLight;
				indirectLight.diffuse = 0;
				indirectLight.specular = 0;
				#if defined(LIGHTMAP_ON)
				indirectLight.diffuse = DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, poiMesh.lightmapUV.xy));
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 lightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_LightmapInd, unity_Lightmap, poiMesh.lightmapUV.xy
				);
				indirectLight.diffuse = DecodeDirectionalLightmap(
				indirectLight.diffuse, lightmapDirection, poiMesh.normals[1]
				);
				#endif
				ApplySubtractiveLighting(indirectLight);
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float3 dynamicLightDiffuse = DecodeRealtimeLightmap(
				UNITY_SAMPLE_TEX2D(unity_DynamicLightmap, poiMesh.lightmapUV.zw)
				);
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 dynamicLightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_DynamicDirectionality, unity_DynamicLightmap,
				poiMesh.lightmapUV.zw
				);
				indirectLight.diffuse += DecodeDirectionalLightmap(
				dynamicLightDiffuse, dynamicLightmapDirection, poiMesh.normals[1]
				);
				#else
				indirectLight.diffuse += dynamicLightDiffuse;
				#endif
				#endif
				#if !defined(LIGHTMAP_ON) && !defined(DYNAMICLIGHTMAP_ON)
				#if UNITY_LIGHT_PROBE_PROXY_VOLUME
				if (unity_ProbeVolumeParams.x == 1)
				{
					indirectLight.diffuse = SHEvalLinearL0L1_SampleProbeVolume(
					float4(poiMesh.normals[1], 1), poiMesh.worldPos
					);
					indirectLight.diffuse = max(0, indirectLight.diffuse);
					#if defined(UNITY_COLORSPACE_GAMMA)
					indirectLight.diffuse = LinearToGammaSpace(indirectLight.diffuse);
					#endif
				}
				else
				{
					indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				}
				#else
				indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				#endif
				#endif
				indirectLight.diffuse *= poiLight.occlusion;
				return indirectLight;
			}
			void calculateShading(inout PoiLight poiLight, inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				#ifdef UNITY_PASS_FORWARDBASE
				float shadowStrength = float(0.599) * poiLight.shadowMask;
				#ifdef POI_PASS_OUTLINE
				shadowStrength = lerp(0, shadowStrength, _OutlineShadowStrength);
				#endif
				#ifdef _LIGHTINGMODE_FLAT
				poiLight.finalLighting = poiLight.directColor;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				#endif
				#ifdef _LIGHTINGMODE_TEXTURERAMP
				poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, poiLight.lightMap + float(0)).rgb, shadowStrength);
				poiLight.finalLighting = lerp(float4(1,1,1,1) * lerp(poiLight.indirectColor, poiLight.rampedLightMap * poiLight.directColor, float(0)) * poiLight.occlusion, poiLight.directColor, poiLight.rampedLightMap);
				#endif
				#ifdef _LIGHTINGMODE_MULTILAYER_MATH
				#if defined(PROP_MULTILAYERMATHBLURMAP) || !defined(OPTIMIZER_ENABLED)
				float4 blurMap = POI2D_SAMPLER_PAN(_MultilayerMathBlurMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 blurMap = 1;
				#endif
				float4 lns = float4(1, 1, 1, 1);
				if (float(1))
				{
					lns.x = poiEdgeNonLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.1) * blurMap.r);
					lns.y = poiEdgeNonLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.3) * blurMap.g);
					lns.z = poiEdgeNonLinearNoSaturate(poiLight.lightMap, float(0.25), float(0.1) * blurMap.b);
					lns.w = poiEdgeNonLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.1) * blurMap.r, float(0));
				}
				else
				{
					lns.x = poiEdgeLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.1) * blurMap.r);
					lns.y = poiEdgeLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.3) * blurMap.g);
					lns.z = poiEdgeLinearNoSaturate(poiLight.lightMap, float(0.25), float(0.1) * blurMap.b);
					lns.w = poiEdgeLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.1) * blurMap.r, float(0));
				}
				lns = saturate(lns);
				float3 indirectColor = 1;
				if (float4(0.4479884,0.5225216,0.6920712,1).a > 0)
				{
					#if defined(PROP_SHADOWCOLORTEX) || !defined(OPTIMIZER_ENABLED)
					float4 shadowColorTex = POI2D_SAMPLER_PAN(_ShadowColorTex, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					float4 shadowColorTex = float4(1, 1, 1, 1);
					#endif
					indirectColor = lerp(float3(1, 1, 1), shadowColorTex.rgb, shadowColorTex.a) * float4(0.4479884,0.5225216,0.6920712,1).rgb;
				}
				if (float4(0,0,0,0).a > 0)
				{
					#if defined(PROP_SHADOW2NDCOLORTEX) || !defined(OPTIMIZER_ENABLED)
					float4 shadow2ndColorTex = POI2D_SAMPLER_PAN(_Shadow2ndColorTex, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					float4 shadow2ndColorTex = float4(1, 1, 1, 1);
					#endif
					shadow2ndColorTex.rgb = lerp(float3(1, 1, 1), shadow2ndColorTex.rgb, shadow2ndColorTex.a) * float4(0,0,0,0).rgb;
					lns.y = float4(0,0,0,0).a - lns.y * float4(0,0,0,0).a;
					indirectColor = lerp(indirectColor, shadow2ndColorTex.rgb, lns.y);
				}
				if (float4(0,0,0,0).a > 0)
				{
					#if defined(PROP_SHADOW3RDCOLORTEX) || !defined(OPTIMIZER_ENABLED)
					float4 shadow3rdColorTex = POI2D_SAMPLER_PAN(_Shadow3rdColorTex, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					float4 shadow3rdColorTex = float4(1, 1, 1, 1);
					#endif
					shadow3rdColorTex.rgb = lerp(float3(1, 1, 1), shadow3rdColorTex.rgb, shadow3rdColorTex.a) * float4(0,0,0,0).rgb;
					lns.z = float4(0,0,0,0).a - lns.z * float4(0,0,0,0).a;
					indirectColor = lerp(indirectColor, shadow3rdColorTex.rgb, lns.z);
				}
				poiLight.rampedLightMap = lns.x;
				indirectColor = lerp(indirectColor, 1, lns.w * float4(1,0,0,1).rgb);
				indirectColor = indirectColor * lerp(poiLight.indirectColor, poiLight.directColor, float(0));
				indirectColor = lerp(poiLight.directColor, indirectColor, shadowStrength * poiLight.shadowMask);
				poiLight.finalLighting = lerp(indirectColor, poiLight.directColor, lns.x);
				#endif
				#ifdef _LIGHTINGMODE_SHADEMAP
				poiLight.finalLighting = poiLight.directColor;
				#endif
				#ifdef _LIGHTINGMODE_REALISTIC
				UnityLight light;
				light.dir = poiLight.direction;
				light.color = saturate(_LightColor0.rgb * lerp(1, poiLight.attenuation, poiLight.attenuationStrength) * poiLight.detailShadow);
				light.ndotl = poiLight.nDotLSaturated;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				poiLight.finalLighting = max(UNITY_BRDF_PBS(1, 0, 0, 0, poiMesh.normals[1], poiCam.viewDir, light, CreateIndirectLight(poiMesh, poiCam, poiLight)).xyz, float(0));
				#endif
				#ifdef _LIGHTINGMODE_CLOTH
				#if defined(PROP_MOCHIEMETALLICMAP) || !defined(OPTIMIZER_ENABLED)
				float4 clothmapsample = POI2D_MAINTEX_SAMPLER_PAN_INLINED(_ClothMetallicSmoothnessMap, poiMesh);
				float roughness = 1 - (clothmapsample.a * float(0.5));
				float reflectance = float(0.5) * clothmapsample.b;
				float clothmask = clothmapsample.g;
				float metallic = pow(clothmapsample.r * _ClothMetallic, 2) * ClothMetallic(clothmask);
				roughness = float(0) == 1 ? 1 - roughness : roughness;
				#else
				float roughness = 1 - (float(0.5));
				float metallic = pow(_ClothMetallic, 2);
				float reflectance = float(0.5);
				float clothmask = 1;
				#endif
				float perceptualRoughness = pow(roughness, 2);
				float clampedRoughness = max(0.002, perceptualRoughness);
				float f0 = 0.16 * reflectance * reflectance * (1 - metallic) + poiFragData.baseColor * metallic;
				float3 fresnel = Fresnel(f0, poiLight.nDotV);
				float3 dfg = SampleDFG(poiLight.nDotV, perceptualRoughness);
				float energyCompensation = EnvBRDFEnergyCompensation(dfg, f0, clothmask);
				poiLight.finalLighting = Fd_Burley(perceptualRoughness, poiLight.nDotV, poiLight.nDotLSaturated, poiLight.lDotH);
				poiLight.finalLighting *= _LightColor0 * poiLight.attenuation * poiLight.nDotLSaturated;
				float3 specular = max(0, Specular(clampedRoughness, poiLight, f0, poiMesh.normals[1], clothmask) * poiLight.finalLighting * energyCompensation * UNITY_PI); // (D * V) * F
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
				float3 indirectDiffuse;
				indirectDiffuse.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, poiMesh.normals[1]);
				indirectDiffuse.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, poiMesh.normals[1]);
				indirectDiffuse.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, poiMesh.normals[1]);
				indirectDiffuse = max(0, indirectDiffuse);
				float3 indirectSpecular = IndirectSpecular(dfg, roughness, poiLight.occlusion, energyCompensation, clothmask, indirectDiffuse, f0, poiLight, poiFragData, poiCam, poiMesh);
				poiLight.finalLightAdd += max(0, specular + indirectSpecular);
				poiLight.finalLighting += indirectDiffuse * poiLight.occlusion;
				poiFragData.baseColor.xyz *= (1 - metallic);
				#endif
				#ifdef _LIGHTINGMODE_WRAPPED
				#define GREYSCALE_VECTOR float3(.33333, .33333, .33333)
				float3 directColor = _LightColor0.rgb * saturate(RTWrapFunc(poiLight.nDotL, float(0), float(0))) * lerp(1, poiLight.attenuation, poiLight.attenuationStrength);
				float3 indirectColor = ShadeSH9_wrapped(poiMesh.normals[float(0)], float(0)) * poiLight.occlusion;
				float3 ShadeSH9Plus_2 = GetSHMaxL1();
				float bw_topDirectLighting_2 = dot(_LightColor0.rgb, GREYSCALE_VECTOR);
				float bw_directLighting = dot(directColor, GREYSCALE_VECTOR);
				float bw_indirectLighting = dot(indirectColor, GREYSCALE_VECTOR);
				float bw_topIndirectLighting = dot(ShadeSH9Plus_2, GREYSCALE_VECTOR);
				poiLight.lightMap = smoothstep(0, bw_topIndirectLighting + bw_topDirectLighting_2, bw_indirectLighting + bw_directLighting) * poiLight.detailShadow;
				poiLight.rampedLightMap = saturate((poiLight.lightMap - (1 - float(0.5))) / saturate((1 - float(0)) - (1 - float(0.5)) + fwidth(poiLight.lightMap)));
				float3 mathRamp = lerp(float3(1, 1, 1), saturate(lerp((float4(1,1,1,1) * lerp(indirectColor, 1, float(0))), float3(1, 1, 1), saturate(poiLight.rampedLightMap))), float(0.599));
				float3 finalWrap = directColor + indirectColor;
				if (float(1))
				{
					finalWrap = clamp(finalWrap, float(0), float(1));
				}
				else
				{
					finalWrap = max(finalWrap, float(0));
				}
				poiLight.finalLighting = finalWrap * saturate(mathRamp + 1 - float(0.599));
				#endif
				#ifdef _LIGHTINGMODE_SKIN
				float3 ambientNormalWorld = poiMesh.normals[1];//aTangentToWorld(s, s.blurredNormalTangent);
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				float subsurface = 1;
				float skinScattering = saturate(subsurface * float(1) * 2);
				half3 absorption = exp((1.0h - subsurface) * float4(-8,-40,-64,0).rgb);
				absorption *= saturate(poiFragData.baseColor * unity_ColorSpaceDouble.rgb);
				ambientNormalWorld = normalize(lerp(poiMesh.normals[1], ambientNormalWorld, float(0.7)));
				float ndlBlur = dot(poiMesh.normals[1], poiLight.direction) * 0.5h + 0.5h;
				float lumi = dot(poiLight.directColor, half3(0.2126h, 0.7152h, 0.0722h));
				float4 sssLookupUv = float4(ndlBlur, skinScattering * lumi, 0.0f, 0.0f);
				half3 sss = poiLight.lightMap * poiLight.attenuation * tex2Dlod(_SkinLUT, sssLookupUv).rgb;
				poiLight.finalLighting = min(lerp(poiLight.indirectColor * float4(1,1,1,1), float4(1,1,1,1), float(0)) + (sss * poiLight.directColor), poiLight.directColor);
				#endif
				#ifdef _LIGHTINGMODE_SDF
				float3 forward = normalize(UnityObjectToWorldDir(float4(float4(0,0,1,0).xyz, 1)));
				float3 left = normalize(UnityObjectToWorldDir(float4(float4(-1,0,0,0).xyz, 1)));
				float3 lightDirHorizontal = normalize(float3(poiLight.direction.x, 0, poiLight.direction.z));
				float lightAtten = 1 - (dot(lightDirHorizontal, forward) * 0.5 + 0.5);
				float filpU = sign(dot(lightDirHorizontal, left));
				#if defined(PROP_SDFSHADINGTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float shadowSDF = POI2D_SAMPLER_PAN(_SDFShadingTexture, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)) * float2(filpU, 1), float4(0,0,0,0)).r;
				#else
				float shadowSDF = float2(1, 1);
				#endif
				float blur = float(0.1) * 0.1;
				float faceShadow = smoothstep(lightAtten - blur, lightAtten + blur, shadowSDF) * poiLight.detailShadow;
				float3 indirectColor = float4(1,1,1,1).rgb;
				indirectColor = indirectColor * lerp(poiLight.indirectColor, poiLight.directColor, float(0));
				indirectColor = lerp(poiLight.directColor, indirectColor, float(0.599) * poiLight.shadowMask);
				poiLight.finalLighting = lerp(indirectColor, poiLight.directColor, faceShadow);
				#endif
				#endif
				#ifdef POI_PASS_ADD
				if (float(1) == 0)
				{
					poiLight.rampedLightMap = max(0, poiLight.nDotL);
					poiLight.finalLighting = poiLight.directColor * poiLight.attenuation * max(0, poiLight.nDotL) * poiLight.detailShadow * poiLight.additiveShadow;
				}
				if (float(1) == 1)
				{
					#if defined(POINT_COOKIE) || defined(DIRECTIONAL_COOKIE)
					float passthrough = 0;
					#else
					float passthrough = float(0.5);
					#endif
					if (float(0.5) == float(0)) float(0.5) += 0.001;
					poiLight.rampedLightMap = smoothstep(float(0.5), float(0), 1 - (.5 * poiLight.nDotL + .5));
					#if defined(POINT) || defined(SPOT)
					poiLight.finalLighting = lerp(poiLight.directColor * max(min(poiLight.additiveShadow, poiLight.detailShadow), passthrough), poiLight.indirectColor, smoothstep(float(0), float(0.5), 1 - (.5 * poiLight.nDotL + .5))) * poiLight.attenuation;
					#else
					poiLight.finalLighting = lerp(poiLight.directColor * max(min(poiLight.attenuation, poiLight.detailShadow), passthrough), poiLight.indirectColor, smoothstep(float(0), float(0.5), 1 - (.5 * poiLight.nDotL + .5)));
					#endif
				}
				if (float(1) == 2)
				{
				}
				#endif
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float3 vertexLighting = float3(0, 0, 0);
				for (int index = 0; index < 4; index++)
				{
					if (float(1) == 0)
					{
						vertexLighting += poiLight.vColor[index] * poiLight.vAttenuationDotNL[index] * poiLight.detailShadow; // Realistic
					}
					if (float(1) == 1) // Toon
					{
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * float(0.5) * poiLight.vAttenuation[index], smoothstep(float(0), float(0.5), .5 * poiLight.vDotNL[index] + .5)) * poiLight.detailShadow;
					}
				}
				float3 mixedLight = poiLight.finalLighting;
				poiLight.finalLighting = vertexLighting + poiLight.finalLighting;
				#endif
			}
			#endif
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			#ifdef POI_AL_DECAL
			void ApplyAudioLinkDecal(in PoiMesh poiMesh, inout PoiFragData poiFragData, in PoiMods poiMods)
			{
				float4 colorAndMask = float4(1, 1, 1, 1);
				#if defined(PROP_ALDECALCOLORMASK) || !defined(OPTIMIZER_ENABLED)
				colorAndMask = POI2D_SAMPLER_PAN(_ALDecalColorMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#endif
				float2 uv = poiMesh.uv[float(2)];
				float2 decalCenter = float4(-0.3,-0.7,1,1);
				float theta = radians(float(360) + _Time.z * float(0));
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - _ALUVScale.xz / 2 + float4(-0.3,-0.7,1,1), _ALUVScale.yw / 2 + float4(-0.3,-0.7,1,1), float2(0, 0), float2(1, 1));
				float4 audioLinkMask = 1.0;
				float2 aluv = uv;
				if (float(0) == 1)
				{
					float2 uvdir = uv * 2 - 1;
					aluv.x = frac(atan2(uvdir.y, uvdir.x) * UNITY_INV_TWO_PI);
					aluv.y = length(uvdir);
				}
				float maskY = aluv.y;
				if (float(0) == 1)
				{
					maskY = remap(maskY, float4(0,1,0,1).x, float4(0,1,0,1).y, 0, 1);
				}
				float maskX = aluv.x;
				if (float(0) == 1)
				{
					maskX = remap(maskX, float4(0,1,0,1).z, float4(0,1,0,1).w, 0, 1);
				}
				float maskVolume = _ALDecalVolumeStep != 0.0 ? floor(maskY * _ALDecalVolumeStep) / _ALDecalVolumeStep : maskY;
				float maskBand = float(0) != 0.0 ? floor(maskX * float(0)) / float(0) : maskX;
				audioLinkMask.r = maskVolume;
				audioLinkMask.g = maskBand;
				audioLinkMask.b = maskVolume < float(0) || maskVolume > float(1) ? 0.0 : audioLinkMask.b;
				audioLinkMask.b = maskBand < float(0) || maskBand > float(1) ? 0.0 : audioLinkMask.b;
				if (float(0))
				{
					float volumeth = float(0.419);
					if (_ALDecalVolumeStep != 0.0) audioLinkMask.b = frac(maskY * _ALDecalVolumeStep) > volumeth ? 0.0 : audioLinkMask.b;
					float bandwidth = float(0) == 1 ? float(1) / aluv.y : float(1);
					float bandth = 1.0 - bandwidth;
					if (float(0) != 0.0) audioLinkMask.b = frac(maskX * float(0) + bandth * 0.5) < bandth ? 0.0 : audioLinkMask.b;
				}
				float2 audioLinkUV = float2(frac(audioLinkMask.g * 2.0), 4.5 / 4.0 + floor(audioLinkMask.g * 2.0) / 4.0);
				audioLinkUV.y *= 0.0625;
				float4 audioTexture = _AudioTexture.Sample(sampler_linear_clamp, audioLinkUV);
				float audioVal = audioTexture.b * float(0.2) * lerp(float(5), float(1), audioLinkMask.g);
				float audioLinkValue = float(0.239) < 1.0 ? abs(audioVal - audioLinkMask.r) < float(0.239) : audioVal > audioLinkMask.r * 2.0;
				audioLinkValue = saturate(audioLinkValue) * audioLinkMask.b;
				audioLinkValue *= colorAndMask.a;
				if (!poiMods.audioLinkAvailable)
				{
					audioLinkValue = 0;
				}
				float3 alColorChord = _AudioTexture.Sample(sampler_linear_clamp, float2(maskX, 24.5 / 64.0)).rgb;
				float volumeColorSrc = audioLinkMask.g;
				if (float(0) == 1) volumeColorSrc = audioLinkMask.r;
				if (float(0) == 2) volumeColorSrc = audioVal;
				float3 volumeColor = lerp(float4(0.2319224,0,0.05863854,1).rgb, float4(0,0.06823184,0.2603273,1).rgb, saturate(volumeColorSrc * 2));
				volumeColor = lerp(volumeColor, float4(0,1,1,1).rgb, saturate(volumeColorSrc * 2 - 1));
				float3 emissionColor = lerp(float4(0.2319224,0,0.05863854,1).rgb * float(5.02), float4(0,0.06823184,0.2603273,1).rgb * float(5.2), saturate(volumeColorSrc * 2));
				emissionColor = lerp(emissionColor, float4(0,1,1,1).rgb * float(5.08), saturate(volumeColorSrc * 2 - 1));
				#if defined(POI_PASS_BASE) || defined(POI_PASS_ADD)
				poiFragData.emission += emissionColor * audioLinkValue;
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor, customBlend(poiFragData.baseColor, volumeColor * colorAndMask.rgb, float(11)), saturate(float(1) * audioLinkValue));
				#endif
				poiFragData.alpha = lerp(poiFragData.alpha, poiFragData.alpha * audioLinkValue, float(0));
			}
			#endif
			#endif
			//ifex float(1)==0
			#ifdef _GLOSSYREFLECTIONS_OFF
			#ifdef _RIMSTYLE_POIYOMI
			void ApplyRimLighting(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				float viewDotNormal = abs(dot(poiCam.viewDir, lerp(poiMesh.normals[0], poiMesh.normals[1], float(0.277))));
				
				if (float(0))
				{
					viewDotNormal = 1 - viewDotNormal;
				}
				viewDotNormal = pow(viewDotNormal, float(1.15));
				if (float(0.157) && float(0))
				{
					viewDotNormal += lerp(0, (1 - poiLight.nDotLNormalized) * 3, float(0.157));
				}
				float rimStrength = float(0);
				float rimWidth = lerp( - .05, 1, float(0.185));
				float blendStrength = float(0.48);
				#ifdef POI_AUDIOLINK
				
				if (poiMods.audioLinkAvailable)
				{
					rimWidth = clamp(rimWidth + lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]), - .05, 1);
					blendStrength += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					blendStrength += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
				}
				#endif
				#if defined(PROP_RIMMASK) || !defined(OPTIMIZER_ENABLED)
				float rimMask = POI2D_SAMPLER_PAN(_RimMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float rimMask = 1;
				#endif
				#if defined(PROP_RIMTEX) || !defined(OPTIMIZER_ENABLED)
				float4 rimColor = POI2D_SAMPLER_PAN(_RimTex, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)) * float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#else
				float4 rimColor = float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#endif
				
				if (float(0))
				{
					rimColor.rgb = hueShift(rimColor.rgb, float(0) + _Time.x * float(0));
				}
				rimWidth = max(lerp(rimWidth, rimWidth * lerp(0, 1, poiLight.lightMap - _ShadowMixThreshold) * _ShadowMixWidthMod, _ShadowMix), 0);
				float rim = 1 - smoothstep(min(float(0.192), rimWidth), rimWidth, viewDotNormal);
				rim *= float4(1,1,1,1).a * rimColor.a * rimMask;
				if (float(0))
				{
					switch(float(0))
					{
						case 0: rim = lerp(rim, rim * poiLight.rampedLightMap, float(0)); break;
						case 1: rim = lerp(rim, rim * smoothstep(float4(0,0,0,1).x, float4(0,0,0,1).y, poiLight.nDotLNormalized), float(0)); break;
					}
				}
				float3 finalRimColor = rimColor.rgb * lerp(1, poiFragData.baseColor, float(0));
				finalRimColor *= float(1.28);
				switch(float(3))
				{
					case 0: poiFragData.baseColor += finalRimColor * rim * blendStrength; break;
					case 1: poiFragData.baseColor = lerp(poiFragData.baseColor, finalRimColor, rim * blendStrength); break;
					case 2: poiFragData.baseColor = lerp(poiFragData.baseColor, poiFragData.baseColor * finalRimColor, rim * blendStrength); break;
					case 3: poiFragData.baseColor = lerp(poiFragData.baseColor.rgb, poiFragData.baseColor.rgb + poiFragData.baseColor.rgb * finalRimColor, rim * blendStrength); break;
				}
				poiFragData.baseColor = saturate(poiFragData.baseColor);
				poiFragData.emission += finalRimColor * rim * rimStrength;
			}
			#endif
			#ifdef _RIMSTYLE_UTS2
			void ApplyRimLighting(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				#if defined(PROP_SET_RIMLIGHTMASK) || !defined(OPTIMIZER_ENABLED)
				float4 _Set_RimLightMask_var = POI2D_SAMPLER_PAN(_Set_RimLightMask, _MainTex, poiUV(poiMesh.uv[_Set_RimLightMaskUV], float4(1,1,0,0)), _Set_RimLightMaskPan);
				#else
				float4 _Set_RimLightMask_var = float4(1.0, 1.0, 1.0, 1.0);
				#endif
				float3 rimColor = float3(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)));
				float3 _Is_LightColor_RimLight_var = lerp(rimColor, (rimColor * poiLight.directColor), float(1));
				float _RimArea_var = (1.0 - dot(lerp(poiMesh.normals[0], poiMesh.normals[1], float(0.277)), poiCam.viewDir));
				float _RimLightPower_var = pow(_RimArea_var, exp2(lerp(3, 0, float(0.1))));
				float _Rimlight_InsideMask_var = saturate(lerp((0.0 + ((_RimLightPower_var - float(0.0001)) * (1.0 - 0.0)) / (1.0 - float(0.0001))), step(float(0.0001), _RimLightPower_var), float(0)));
				float _VertHalfLambert_var = 0.5 * dot(poiMesh.normals[0], poiLight.direction) + 0.5;
				float3 _LightDirection_MaskOn_var = lerp((_Is_LightColor_RimLight_var * _Rimlight_InsideMask_var), (_Is_LightColor_RimLight_var * saturate((_Rimlight_InsideMask_var - ((1.0 - _VertHalfLambert_var) + float(0))))), float(0));
				float _ApRimLightPower_var = pow(_RimArea_var, exp2(lerp(3, 0, float(0.1))));
				float3 ApRimColor = float3(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)));
				float3 _RimLight_var = (saturate((_Set_RimLightMask_var.g + float(0))) * lerp(_LightDirection_MaskOn_var, (_LightDirection_MaskOn_var + (lerp(ApRimColor, (ApRimColor * poiLight.directColor), float(1)) * saturate((lerp((0.0 + ((_ApRimLightPower_var - float(0.0001)) * (1.0 - 0.0)) / (1.0 - float(0.0001))), step(float(0.0001), _ApRimLightPower_var), float(0)) - (saturate(_VertHalfLambert_var) + float(0)))))), float(0)));
				
				if (float(0))
				{
					_RimLight_var = hueShift(_RimLight_var, float(0) + _Time.x * float(0));
				}
				poiFragData.baseColor = saturate(poiFragData.baseColor + _RimLight_var);
			}
			#endif
			#endif
			//ifex float(1)==0
			#ifdef _SUNDISK_SIMPLE
			float3 RandomColorFromPoint(float2 rando)
			{
				fixed hue = random2(rando.x + rando.y).x;
				fixed saturation = lerp(float4(0.8,1,0,1).x, float4(0.8,1,0,1).y, rando.x);
				fixed value = lerp(float4(0.8,1,0,1).x, float4(0.8,1,0,1).y, rando.y);
				float3 hsv = float3(hue, saturation, value);
				return HSVtoRGB(hsv);
			}
			void applyGlitter(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				float2 st = frac(poiMesh.uv[float(0)] + float4(0,0,0,0).xy * _Time.x) * float(623.4);
				float2 i_st = floor(st);
				float2 f_st = frac(st);
				float m_dist = 10.;  // minimun distance
				float2 m_point = 0;        // minimum point
				float2 randoPoint = 0;
				float2 dank;
				for (int j = -1; j <= 1; j++)
				{
					for (int i = -1; i <= 1; i++)
					{
						float2 neighbor = float2(i, j);
						float2 pos = random2(i_st + neighbor);
						float2 rando = pos;
						pos = 0.5 + 0.5 * sin(float(1) * 6.2831 * pos);
						float2 diff = neighbor + pos - f_st;
						float dist = length(diff);
						if (dist < m_dist)
						{
							dank = diff;
							m_dist = dist;
							m_point = pos;
							randoPoint = rando;
						}
					}
				}
				float randomFromPoint = random(randoPoint);
				float size = float(0.3);
				
				if (float(0))
				{
					size = remapClamped(0, 1, randomFromPoint, float4(0.1,0.5,0,1).x, float4(0.1,0.5,0,1).y);
				}
				half glitterAlpha = 1;
				switch(float(0))
				{
					case 0: //circle
					glitterAlpha = 1 - saturate((m_dist - size) / clamp(fwidth(m_dist), 0.0001, 1.0));
					break;
					case 1: //sqaure
					float jaggyFix = pow(poiCam.distanceToVert, 2) * float(0);
					
					if (float(0) == 1 || float(0) != 0)
					{
						float2 center = float2(0, 0);
						float randomBoy = 0;
						
						if (float(0))
						{
							randomBoy = random(randoPoint);
						}
						float theta = radians((randomBoy + _Time.x * float(0)) * 360);
						float cs = cos(theta);
						float sn = sin(theta);
						dank = float2((dank.x - center.x) * cs - (dank.y - center.y) * sn + center.x, (dank.x - center.x) * sn + (dank.y - center.y) * cs + center.y);
						glitterAlpha = (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.x))) * (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.y)));
					}
					else
					{
						glitterAlpha = (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.x))) * (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.y)));
					}
					break;
				}
				float3 finalGlitter = 0;
				half3 glitterColor = poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				float3 norm = poiMesh.normals[1];
				float3 randomRotation = 0;
				switch(float(0))
				{
					case 0:
					
					if (float(10) > 0)
					{
						randomRotation = randomFloat3WiggleRange(randoPoint, float(72), float(10));
					}
					else
					{
						randomRotation = randomFloat3Range(randoPoint, float(72));
					}
					float3 glitterReflectionDirection = normalize(mul(poiRotationMatrixFromAngles(randomRotation), norm));
					finalGlitter = lerp(0, float(0) * glitterAlpha, glitterAlpha) + max(pow(saturate(dot(lerp(glitterReflectionDirection, poiCam.viewDir, float(0.8)), poiCam.viewDir)), float(601)), 0);
					finalGlitter *= glitterAlpha;
					break;
					case 1:
					float offset = random(randoPoint);
					float brightness = sin((_Time.x + offset) * float(10)) * float(20) - (float(20) - 1);
					finalGlitter = max(float(0) * glitterAlpha, brightness * glitterAlpha * smoothstep(0, 1, 1 - m_dist * float(0.08) * 10));
					break;
					case 2:
					if (float(10) > 0)
					{
						randomRotation = randomFloat3WiggleRange(randoPoint, float(72), float(10));
					}
					else
					{
						randomRotation = randomFloat3Range(randoPoint, float(72));
					}
					float3 glitterLightReflectionDirection = normalize(mul(poiRotationMatrixFromAngles(randomRotation), norm));
					#ifdef POI_PASS_ADD
					glitterAlpha *= poiLight.nDotLSaturated * poiLight.attenuation;
					#endif
					#ifdef UNITY_PASS_FORWARDBASE
					glitterAlpha *= poiLight.nDotLSaturated;
					#endif
					float3 halfDir = normalize(poiLight.direction + poiCam.viewDir);
					float specAngle = max(dot(halfDir, glitterLightReflectionDirection), 0.0);
					finalGlitter = lerp(0, float(0) * glitterAlpha, glitterAlpha) + max(pow(specAngle, float(601)), 0);
					glitterColor *= poiLight.directColor;
					finalGlitter *= glitterAlpha;
					break;
				}
				glitterColor *= lerp(1, poiFragData.baseColor, float(1));
				#if defined(PROP_GLITTERCOLORMAP) || !defined(OPTIMIZER_ENABLED)
				glitterColor *= POI2D_SAMPLER_PAN(_GlitterColorMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)).rgb;
				#endif
				float2 uv = remapClamped(-size, size, dank, 0, 1);
				
				if (float(0) == 1 || float(0) != 0 && !float(0))
				{
					float2 fakeUVCenter = float2(.5, .5);
					float randomBoy = 0;
					
					if (float(0))
					{
						randomBoy = random(randoPoint);
					}
					float theta = radians((randomBoy + _Time.x * float(0)) * 360);
					float cs = cos(theta);
					float sn = sin(theta);
					uv = float2((uv.x - fakeUVCenter.x) * cs - (uv.y - fakeUVCenter.y) * sn + fakeUVCenter.x, (uv.x - fakeUVCenter.x) * sn + (uv.y - fakeUVCenter.y) * cs + fakeUVCenter.y);
				}
				#if defined(PROP_GLITTERTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 glitterTexture = POI2D_SAMPLER_PAN(_GlitterTexture, _MainTex, poiUV(uv, float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 glitterTexture = 1;
				#endif
				glitterColor *= glitterTexture.rgb;
				#if defined(PROP_GLITTERMASK) || !defined(OPTIMIZER_ENABLED)
				float glitterMask = POI2D_SAMPLER_PAN(_GlitterMask, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float glitterMask = 1;
				#endif
				glitterMask *= lerp(1, poiLight.rampedLightMap, float(0));
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskGlitter != 4)
				{
					glitterMask *= blackLightMask[_BlackLightMaskGlitter];
				}
				#endif
				if (float(0))
				{
					glitterColor *= RandomColorFromPoint(random2(randoPoint.x + randoPoint.y));
				}
				
				if (float(0))
				{
					glitterColor.rgb = hueShift(glitterColor.rgb, float(0) + _Time.x * float(0));
				}
				
				if (float(0) == 1)
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, finalGlitter * glitterColor * float(40), finalGlitter * glitterTexture.a * glitterMask);
					poiFragData.emission += finalGlitter * glitterColor * max(0, (float(40) - 1) * glitterTexture.a) * glitterMask;
				}
				else
				{
					poiFragData.emission += finalGlitter * glitterColor * float(40) * glitterTexture.a * glitterMask;
				}
			}
			#endif
			//ifex float(1)==0 && float(0)==0
			#if defined(MOCHIE_PBR) || defined(POI_CLEARCOAT)
			float GSAA_Filament(float3 worldNormal, float perceptualRoughness, float gsaaVariance, float gsaaThreshold)
			{
				float3 du = ddx(worldNormal);
				float3 dv = ddy(worldNormal);
				float variance = gsaaVariance * (dot(du, du) + dot(dv, dv));
				float roughness = perceptualRoughness * perceptualRoughness;
				float kernelRoughness = min(2.0 * variance, gsaaThreshold);
				float squareRoughness = saturate(roughness * roughness + kernelRoughness);
				return sqrt(sqrt(squareRoughness));
			}
			bool SceneHasReflections()
			{
				float width, height;
				unity_SpecCube0.GetDimensions(width, height);
				return !(width * height < 2);
			}
			float3 GetWorldReflections(float3 reflDir, float3 worldPos, float roughness)
			{
				float3 baseReflDir = reflDir;
				reflDir = BoxProjection(reflDir, worldPos, unity_SpecCube0_ProbePosition, unity_SpecCube0_BoxMin, unity_SpecCube0_BoxMax);
				float4 envSample0 = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, reflDir, roughness * UNITY_SPECCUBE_LOD_STEPS);
				float3 p0 = DecodeHDR(envSample0, unity_SpecCube0_HDR);
				float interpolator = unity_SpecCube0_BoxMin.w;
				
				if (interpolator < 0.99999)
				{
					float3 refDirBlend = BoxProjection(baseReflDir, worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin, unity_SpecCube1_BoxMax);
					float4 envSample1 = UNITY_SAMPLE_TEXCUBE_SAMPLER_LOD(unity_SpecCube1, unity_SpecCube0, refDirBlend, roughness * UNITY_SPECCUBE_LOD_STEPS);
					float3 p1 = DecodeHDR(envSample1, unity_SpecCube1_HDR);
					p0 = lerp(p1, p0, interpolator);
				}
				return p0;
			}
			float3 GetReflections(in PoiCam poiCam, in PoiLight pl, in PoiMesh poiMesh, float roughness, float ForceFallback, float LightFallback, samplerCUBE reflectionCube, float3 reflectionDir)
			{
				float3 reflections = 0;
				float3 lighting = pl.finalLighting;
				if (ForceFallback == 0)
				{
					
					if (SceneHasReflections())
					{
						#ifdef UNITY_PASS_FORWARDBASE
						reflections = GetWorldReflections(reflectionDir, poiMesh.worldPos.xyz, roughness);
						#endif
					}
					else
					{
						#ifdef UNITY_PASS_FORWARDBASE
						reflections = texCUBElod(reflectionCube, float4(reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
						reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * lerp(1, pl.finalLighting, LightFallback);
						#endif
						#ifdef POI_PASS_ADD
						if (LightFallback)
						{
							reflections = texCUBElod(reflectionCube, float4(reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
							reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * pl.finalLighting;
						}
						#endif
					}
				}
				else
				{
					#ifdef UNITY_PASS_FORWARDBASE
					reflections = texCUBElod(reflectionCube, float4(reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
					reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * lerp(1, pl.finalLighting, LightFallback);
					#endif
					#ifdef POI_PASS_ADD
					if (LightFallback)
					{
						reflections = texCUBElod(reflectionCube, float4(reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
						reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * pl.finalLighting;
					}
					#endif
				}
				reflections *= pl.occlusion;
				return reflections;
			}
			float GetGGXTerm(float nDotL, float nDotV, float nDotH, float roughness)
			{
				float visibilityTerm = 0;
				if (nDotL > 0)
				{
					float rough = roughness;
					float rough2 = roughness * roughness;
					float lambdaV = nDotL * (nDotV * (1 - rough) + rough);
					float lambdaL = nDotV * (nDotL * (1 - rough) + rough);
					visibilityTerm = 0.5f / (lambdaV + lambdaL + 1e-5f);
					float d = (nDotH * rough2 - nDotH) * nDotH + 1.0f;
					float dotTerm = UNITY_INV_PI * rough2 / (d * d + 1e-7f);
					visibilityTerm *= dotTerm * UNITY_PI;
				}
				return visibilityTerm;
			}
			void GetSpecFresTerm(float nDotL, float nDotV, float nDotH, float lDotH, inout float3 specularTerm, inout float3 fresnelTerm, float3 specCol, float roughness)
			{
				specularTerm = GetGGXTerm(nDotL, nDotV, nDotH, roughness);
				fresnelTerm = FresnelTerm(specCol, lDotH);
				specularTerm = max(0, specularTerm * max(0.00001, nDotL));
			}
			float GetRoughness(float smoothness)
			{
				float rough = 1 - smoothness;
				rough *= 1.7 - 0.7 * rough;
				return rough;
			}
			#endif
			//ifex float(1)==0
			#ifdef MOCHIE_PBR
			void MochieBRDF(inout PoiFragData poiFragData, in PoiCam poiCam, inout PoiLight poiLight, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float smoothness = float(0.754);
				float smoothness2 = float(1);
				float metallic = float(0);
				float specularMask = 1;
				float reflectionMask = 1;
				#if defined(PROP_MOCHIEMETALLICMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 PRBMaps = POI2D_SAMPLER_PAN(_MochieMetallicMaps, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0).xy);
				
				if (float(0))
				{
					PRBMaps.zw = POI2D_SAMPLER_PAN(_MochieMetallicMaps, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0).xy).zw;
				}
				metallic *= PRBMaps.r;
				smoothness = (smoothness * PRBMaps.g);
				smoothness2 = (smoothness2 * PRBMaps.g);
				reflectionMask *= PRBMaps.b;
				specularMask *= PRBMaps.a;
				#endif
				reflectionMask *= float(0.181);
				specularMask *= float(0.339);
				if (float(0))
				{
					specularMask = 1 - specularMask;
				}
				if (float(0))
				{
					reflectionMask = 1 - reflectionMask;
				}
				#ifdef TPS_Penetrator
				if (float(0))
				{
					reflectionMask = lerp(0, reflectionMask * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
					specularMask = lerp(0, specularMask * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
				}
				#endif
				if (float(0))
				{
					smoothness = 1 - smoothness;
					smoothness2 = 1 - smoothness2;
				}
				float roughness = GetRoughness(smoothness);
				float roughness2 = GetRoughness(smoothness2);
				if (float(0))
				{
					metallic = 1 - metallic;
				}
				float3 specCol = lerp(unity_ColorSpaceDielectricSpec.rgb, poiFragData.baseColor, metallic);
				float omr = unity_ColorSpaceDielectricSpec.a - metallic * unity_ColorSpaceDielectricSpec.a;
				float percepRough = 1 - smoothness;
				float percepRough2 = 1 - smoothness2;
				
				if (float(1))
				{
					percepRough = GSAA_Filament(poiMesh.normals[1], percepRough, float(0.15), float(0.1));
					if (float(0) == 1 && float(1) > 0)
					{
						percepRough2 = GSAA_Filament(poiMesh.normals[1], percepRough2, float(0.15), float(0.1));
					}
				}
				float brdfRoughness = percepRough * percepRough;
				brdfRoughness = max(brdfRoughness, 0.002);
				float brdfRoughness2 = percepRough2 * percepRough2;
				brdfRoughness2 = max(brdfRoughness2, 0.002);
				float3 diffuse = poiFragData.baseColor;
				float3 specular = 0;
				float3 specular2 = 0;
				float3 vSpecular = 0;
				float3 vSpecular2 = 0;
				float3 reflections = 0;
				float3 environment = 0;
				float attenuation = min(poiLight.nDotLSaturated, lerp(poiLight.attenuation, 1, float(0)));
				float3 fresnelTerm = 1;
				float3 specularTerm = 1;
				GetSpecFresTerm(poiLight.nDotL, poiLight.nDotV, poiLight.nDotH, poiLight.lDotH, specularTerm, fresnelTerm, specCol, brdfRoughness);
				specular = poiLight.directColor * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, float4(1,1,1,1), float(0)) * poiLight.occlusion * attenuation;
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				for (int index = 0; index < 4; index++)
				{
					fresnelTerm = 1;
					specularTerm = 1;
					GetSpecFresTerm(poiLight.vDotNL[index], poiLight.nDotV, poiLight.vDotNH[index], poiLight.vDotLH[index], specularTerm, fresnelTerm, specCol, brdfRoughness);
					vSpecular += poiLight.vColor[index] * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, float4(1,1,1,1), float(0)) * poiLight.occlusion * poiLight.vAttenuation[index];
				}
				#endif
				if (float(0) == 1)
				{
					float3 fresnelTerm = 1;
					float3 specularTerm = 1;
					GetSpecFresTerm(poiLight.nDotL, poiLight.nDotV, poiLight.nDotH, poiLight.lDotH, specularTerm, fresnelTerm, specCol, brdfRoughness2);
					specular2 = poiLight.directColor * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, float4(1,1,1,1), float(0)) * poiLight.occlusion * attenuation * float(1);
					#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
					for (int index = 0; index < 4; index++)
					{
						fresnelTerm = 1;
						specularTerm = 1;
						GetSpecFresTerm(poiLight.vDotNL[index], poiLight.nDotV, poiLight.vDotNH[index], poiLight.vDotLH[index], specularTerm, fresnelTerm, specCol, brdfRoughness2);
						vSpecular2 += poiLight.vColor[index] * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, float4(1,1,1,1), float(0)) * poiLight.occlusion * poiLight.vAttenuation[index] * float(1);
					}
					#endif
				}
				float surfaceReduction = (1.0 / (brdfRoughness * brdfRoughness + 1.0));
				float grazingTerm = saturate(smoothness + (1 - omr));
				float3 reflCol = GetReflections(poiCam, poiLight, poiMesh, roughness, float(0), float(0), _MochieReflCube, poiCam.reflectionDir);
				reflections = surfaceReduction * reflCol * lerp(1, FresnelLerp(specCol, grazingTerm, poiLight.nDotV), float(1));
				reflections *= poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				reflections *= reflectionMask;
				#ifdef POI_PASS_ADD
				reflections *= poiLight.attenuation;
				#endif
				diffuse = lerp(diffuse, diffuse * omr, reflectionMask);
				environment = max(specular + vSpecular, specular2 + vSpecular2);
				environment += reflections;
				diffuse *= poiLight.finalLighting;
				poiFragData.finalColor = diffuse;
				poiLight.finalLightAdd += environment;
			}
			#endif
			//ifex float(1)==0
			#ifdef POI_IRIDESCENCE
			float3 calculateNormal(PoiMesh poiMesh, float3 baseNormal)
			{
				float3 normal = baseNormal;
				#if defined(PROP_IRIDESCENCENORMALMAP) || !defined(OPTIMIZER_ENABLED)
				normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_IridescenceNormalMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(1));
				normal = normalize(normal.x * poiMesh.tangent + normal.y * poiMesh.binormal + normal.z * baseNormal);
				#endif
				return normal;
			}
			void applyIridescence(inout PoiFragData poiFragData, PoiMesh poiMesh, PoiCam poiCam, inout PoiMods poiMods)
			{
				float3 normal = poiMesh.normals[float(1)];
				if (float(0))
				{
					normal = calculateNormal(poiMesh, normal);
				}
				float ndotv = dot(normal, poiCam.viewDir);
				float4 iridescenceColor = 1;
				#if defined(PROP_IRIDESCENCERAMP) || !defined(OPTIMIZER_ENABLED)
				iridescenceColor = UNITY_SAMPLE_TEX2D_SAMPLER(_IridescenceRamp, _MainTex, (1 - abs(ndotv)) * float4(1,1,0,0).xy + float4(0,0,0,0) * _Time.x + float4(1,1,0,0).zw);
				if (float(1) == 1)
				{
					float hue = _IridescenceHueShift + frac(_Time.x * float(0));
					iridescenceColor.rgb = hueShift(iridescenceColor.rgb, hue);
				}
				#endif
				float iridescenceMask = 1;
				#if defined(PROP_IRIDESCENCEMASK) || !defined(OPTIMIZER_ENABLED)
				iridescenceMask = POI2D_SAMPLER_PAN(_IridescenceMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#endif
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskIridescence != 4)
				{
					iridescenceMask *= blackLightMask[_BlackLightMaskIridescence];
				}
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, saturate(iridescenceColor.rgb * _IridescenceIntensity), iridescenceColor.a * float(0) * iridescenceMask);
				poiFragData.baseColor.rgb += saturate(iridescenceColor.rgb * _IridescenceIntensity * iridescenceColor.a * float(0.036) * iridescenceMask);
				poiFragData.baseColor.rgb *= saturate(lerp(1, iridescenceColor.rgb * _IridescenceIntensity, iridescenceColor.a * float(0.106) * iridescenceMask));
				float emissionStrength = float(0);
				#ifdef POI_AUDIOLINK
				if (any(float4(0,0,0,0)))
				{
					emissionStrength += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
				}
				#endif
				poiFragData.emission += saturate(iridescenceColor.rgb * _IridescenceIntensity) * iridescenceColor.a * iridescenceMask * emissionStrength;
			}
			#endif
			float4 frag(v2f i, uint facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				PoiVertexLights poiVertexLights;
				PoiInitStruct(PoiVertexLights, poiVertexLights);
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				poiMods.globalEmission = 1;
				PoiFragData poiFragData;
				poiFragData.emission = 0;
				poiFragData.baseColor = float3(0, 0, 0);
				poiFragData.finalColor = float3(0, 0, 0);
				poiFragData.alpha = 1;
				#ifdef POI_UDIMDISCARD
				applyUDIMDiscard(i);
				#endif
				poiMesh.objectPosition = i.objectPos;
				poiMesh.objNormal = i.objNormal;
				poiMesh.normals[0] = i.normal;
				poiMesh.tangent = i.tangent;
				poiMesh.binormal = i.binormal;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.localPos = i.localPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				poiMesh.isFrontFace = facing;
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent *= -1;
					poiMesh.binormal *= -1;
				}
				#endif
				poiCam.viewDir = !IsOrthographicCamera() ? normalize(_WorldSpaceCameraPos - i.worldPos.xyz) : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				float3 tanToWorld0 = float3(i.tangent.x, i.binormal.x, i.normal.x);
				float3 tanToWorld1 = float3(i.tangent.y, i.binormal.y, i.normal.y);
				float3 tanToWorld2 = float3(i.tangent.z, i.binormal.z, i.normal.z);
				float3 ase_tanViewDir = tanToWorld0 * poiCam.viewDir.x + tanToWorld1 * poiCam.viewDir.y + tanToWorld2 * poiCam.viewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0];
				poiMesh.uv[1] = i.uv[1];
				poiMesh.uv[2] = i.uv[2];
				poiMesh.uv[3] = i.uv[3];
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.worldPos.xz;
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				float2 mainUV = poiMesh.uv[float(1)].xy;
				if (float(0))
				{
					mainUV = sharpSample(_MainTex_TexelSize, mainUV);
				}
				float4 mainTexture = UNITY_SAMPLE_TEX2D(_MainTex, poiUV(mainUV, _MainTex_ST) + _Time.x * float4(0,0,0,0));
				float3 mainNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_BumpMap, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
				poiMesh.tangentSpaceNormal = mainNormal;
				//ifex float(1)==0
				#if defined(FINALPASS) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				ApplyDetailNormal(poiMods, poiMesh);
				#endif
				//ifex float(1)==0
				#if defined(GEOM_TYPE_MESH) && defined(VIGNETTE) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				calculateRGBNormals(poiMesh);
				#endif
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent.xyz +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				float3 fancyNormal = UnpackNormal(float4(0.5, 0.5, 1, 1));
				poiMesh.normals[0] = normalize(
				fancyNormal.x * poiMesh.tangent.xyz +
				fancyNormal.y * poiMesh.binormal +
				fancyNormal.z * poiMesh.normals[0]
				);
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = _WorldSpaceCameraPos;
				poiCam.reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				poiCam.vertexReflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[0]);
				poiCam.distanceToVert = distance(poiMesh.worldPos, poiCam.worldPos);
				poiCam.grabPos = i.grabPos;
				poiCam.screenUV = calcScreenUVs(i.grabPos);
				poiCam.vDotN = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.clipPos = i.pos;
				poiCam.worldDirection = i.worldDirection;
				calculateGlobalThemes(poiMods);
				//ifex float(1)==0
				#ifdef POI_AUDIOLINK
				SetupAudioLink(poiFragData, poiMods, poiMesh);
				#endif
				poiLight.finalLightAdd = 0;
				#if defined(PROP_LIGHTINGAOMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 AOMaps = POI2D_SAMPLER_PAN(_LightingAOMaps, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				poiLight.occlusion = lerp(1, AOMaps.r, float(1)) * lerp(1, AOMaps.g, float(0)) * lerp(1, AOMaps.b, float(0)) * lerp(1, AOMaps.a, float(0));
				#else
				poiLight.occlusion = 1;
				#endif
				#if defined(PROP_LIGHTINGDETAILSHADOWMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 DetailShadows = POI2D_SAMPLER_PAN(_LightingDetailShadowMaps, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#ifndef POI_PASS_ADD
				poiLight.detailShadow = lerp(1, DetailShadows.r, float(1)) * lerp(1, DetailShadows.g, float(0)) * lerp(1, DetailShadows.b, float(0)) * lerp(1, DetailShadows.a, float(0));
				#else
				poiLight.detailShadow = lerp(1, DetailShadows.r, float(1)) * lerp(1, DetailShadows.g, float(0)) * lerp(1, DetailShadows.b, float(0)) * lerp(1, DetailShadows.a, float(0));
				#endif
				#else
				poiLight.detailShadow = 1;
				#endif
				#if defined(PROP_LIGHTINGSHADOWMASKS) || !defined(OPTIMIZER_ENABLED)
				float4 ShadowMasks = POI2D_SAMPLER_PAN(_LightingShadowMasks, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				poiLight.shadowMask = lerp(1, ShadowMasks.r, float(1)) * lerp(1, ShadowMasks.g, float(0)) * lerp(1, ShadowMasks.b, float(0)) * lerp(1, ShadowMasks.a, float(0));
				#else
				poiLight.shadowMask = 1;
				#endif
				#ifdef UNITY_PASS_FORWARDBASE
				bool lightExists = false;
				if (any(_LightColor0.rgb >= 0.002))
				{
					lightExists = true;
				}
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float4 toLightX = unity_4LightPosX0 - i.worldPos.x;
				float4 toLightY = unity_4LightPosY0 - i.worldPos.y;
				float4 toLightZ = unity_4LightPosZ0 - i.worldPos.z;
				float4 lengthSq = 0;
				lengthSq += toLightX * toLightX;
				lengthSq += toLightY * toLightY;
				lengthSq += toLightZ * toLightZ;
				float4 lightAttenSq = unity_4LightAtten0;
				float4 atten = 1.0 / (1.0 + lengthSq * lightAttenSq);
				float4 vLightWeight = saturate(1 - (lengthSq * lightAttenSq / 25));
				poiLight.vAttenuation = min(atten, vLightWeight * vLightWeight);
				poiLight.vDotNL = 0;
				poiLight.vDotNL += toLightX * poiMesh.normals[1].x;
				poiLight.vDotNL += toLightY * poiMesh.normals[1].y;
				poiLight.vDotNL += toLightZ * poiMesh.normals[1].z;
				float4 corr = rsqrt(lengthSq);
				poiLight.vertexVDotNL = max(0, poiLight.vDotNL * corr);
				poiLight.vertexVDotNL = 0;
				poiLight.vertexVDotNL += toLightX * poiMesh.normals[0].x;
				poiLight.vertexVDotNL += toLightY * poiMesh.normals[0].y;
				poiLight.vertexVDotNL += toLightZ * poiMesh.normals[0].z;
				poiLight.vertexVDotNL = max(0, poiLight.vDotNL * corr);
				poiLight.vAttenuationDotNL = saturate(poiLight.vAttenuation * saturate(poiLight.vDotNL));
				for (int index = 0; index < 4; index++)
				{
					poiLight.vPosition[index] = float3(unity_4LightPosX0[index], unity_4LightPosY0[index], unity_4LightPosZ0[index]);
					float3 vertexToLightSource = poiLight.vPosition[index] - poiMesh.worldPos;
					poiLight.vDirection[index] = normalize(vertexToLightSource);
					poiLight.vColor[index] = unity_LightColor[index].rgb;
					poiLight.vHalfDir[index] = Unity_SafeNormalize(poiLight.vDirection[index] + poiCam.viewDir);
					poiLight.vDotNL[index] = dot(poiMesh.normals[1], -poiLight.vDirection[index]);
					poiLight.vCorrectedDotNL[index] = .5 * (poiLight.vDotNL[index] + 1);
					poiLight.vDotLH[index] = saturate(dot(poiLight.vDirection[index], poiLight.vHalfDir[index]));
					poiLight.vDotNH[index] = dot(poiMesh.normals[1], poiLight.vHalfDir[index]);
					poiLight.vertexVDotNH[index] = saturate(dot(poiMesh.normals[0], poiLight.vHalfDir[index]));
				}
				#endif
				if (float(0) == 0) // Poi Custom Light Color
				{
					float3 magic = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
					float3 normalLight = _LightColor0.rgb + BetterSH9(float4(0, 0, 0, 1));
					float magiLumi = calculateluminance(magic);
					float normaLumi = calculateluminance(normalLight);
					float maginormalumi = magiLumi + normaLumi;
					float magiratio = magiLumi / maginormalumi;
					float normaRatio = normaLumi / maginormalumi;
					float target = calculateluminance(magic * magiratio + normalLight * normaRatio);
					float3 properLightColor = magic + normalLight;
					float properLuminance = calculateluminance(magic + normalLight);
					poiLight.directColor = properLightColor * max(0.0001, (target / properLuminance));
					poiLight.indirectColor = BetterSH9(float4(lerp(0, poiMesh.normals[1], float(0)), 1));
				}
				if (float(0) == 1) // More standard approach to light color
				{
					float3 indirectColor = BetterSH9(float4(poiMesh.normals[1], 1));
					if (lightExists)
					{
						poiLight.directColor = _LightColor0.rgb;
						poiLight.indirectColor = indirectColor;
					}
					else
					{
						poiLight.directColor = indirectColor * 0.6;
						poiLight.indirectColor = indirectColor * 0.5;
					}
				}
				if (float(0) == 2) // UTS style
				{
					poiLight.indirectColor = saturate(max(half3(0.05, 0.05, 0.05) * float(1), max(ShadeSH9(half4(0.0, 0.0, 0.0, 1.0)), ShadeSH9(half4(0.0, -1.0, 0.0, 1.0)).rgb) * float(1)));
					poiLight.directColor = max(poiLight.indirectColor, _LightColor0.rgb);
				}
				if (float(0) == 3) // OpenLit
				{
					float3 lightDirectionForSH9 = OpenLitLightingDirection();
					OpenLitShadeSH9ToonDouble(lightDirectionForSH9, poiLight.directColor, poiLight.indirectColor);
					poiLight.directColor += _LightColor0.rgb;
				}
				float lightMapMode = float(0);
				if (float(0) == 0)
				{
					poiLight.direction = _WorldSpaceLightPos0.xyz + unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz;
				}
				if (float(0) == 1 || float(0) == 2)
				{
					if (float(0) == 1)
					{
						poiLight.direction = mul(unity_ObjectToWorld, float4(0,0,0,1)).xyz;;
					}
					if (float(0) == 2)
					{
						poiLight.direction = float4(0,0,0,1);
					}
					if (lightMapMode == 0)
					{
						lightMapMode == 1;
					}
				}
				if (float(0) == 3) // UTS
				{
					float3 defaultLightDirection = normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
					float3 lightDirection = normalize(lerp(defaultLightDirection, _WorldSpaceLightPos0.xyz, any(_WorldSpaceLightPos0.xyz)));
					poiLight.direction = lightDirection;
				}
				if (float(0) == 4) // OpenLit
				{
					poiLight.direction = OpenLitLightingDirection(); // float4 customDir = 0; // Do we want to give users to alter this (OpenLit always does!)?
				}
				if (!any(poiLight.direction))
				{
					poiLight.direction = float3(.4, 1, .4);
				}
				poiLight.direction = normalize(poiLight.direction);
				poiLight.attenuationStrength = float(0);
				poiLight.attenuation = 1;
				if (!all(_LightColor0.rgb == 0.0))
				{
					UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
					poiLight.attenuation *= attenuation;
				}
				if (!any(poiLight.directColor) && !any(poiLight.indirectColor) && lightMapMode == 0)
				{
					lightMapMode = 1;
					if (float(0) == 0)
					{
						poiLight.direction = normalize(float3(.4, 1, .4));
					}
				}
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.vertexNDotL = dot(poiMesh.normals[0], poiLight.direction);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.vertexNDotV = abs(dot(poiMesh.normals[0], poiCam.viewDir));
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.vertexNDotH = max(0.00001, dot(poiMesh.normals[0], poiLight.halfDir));
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = max(0.00001, dot(poiLight.direction, poiLight.halfDir));
				if (lightMapMode == 0)
				{
					float3 ShadeSH9Plus = GetSHLength();
					float3 ShadeSH9Minus = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
					float3 greyScaleVector = float3(.33333, .33333, .33333);
					float bw_lightColor = dot(poiLight.directColor, greyScaleVector);
					float bw_directLighting = (((poiLight.nDotL * 0.5 + 0.5) * bw_lightColor * lerp(1, poiLight.attenuation, poiLight.attenuationStrength)) + dot(ShadeSH9(float4(poiMesh.normals[1], 1)), greyScaleVector));
					float bw_bottomIndirectLighting = dot(ShadeSH9Minus, greyScaleVector);
					float bw_topIndirectLighting = dot(ShadeSH9Plus, greyScaleVector);
					float lightDifference = ((bw_topIndirectLighting + bw_lightColor) - bw_bottomIndirectLighting);
					poiLight.lightMap = smoothstep(0, lightDifference, bw_directLighting - bw_bottomIndirectLighting) * poiLight.detailShadow;
				}
				if (lightMapMode == 1)
				{
					poiLight.lightMap = poiLight.nDotLNormalized * lerp(1, poiLight.attenuation, poiLight.attenuationStrength);
				}
				if (lightMapMode == 2)
				{
					poiLight.lightMap = poiLight.nDotLSaturated * lerp(1, poiLight.attenuation, poiLight.attenuationStrength);
				}
				poiLight.directColor = max(poiLight.directColor, 0.0001);
				poiLight.indirectColor = max(poiLight.indirectColor, 0.0001);
				if (float(0) == 3)
				{
					poiLight.directColor = max(poiLight.directColor, float(0));
					poiLight.indirectColor = max(poiLight.indirectColor, float(0));
				}
				else
				{
					poiLight.directColor = max(poiLight.directColor, poiLight.directColor / max(0.0001, (calculateluminance(poiLight.directColor) / float(0))));
					poiLight.indirectColor = max(poiLight.indirectColor, poiLight.indirectColor / max(0.0001, (calculateluminance(poiLight.indirectColor) / float(0))));
				}
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), float(0));
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), float(0));
				if (float(1))
				{
					poiLight.directColor = min(poiLight.directColor, float(1));
					poiLight.indirectColor = min(poiLight.indirectColor, float(1));
				}
				if (float(0))
				{
					poiLight.directColor = poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				}
				#ifdef UNITY_PASS_FORWARDBASE
				poiLight.directColor = max(poiLight.directColor * float(1), 0);
				poiLight.directColor = max(poiLight.directColor + float(0), 0);
				poiLight.indirectColor = max(poiLight.indirectColor * float(1), 0);
				poiLight.indirectColor = max(poiLight.indirectColor + float(0), 0);
				#endif
				#endif
				#ifdef POI_PASS_ADD
				#if defined(POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE) && defined(DIRECTIONAL)
				return float4(mainTexture.rgb * .0001, 1);
				#endif
				#if defined(POINT) || defined(SPOT)
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz - i.worldPos.xyz);
				#ifdef POINT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(i, poiMesh.worldPos);
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1)).xyz;
				poiLight.attenuation = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(i, poiMesh.worldPos);
				unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1));
				poiLight.attenuation = (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#else
				poiLight.direction = _WorldSpaceLightPos0.xyz;
				UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
				poiLight.additiveShadow == 0;
				poiLight.attenuation = attenuation;
				#endif
				poiLight.directColor = float(0) ? min(float(1), _LightColor0.rgb) : _LightColor0.rgb;
				#if defined(POINT_COOKIE) || defined(DIRECTIONAL_COOKIE)
				poiLight.indirectColor = 0;
				#else
				poiLight.indirectColor = lerp(0, poiLight.directColor, float(0.5));
				#endif
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), float(0));
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), float(0));
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				poiLight.vertexNDotL = dot(poiMesh.normals[0], poiLight.direction);
				poiLight.vertexNDotV = abs(dot(poiMesh.normals[0], poiCam.viewDir));
				poiLight.vertexNDotH = max(0.00001, dot(poiMesh.normals[0], poiLight.halfDir));
				poiLight.lightMap = 1;
				#endif
				poiFragData.baseColor = mainTexture.rgb * poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0));
				poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				//ifex float(1)==0
				#ifdef COLOR_GRADING_HDR
				#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 hueShiftAlpha = POI2D_SAMPLER_PAN(_MainColorAdjustTexture, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 hueShiftAlpha = 1;
				#endif
				if (float(1))
				{
					float shift = _MainHueShift;
					#ifdef POI_AUDIOLINK
					if (poiMods.audioLinkAvailable && float(0))
					{
						shift += AudioLinkGetChronoTime(float(0), float(0)) * float(1);
					}
					#endif
					if (float(0))
					{
						poiFragData.baseColor = lerp(poiFragData.baseColor, hueShift(poiFragData.baseColor, shift + float(0) * _Time.x), hueShiftAlpha.r);
					}
					else
					{
						poiFragData.baseColor = hueShift(poiFragData.baseColor, frac((shift - (1 - hueShiftAlpha.r) + float(0) * _Time.x)));
					}
				}
				poiFragData.baseColor = lerp(poiFragData.baseColor, dot(poiFragData.baseColor, float3(0.3, 0.59, 0.11)), -_Saturation * hueShiftAlpha.b);
				poiFragData.baseColor = saturate(poiFragData.baseColor + _MainBrightness * hueShiftAlpha.g);
				#endif
				#if defined(PROP_CLIPPINGMASK) || !defined(OPTIMIZER_ENABLED)
				float alphaMask = POI2D_SAMPLER_PAN(_ClippingMask, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)).r;
				if (float(0))
				{
					alphaMask = 1 - alphaMask;
				}
				#else
				float alphaMask = 1;
				#endif
				poiFragData.alpha *= alphaMask;
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				//ifex float(1)==0
				#ifdef FINALPASS
				ApplyDetailColor(poiFragData, poiMesh, poiMods);
				#endif
				//ifex float(1)==0
				#ifdef VIGNETTE
				calculateRGBMask(poiFragData, poiMesh, poiMods);
				#endif
				#if defined(GEOM_TYPE_BRANCH) || defined(GEOM_TYPE_BRANCH_DETAIL) || defined(GEOM_TYPE_FROND) || defined(DEPTH_OF_FIELD_COC_VIEW)
				applyDecals(poiFragData, poiMesh, poiCam, poiMods, poiLight);
				#endif
				//ifex float(1)==0
				#if defined(_LIGHTINGMODE_SHADEMAP) && defined(VIGNETTE_MASKED)
				#ifndef POI_PASS_OUTLINE
				#ifdef _LIGHTINGMODE_SHADEMAP
				applyShadeMapping(poiFragData, poiMesh, poiLight);
				#endif
				#endif
				#endif
				//ifex float(1)==0
				#ifdef VIGNETTE_MASKED
				#ifdef POI_PASS_OUTLINE
				if (_OutlineLit)
				{
					calculateShading(poiLight, poiFragData, poiMesh, poiCam);
				}
				else
				{
					poiLight.finalLighting = 1;
				}
				#else
				calculateShading(poiLight, poiFragData, poiMesh, poiCam);
				#endif
				#else
				poiLight.finalLighting = 1;
				poiLight.rampedLightMap = poiEdgeNonLinear(poiLight.nDotL, 0.1, .1);
				//ifex float(1)==0
				#endif
				//ifex float(1)==0
				#ifdef POI_AUDIOLINK
				#ifdef POI_AL_DECAL
				ApplyAudioLinkDecal(poiMesh, poiFragData, poiMods);
				#endif
				#endif
				//ifex float(1)==0
				#ifdef _GLOSSYREFLECTIONS_OFF
				ApplyRimLighting(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				//ifex float(1)==0
				#ifdef _SUNDISK_SIMPLE
				applyGlitter(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				//ifex float(1)==0
				#ifdef POI_IRIDESCENCE
				applyIridescence(poiFragData, poiMesh, poiCam, poiMods);
				#endif
				
				if (float(0))
				{
					poiFragData.baseColor *= saturate(poiFragData.alpha);
				}
				poiFragData.finalColor = poiFragData.baseColor;
				poiFragData.finalColor = poiFragData.baseColor * poiLight.finalLighting;
				//ifex float(1)==0
				#ifdef MOCHIE_PBR
				MochieBRDF(poiFragData, poiCam, poiLight, poiMesh, poiMods);
				#endif
				if (float(0) == 0)
				{
					UNITY_APPLY_FOG(i.fogCoord, poiFragData.finalColor);
				}
				poiFragData.alpha = float(0) ? 1 : poiFragData.alpha;
				poiFragData.finalColor += poiLight.finalLightAdd;
				#ifdef UNITY_PASS_FORWARDBASE
				poiFragData.emission = max(poiFragData.emission * float(1), 0);
				poiFragData.finalColor = max(poiFragData.finalColor * float(1), 0);
				#endif
				if (float(0) == POI_MODE_OPAQUE)
				{
					poiFragData.alpha = 1;
				}
				clip(poiFragData.alpha - float(0.5));
				return float4(poiFragData.finalColor + poiFragData.emission * poiMods.globalEmission, poiFragData.alpha) + POI_SAFE_RGB0;
			}
			ENDCG
		}
		Pass
		{
			Tags { "LightMode" = "ForwardAdd" }
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				//ifex _StencilType == 1
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			ZWrite Off
			Cull [_Cull]
			AlphaToMask [_AlphaToCoverage]
			ZTest [_ZTest]
			ColorMask [_ColorMask]
			Offset [_OffsetFactor], [_OffsetUnits]
			BlendOp [_AddBlendOp], [_AddBlendOpAlpha]
			Blend [_AddSrcBlend] [_AddDstBlend]
			CGPROGRAM
 #define OPTIMIZER_ENABLED 
 #define COLOR_GRADING_HDR 
 #define DEPTH_OF_FIELD_COC_VIEW 
 #define FINALPASS 
 #define GEOM_TYPE_BRANCH 
 #define GEOM_TYPE_BRANCH_DETAIL 
 #define GEOM_TYPE_FROND 
 #define MOCHIE_PBR 
 #define POI_AL_DECAL 
 #define POI_AUDIOLINK 
 #define POI_IRIDESCENCE 
 #define POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE 
 #define POI_LIGHT_DATA_ADDITIVE_ENABLE 
 #define POI_VERTEXLIGHT_ON 
 #define VIGNETTE 
 #define VIGNETTE_MASKED 
 #define _GLOSSYREFLECTIONS_OFF 
 #define _LIGHTINGMODE_TEXTURERAMP 
 #define _RIMSTYLE_POIYOMI 
 #define _SUNDISK_SIMPLE 
 #define PROP_DETAILMASK 
 #define PROP_DETAILTEX 
 #define PROP_RGBMASK 
 #define PROP_REDTEXTURE 
 #define PROP_DECALMASK 
 #define PROP_DECALTEXTURE 
 #define PROP_DECALTEXTURE1 
 #define PROP_DECALTEXTURE2 
 #define PROP_DECALTEXTURE3 
 #define PROP_RIMMASK 
 #define PROP_SET_RIMLIGHTMASK 
 #define PROP_MOCHIEMETALLICMAPS 
 #define PROP_GLITTERCOLORMAP 
 #define PROP_IRIDESCENCERAMP 
 #define PROP_IRIDESCENCEMASK 
 #define PROP_ALDECALCOLORMASK 
			#pragma target 5.0
			#pragma skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			#pragma multi_compile_fwdadd_fullshadows
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define POI_PASS_ADD
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"
			#include "UnityPBSLighting.cginc"
			#ifdef POI_PASS_META
			#include "UnityMetaPass.cginc"
			#endif
			#pragma vertex vert
			#pragma fragment frag
			#define DielectricSpec float4(0.04, 0.04, 0.04, 1.0 - 0.04)
			#define PI float(3.14159265359)
			#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan))
			#define POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, ddx, ddy) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan, ddx, ddy))
			#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_PAN(tex, uv, pan) (tex2D(tex, uv + _Time.x * pan))
			#define POI2D(tex, uv) (tex2D(tex, uv))
			#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
			#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, uv + _Time.x * pan))
			#define POI2D_MAINTEX_SAMPLER_PAN_INLINED(tex, poiMesh) (POI2D_SAMPLER_PAN(tex, _MainTex, poiUV(poiMesh.uv[tex##UV], tex##_ST), tex##Pan))
			#define POI_SAFE_RGB0 float4(mainTexture.rgb * .0001, 0)
			#define POI_SAFE_RGB1 float4(mainTexture.rgb * .0001, 1)
			#define POI_SAFE_RGBA mainTexture
			#if defined(UNITY_COMPILER_HLSL)
			#define PoiInitStruct(type, name) name = (type)0;
			#else
			#define PoiInitStruct(type, name)
			#endif
			#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
			#define POI_MODE_OPAQUE 0
			#define POI_MODE_CUTOUT 1
			#define POI_MODE_FADE 2
			#define POI_MODE_TRANSPARENT 3
			#define POI_MODE_ADDITIVE 4
			#define POI_MODE_SOFTADDITIVE 5
			#define POI_MODE_MULTIPLICATIVE 6
			#define POI_MODE_2XMULTIPLICATIVE 7
			#define POI_MODE_TRANSCLIPPING 9
			//ifex float(1)==0
			#define ALPASS_DFT                      uint2(0,4)   //Size: 128, 2
			#define ALPASS_WAVEFORM                 uint2(0,6)   //Size: 128, 16
			#define ALPASS_AUDIOLINK                uint2(0,0)   //Size: 128, 4
			#define ALPASS_AUDIOBASS                uint2(0,0)   //Size: 128, 1
			#define ALPASS_AUDIOLOWMIDS             uint2(0,1)   //Size: 128, 1
			#define ALPASS_AUDIOHIGHMIDS            uint2(0,2)   //Size: 128, 1
			#define ALPASS_AUDIOTREBLE              uint2(0,3)   //Size: 128, 1
			#define ALPASS_AUDIOLINKHISTORY         uint2(1,0)   //Size: 127, 4
			#define ALPASS_GENERALVU                uint2(0,22)  //Size: 12, 1
			#define ALPASS_CCINTERNAL               uint2(12,22) //Size: 12, 2
			#define ALPASS_CCCOLORS                 uint2(25,22) //Size: 11, 1
			#define ALPASS_CCSTRIP                  uint2(0,24)  //Size: 128, 1
			#define ALPASS_CCLIGHTS                 uint2(0,25)  //Size: 128, 2
			#define ALPASS_AUTOCORRELATOR           uint2(0,27)  //Size: 128, 1
			#define ALPASS_GENERALVU_INSTANCE_TIME  uint2(2,22)
			#define ALPASS_GENERALVU_LOCAL_TIME     uint2(3,22)
			#define ALPASS_GENERALVU_NETWORK_TIME   uint2(4,22)
			#define ALPASS_GENERALVU_PLAYERINFO     uint2(6,22)
			#define ALPASS_FILTEREDAUDIOLINK        uint2(0,28)  //Size: 16, 4
			#define ALPASS_CHRONOTENSITY            uint2(16,28) //Size: 8, 4
			#define ALPASS_THEME_COLOR0             uint2(0,23)
			#define ALPASS_THEME_COLOR1             uint2(1,23)
			#define ALPASS_THEME_COLOR2             uint2(2,23)
			#define ALPASS_THEME_COLOR3             uint2(3,23)
			#define ALPASS_FILTEREDVU               uint2(24,28) //Size: 4, 4
			#define ALPASS_FILTEREDVU_INTENSITY     uint2(24,28) //Size: 4, 1
			#define ALPASS_FILTEREDVU_MARKER        uint2(24,29) //Size: 4, 1
			#define AUDIOLINK_SAMPHIST              3069        // Internal use for algos, do not change.
			#define AUDIOLINK_SAMPLEDATA24          2046
			#define AUDIOLINK_EXPBINS               24
			#define AUDIOLINK_EXPOCT                10
			#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
			#define AUDIOLINK_WIDTH                 128
			#define AUDIOLINK_SPS                   48000       // Samples per second
			#define AUDIOLINK_ROOTNOTE              0
			#define AUDIOLINK_4BAND_FREQFLOOR       0.123
			#define AUDIOLINK_4BAND_FREQCEILING     1
			#define AUDIOLINK_BOTTOM_FREQUENCY      13.75
			#define AUDIOLINK_BASE_AMPLITUDE        2.5
			#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
			#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
			#define AUDIOLINK_DFT_Q                 4.0
			#define AUDIOLINK_TREBLE_CORRECTION     5.0
			#define COLORCHORD_EMAXBIN              192
			#define COLORCHORD_IIR_DECAY_1          0.90
			#define COLORCHORD_IIR_DECAY_2          0.85
			#define COLORCHORD_CONSTANT_DECAY_1     0.01
			#define COLORCHORD_CONSTANT_DECAY_2     0.0
			#define COLORCHORD_NOTE_CLOSEST         3.0
			#define COLORCHORD_NEW_NOTE_GAIN        8.0
			#define COLORCHORD_MAX_NOTES            10
			#ifndef glsl_mod
			#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
			#endif
			uniform float4               _AudioTexture_TexelSize;
			#ifdef SHADER_TARGET_SURFACE_ANALYSIS
			#define AUDIOLINK_STANDARD_INDEXING
			#endif
			#ifdef AUDIOLINK_STANDARD_INDEXING
			sampler2D _AudioTexture;
			#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
			#else
			uniform Texture2D<float4> _AudioTexture;
			SamplerState sampler_AudioTexture;
			#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
			#endif
			uniform sampler2D _Stored;
			uniform float4 _Stored_TexelSize;
			#define LumaData(x,y) tex2Dlod(_Stored, float4(x, y, 0, 0))
			float _Mode;
			float4 _GlobalThemeColor0;
			float4 _GlobalThemeColor1;
			float4 _GlobalThemeColor2;
			float4 _GlobalThemeColor3;
			float _StereoEnabled;
			float _PolarUV;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _PanoUseBothEyes;
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			float _AudioLinkDelay;
			float _AudioLinkAnimToggle;
			float _DebugWaveform;
			float _DebugDFT;
			float _DebugBass;
			float _DebugLowMids;
			float _DebugHighMids;
			float _DebugTreble;
			float _DebugCCColors;
			float _DebugCCStrip;
			float _DebugCCLights;
			float _DebugAutocorrelator;
			float _DebugChronotensity;
			float _AudioLinkCCStripY;
			#endif
			#if defined(PROP_LIGHTINGAOMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingAOMaps;
			#endif
			float4 _LightingAOMaps_ST;
			float2 _LightingAOMapsPan;
			float _LightingAOMapsUV;
			float _LightDataAOStrengthR;
			float _LightDataAOStrengthG;
			float _LightDataAOStrengthB;
			float _LightDataAOStrengthA;
			#if defined(PROP_LIGHTINGDETAILSHADOWMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingDetailShadowMaps;
			#endif
			float4 _LightingDetailShadowMaps_ST;
			float2 _LightingDetailShadowMapsPan;
			float _LightingDetailShadowMapsUV;
			float _LightingDetailShadowStrengthR;
			float _LightingDetailShadowStrengthG;
			float _LightingDetailShadowStrengthB;
			float _LightingDetailShadowStrengthA;
			float _LightingAddDetailShadowStrengthR;
			float _LightingAddDetailShadowStrengthG;
			float _LightingAddDetailShadowStrengthB;
			float _LightingAddDetailShadowStrengthA;
			#if defined(PROP_LIGHTINGSHADOWMASKS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingShadowMasks;
			#endif
			float4 _LightingShadowMasks_ST;
			float2 _LightingShadowMasksPan;
			float _LightingShadowMasksUV;
			float _LightingShadowMaskStrengthR;
			float _LightingShadowMaskStrengthG;
			float _LightingShadowMaskStrengthB;
			float _LightingShadowMaskStrengthA;
			float _Unlit_Intensity;
			float _LightingColorMode;
			float _LightingMapMode;
			float _LightingDirectionMode;
			float3 _LightngForcedDirection;
			float _LightingIndirectUsesNormals;
			float _LightingCapEnabled;
			float _LightingCap;
			float _LightingForceColorEnabled;
			float3 _LightingForcedColor;
			float _LightingForcedColorThemeIndex;
			float _LightingCastedShadows;
			float _LightingMonochromatic;
			float _LightingAdditiveMonochromatic;
			float _LightingMinLightBrightness;
			float _LightingAdditiveLimited;
			float _LightingAdditiveLimit;
			float _LightingAdditivePassthrough;
			float _LightingDebugVisualize;
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			float _AddBlendOp;
			float4 _Color;
			float _ColorThemeIndex;
			UNITY_DECLARE_TEX2D(_MainTex);
			UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
			float _MainPixelMode;
			float4 _MainTex_ST;
			float2 _MainTexPan;
			float _MainTexUV;
			float4 _MainTex_TexelSize;
			Texture2D _BumpMap;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			Texture2D _ClippingMask;
			float4 _ClippingMask_ST;
			float2 _ClippingMaskPan;
			float _ClippingMaskUV;
			float _Inverse_Clipping;
			float _Cutoff;
			//ifex float(1)==0
			float _MainColorAdjustToggle;
			#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MainColorAdjustTexture;
			#endif
			float4 _MainColorAdjustTexture_ST;
			float2 _MainColorAdjustTexturePan;
			float _MainColorAdjustTextureUV;
			float _MainHueShiftToggle;
			float _MainHueShiftReplace;
			float _MainHueShift;
			float _MainHueShiftSpeed;
			float _Saturation;
			float _MainBrightness;
			float _MainHueALCTEnabled;
			float _MainALHueShiftBand;
			float _MainALHueShiftCTIndex;
			float _MainHueALMotionSpeed;
			SamplerState sampler_linear_clamp;
			SamplerState sampler_linear_repeat;
			float _AlphaForceOpaque;
			float _AlphaMod;
			float _AlphaPremultiply;
			float _AlphaBoostFA;
			//ifex float(1)==0
			#ifdef FINALPASS
			#if defined(PROP_DETAILMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailMask;
			#endif
			float4 _DetailMask_ST;
			float2 _DetailMaskPan;
			float _DetailMaskUV;
			#if defined(PROP_DETAILNORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailNormalMap;
			#endif
			float4 _DetailNormalMap_ST;
			float2 _DetailNormalMapPan;
			float _DetailNormalMapUV;
			#if defined(PROP_DETAILTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailTex;
			#endif
			float4 _DetailTex_ST;
			float2 _DetailTexPan;
			float _DetailTexUV;
			float3 _DetailTint;
			float _DetailTintThemeIndex;
			float _DetailTexIntensity;
			float _DetailBrightness;
			float _DetailNormalMapScale;
			#endif
			//ifex float(1)==0
			#ifdef VIGNETTE
			#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RGBMask;
			#endif
			float4 _RGBMask_ST;
			float2 _RGBMaskPan;
			float _RGBMaskUV;
			#if defined(PROP_REDTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RedTexture;
			#endif
			float4 _RedTexture_ST;
			float2 _RedTexturePan;
			float _RedTextureUV;
			float _RedAlphaAdd;
			#if defined(PROP_GREENTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GreenTexture;
			#endif
			float4 _GreenTexture_ST;
			float2 _GreenTexturePan;
			float _GreenTextureUV;
			float _GreenAlphaAdd;
			#if defined(PROP_BLUETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BlueTexture;
			#endif
			float4 _BlueTexture_ST;
			float2 _BlueTexturePan;
			float _BlueTextureUV;
			float _BlueAlphaAdd;
			#if defined(PROP_ALPHATEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _AlphaTexture;
			#endif
			float4 _AlphaTexture_ST;
			float2 _AlphaTexturePan;
			float _AlphaTextureUV;
			float _AlphaAlphaAdd;
			float4 _RedColor;
			float4 _GreenColor;
			float4 _BlueColor;
			float4 _AlphaColor;
			float _RedColorThemeIndex;
			float _GreenColorThemeIndex;
			float _BlueColorThemeIndex;
			float _AlphaColorThemeIndex;
			float _RGBBlendMultiplicative;
			float _RGBUseVertexColors;
			float _RGBNormalBlend;
			#endif
			//ifex float(1)==0 && float(1)==0 && float(1)==0 && float(1)==0
			#if defined(PROP_DECALMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DecalMask;
			float4 _DecalMask_ST;
			float2 _DecalMaskPan;
			float _DecalMaskUV;
			#endif
			float _DecalTPSDepthMaskEnabled;
			float _Decal0TPSMaskStrength;
			float _Decal1TPSMaskStrength;
			float _Decal2TPSMaskStrength;
			float _Decal3TPSMaskStrength;
			#ifdef POI_AUDIOLINK
			half _AudioLinkDecal0ScaleBand;
			float4 _AudioLinkDecal0Scale;
			half _AudioLinkDecal0RotationBand;
			float2 _AudioLinkDecal0Rotation;
			half _AudioLinkDecal0AlphaBand;
			float2 _AudioLinkDecal0Alpha;
			half _AudioLinkDecal0EmissionBand;
			float2 _AudioLinkDecal0Emission;
			float _DecalRotationCTALBand0;
			float _DecalRotationCTALSpeed0;
			float _DecalRotationCTALType0;
			float _AudioLinkDecalCC0;
			float _AudioLinkDecal0SideBand;
			float4 _AudioLinkDecal0SideMin;
			float4 _AudioLinkDecal0SideMax;
			half _AudioLinkDecal1ScaleBand;
			float4 _AudioLinkDecal1Scale;
			half _AudioLinkDecal1RotationBand;
			float2 _AudioLinkDecal1Rotation;
			half _AudioLinkDecal1AlphaBand;
			float2 _AudioLinkDecal1Alpha;
			half _AudioLinkDecal1EmissionBand;
			float2 _AudioLinkDecal1Emission;
			float _DecalRotationCTALBand1;
			float _DecalRotationCTALSpeed1;
			float _DecalRotationCTALType1;
			float _AudioLinkDecalCC1;
			float _AudioLinkDecal1SideBand;
			float4 _AudioLinkDecal1SideMin;
			float4 _AudioLinkDecal1SideMax;
			half _AudioLinkDecal2ScaleBand;
			float4 _AudioLinkDecal2Scale;
			half _AudioLinkDecal2RotationBand;
			float2 _AudioLinkDecal2Rotation;
			half _AudioLinkDecal2AlphaBand;
			float2 _AudioLinkDecal2Alpha;
			half _AudioLinkDecal2EmissionBand;
			float2 _AudioLinkDecal2Emission;
			float _DecalRotationCTALBand2;
			float _DecalRotationCTALSpeed2;
			float _DecalRotationCTALType2;
			float _AudioLinkDecalCC2;
			float _AudioLinkDecal2SideBand;
			float4 _AudioLinkDecal2SideMin;
			float4 _AudioLinkDecal2SideMax;
			half _AudioLinkDecal3ScaleBand;
			float4 _AudioLinkDecal3Scale;
			half _AudioLinkDecal3RotationBand;
			float2 _AudioLinkDecal3Rotation;
			half _AudioLinkDecal3AlphaBand;
			float2 _AudioLinkDecal3Alpha;
			half _AudioLinkDecal3EmissionBand;
			float2 _AudioLinkDecal3Emission;
			float _DecalRotationCTALBand3;
			float _DecalRotationCTALSpeed3;
			float _DecalRotationCTALType3;
			float _AudioLinkDecalCC3;
			float _AudioLinkDecal3SideBand;
			float4 _AudioLinkDecal3SideMin;
			float4 _AudioLinkDecal3SideMax;
			#endif
			//ifex float(1)==0
			#ifdef GEOM_TYPE_BRANCH
			float _Decal0MaskChannel;
			sampler2D _DecalTexture;
			float4 _DecalTexture_ST;
			float2 _DecalTexturePan;
			float _DecalTextureUV;
			float4 _DecalColor;
			float _DecalColorThemeIndex;
			fixed _DecalTiled;
			float _DecalBlendType;
			half _DecalRotation;
			half2 _DecalScale;
			float4 _DecalSideOffset;
			half2 _DecalPosition;
			half _DecalRotationSpeed;
			float _DecalEmissionStrength;
			float _DecalBlendAlpha;
			float _DecalOverrideAlpha;
			float _DecalHueShiftEnabled;
			float _DecalHueShift;
			float _DecalHueShiftSpeed;
			float _Decal0Depth;
			float _Decal0HueAngleStrength;
			#endif
			//ifex float(1)==0
			#ifdef GEOM_TYPE_BRANCH_DETAIL
			float _Decal1MaskChannel;
			sampler2D _DecalTexture1;
			float4 _DecalTexture1_ST;
			float2 _DecalTexture1Pan;
			float _DecalTexture1UV;
			float4 _DecalColor1;
			float _DecalColor1ThemeIndex;
			fixed _DecalTiled1;
			float _DecalBlendType1;
			half _DecalRotation1;
			half2 _DecalScale1;
			float4 _DecalSideOffset1;
			half2 _DecalPosition1;
			half _DecalRotationSpeed1;
			float _DecalEmissionStrength1;
			float _DecalBlendAlpha1;
			float _DecalOverrideAlpha1;
			float _DecalHueShiftEnabled1;
			float _DecalHueShift1;
			float _DecalHueShiftSpeed1;
			float _Decal1Depth;
			float _Decal1HueAngleStrength;
			#endif
			//ifex float(1)==0
			#ifdef GEOM_TYPE_FROND
			float _Decal2MaskChannel;
			sampler2D _DecalTexture2;
			float4 _DecalTexture2_ST;
			float2 _DecalTexture2Pan;
			float _DecalTexture2UV;
			float4 _DecalColor2;
			float _DecalColor2ThemeIndex;
			fixed _DecalTiled2;
			float _DecalBlendType2;
			half _DecalRotation2;
			half2 _DecalScale2;
			float4 _DecalSideOffset2;
			half2 _DecalPosition2;
			half _DecalRotationSpeed2;
			float _DecalEmissionStrength2;
			float _DecalBlendAlpha2;
			float _DecalOverrideAlpha2;
			float _DecalHueShiftEnabled2;
			float _DecalHueShift2;
			float _DecalHueShiftSpeed2;
			float _Decal2Depth;
			float _Decal2HueAngleStrength;
			#endif
			//ifex float(1)==0
			#ifdef DEPTH_OF_FIELD_COC_VIEW
			float _Decal3MaskChannel;
			sampler2D _DecalTexture3;
			float4 _DecalTexture3_ST;
			float2 _DecalTexture3Pan;
			float _DecalTexture3UV;
			float4 _DecalColor3;
			float _DecalColor3ThemeIndex;
			fixed _DecalTiled3;
			float _DecalBlendType3;
			half _DecalRotation3;
			half2 _DecalScale3;
			float4 _DecalSideOffset3;
			half2 _DecalPosition3;
			half _DecalRotationSpeed3;
			float _DecalEmissionStrength3;
			float _DecalBlendAlpha3;
			float _DecalOverrideAlpha3;
			float _DecalHueShiftEnabled3;
			float _DecalHueShift3;
			float _DecalHueShiftSpeed3;
			float _Decal3Depth;
			float _Decal3HueAngleStrength;
			#endif
			//ifex float(1)==0
			#ifdef _LIGHTINGMODE_TEXTURERAMP
			UNITY_DECLARE_TEX2D(_ToonRamp);
			#endif
			float _ShadowOffset;
			float _ShadowStrength;
			float _LightingIgnoreAmbientColor;
			float _LightingGradientStart;
			float _LightingGradientEnd;
			float3 _LightingShadowColor;
			float _LightingGradientStartWrap;
			float _LightingGradientEndWrap;
			#ifdef _LIGHTINGMODE_SHADEMAP
			float3 _1st_ShadeColor;
			#if defined(PROP_1ST_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _1st_ShadeMap;
			#endif
			float4 _1st_ShadeMap_ST;
			float2 _1st_ShadeMapPan;
			float _1st_ShadeMapUV;
			float _Use_1stShadeMapAlpha_As_ShadowMask;
			float _1stShadeMapMask_Inverse;
			float _Use_BaseAs1st;
			float3 _2nd_ShadeColor;
			#if defined(PROP_2ND_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _2nd_ShadeMap;
			#endif
			float4 _2nd_ShadeMap_ST;
			float2 _2nd_ShadeMapPan;
			float _2nd_ShadeMapUV;
			float _Use_2ndShadeMapAlpha_As_ShadowMask;
			float _2ndShadeMapMask_Inverse;
			float _Use_1stAs2nd;
			float _BaseColor_Step;
			float _BaseShade_Feather;
			float _ShadeColor_Step;
			float _1st2nd_Shades_Feather;
			float _ShadingShadeMapBlendType;
			#endif
			sampler2D _SkinLUT;
			float _SssScale;
			float _SssBumpBlur;
			float3 _SssTransmissionAbsorption;
			float3 _SssColorBleedAoWeights;
			#ifdef _LIGHTINGMODE_MULTILAYER_MATH
			float4 _ShadowColor;
			float _LightingMulitlayerNonLinear;
			#if defined(PROP_SHADOWCOLORTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ShadowColorTex;
			float4 _ShadowColorTex_ST;
			float2 _ShadowColorTexPan;
			float _ShadowColorTexUV;
			#endif
			#if defined(PROP_MULTILAYERMATHBLURMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MultilayerMathBlurMap;
			float4 _MultilayerMathBlurMap_ST;
			float2 _MultilayerMathBlurMapPan;
			float _MultilayerMathBlurMapUV;
			#endif
			float _ShadowBorder;
			float _ShadowBlur;
			float4 _Shadow2ndColor;
			#if defined(PROP_SHADOW2NDCOLORTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Shadow2ndColorTex;
			float4 _Shadow2ndColorTex_ST;
			float2 _Shadow2ndColorTexPan;
			float _Shadow2ndColorTexUV;
			#endif
			float _Shadow2ndBorder;
			float _Shadow2ndBlur;
			float4 _Shadow3rdColor;
			#if defined(PROP_SHADOW3RDCOLORTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Shadow3rdColorTex;
			float4 _Shadow3rdColorTex_ST;
			float2 _Shadow3rdColorTexPan;
			float _Shadow3rdColorTexUV;
			#endif
			float _Shadow3rdBorder;
			float _Shadow3rdBlur;
			float4 _ShadowBorderColor;
			float _ShadowBorderRange;
			#endif
			#ifdef _LIGHTINGMODE_CLOTH
			Texture2D_float _ClothDFG;
			SamplerState sampler_ClothDFG;
			#if defined(PROP_CLOTHMETALLICSMOOTHNESSMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ClothMetallicSmoothnessMap;
			#endif
			float4 _ClothMetallicSmoothnessMap_ST;
			float2 _ClothMetallicSmoothnessMapPan;
			float _ClothMetallicSmoothnessMapUV;
			float _ClothMetallicSmoothnessMapInvert;
			float _ClothMetallic;
			float _ClothReflectance;
			float _ClothSmoothness;
			#endif
			#ifdef _LIGHTINGMODE_SDF
			#if defined(PROP_SDFSHADINGTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _SDFShadingTexture;
			float _SDFShadingTextureUV;
			float2 _SDFShadingTexturePan;
			float4 _SDFShadingTexture_ST;
			float _SDFBlur;
			float4 _SDFForward;
			float4 _SDFLeft;
			#endif
			#endif
			float _LightingAdditiveType;
			float _LightingAdditiveGradientStart;
			float _LightingAdditiveGradientEnd;
			float _LightingAdditiveDetailStrength;
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			#ifdef POI_AL_DECAL
			float _ALDecalUV;
			float4 _ALUVScale;
			float2 _ALUVPosition;
			float _ALUVRotation;
			float _ALUVRotationSpeed;
			float4 _ALDecaldCircleDimensions;
			float _ALDecalUVMode;
			float _ALDecalVolumeStep;
			float _ALDecalVolumeClipMin;
			float _ALDecalVolumeClipMax;
			float _ALDecalBandStep;
			float _ALDecalBandClipMin;
			float _ALDecalBandClipMax;
			float _ALDecalShapeClip;
			float _ALDecalShapeClipVolumeWidth;
			float _ALDecalShapeClipBandWidth;
			#if defined(PROP_ALDECALCOLORMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ALDecalColorMask;
			float4 _ALDecalColorMask_ST;
			float2 _ALDecalColorMaskPan;
			float _ALDecalColorMaskUV;
			#endif
			float _ALDecalVolume;
			float _ALDecalBaseBoost;
			float _ALDecalTrebleBoost;
			float _ALDecalLineWidth;
			float _ALDecalVolumeColorSource;
			float3 _ALDecalVolumeColorLow;
			float3 _ALDecalVolumeColorMid;
			float3 _ALDecalVolumeColorHigh;
			float _ALDecalLowEmission;
			float _ALDecalMidEmission;
			float _ALDecalHighEmission;
			float _ALDecalBlendType;
			float _ALDecalBlendAlpha;
			float _ALDecalControlsAlpha;
			#endif
			#endif
			//ifex float(1)==0
			#ifdef _GLOSSYREFLECTIONS_OFF
			float _Is_NormalMapToRimLight;
			float4 _RimLightColor;
			float _RimLightColorThemeIndex;
			#ifdef _RIMSTYLE_POIYOMI
			float _RimLightingInvert;
			float _RimWidth;
			float _RimStrength;
			float _RimSharpness;
			float _RimBaseColorMix;
			float _ShadowMix;
			float _ShadowMixThreshold;
			float _ShadowMixWidthMod;
			float _EnableRimLighting;
			float _RimWidthNoiseStrength;
			float4 _RimShadowAlpha;
			float _RimShadowWidth;
			float _RimBlendStrength;
			float _RimBlendMode;
			float _RimShadowToggle;
			float _RimPower;
			float _RimShadowMaskStrength;
			float _RimShadowMaskRampType;
			float _RimBrightness;
			#if defined(PROP_RIMTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimTex;
			#endif
			float4 _RimTex_ST;
			float2 _RimTexPan;
			float _RimTexUV;
			#if defined(PROP_RIMMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimMask;
			#endif
			float4 _RimMask_ST;
			float2 _RimMaskPan;
			float _RimMaskUV;
			#if defined(PROP_RIMWIDTHNOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimWidthNoiseTexture;
			#endif
			float4 _RimWidthNoiseTexture_ST;
			float2 _RimWidthNoiseTexturePan;
			float _RimWidthNoiseTextureUV;
			#ifdef POI_AUDIOLINK
			half _AudioLinkRimWidthBand;
			float2 _AudioLinkRimWidthAdd;
			half _AudioLinkRimEmissionBand;
			float2 _AudioLinkRimEmissionAdd;
			half _AudioLinkRimBrightnessBand;
			float2 _AudioLinkRimBrightnessAdd;
			#endif
			#endif
			#ifdef _RIMSTYLE_UTS2
			float _RimLight;
			float _Is_LightColor_RimLight;
			float _RimLight_Power;
			float _RimLight_InsideMask;
			float _RimLight_FeatherOff;
			float _LightDirection_MaskOn;
			float _Tweak_LightDirection_MaskLevel;
			float _Add_Antipodean_RimLight;
			float4 _Ap_RimLightColor;
			float _RimApColorThemeIndex;
			float _Is_LightColor_Ap_RimLight;
			float _Ap_RimLight_Power;
			float _Ap_RimLight_FeatherOff;
			#if defined(PROP_SET_RIMLIGHTMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Set_RimLightMask;
			float4 _Set_RimLightMask_ST;
			float2 _Set_RimLightMaskPan;
			float _Set_RimLightMaskUV;
			#endif
			float _Tweak_RimLightMaskLevel;
			#endif
			float _RimHueShiftEnabled;
			float _RimHueShiftSpeed;
			float _RimHueShift;
			#endif
			//ifex float(1)==0
			#ifdef _SUNDISK_SIMPLE
			float _GlitterUV;
			half3 _GlitterColor;
			float _GlitterColorThemeIndex;
			float2 _GlitterPan;
			half _GlitterSpeed;
			half _GlitterBrightness;
			float _GlitterFrequency;
			float _GlitterJitter;
			half _GlitterSize;
			half _GlitterContrast;
			half _GlitterAngleRange;
			half _GlitterMinBrightness;
			half _GlitterBias;
			fixed _GlitterUseSurfaceColor;
			float _GlitterBlendType;
			float _GlitterMode;
			float _GlitterShape;
			float _GlitterCenterSize;
			float _glitterFrequencyLinearEmissive;
			float _GlitterJaggyFix;
			float _GlitterTextureRotation;
			float2 _GlitterUVPanning;
			float _GlitterHueShiftEnabled;
			float _GlitterHueShiftSpeed;
			float _GlitterHueShift;
			float _GlitterHideInShadow;
			float _GlitterRandomColors;
			float2 _GlitterMinMaxSaturation;
			float2 _GlitterMinMaxBrightness;
			float _GlitterRandomSize;
			float4 _GlitterMinMaxSize;
			float _GlitterRandomRotation;
			#if defined(PROP_GLITTERMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterMask;
			#endif
			float4 _GlitterMask_ST;
			float2 _GlitterMaskPan;
			float _GlitterMaskUV;
			#if defined(PROP_GLITTERCOLORMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterColorMap;
			#endif
			float4 _GlitterColorMap_ST;
			float2 _GlitterColorMapPan;
			float _GlitterColorMapUV;
			#if defined(PROP_GLITTERTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterTexture;
			#endif
			float4 _GlitterTexture_ST;
			float2 _GlitterTexturePan;
			float _GlitterTextureUV;
			#endif
			//ifex float(1)==0 && float(0)==0
			float4 _MochieReflCube_HDR;
			//ifex float(1)==0
			#ifdef MOCHIE_PBR
			#if defined(PROP_MOCHIEMETALLICMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MochieMetallicMaps;
			#endif
			float4 _MochieMetallicMaps_ST;
			float2 _MochieMetallicMapsPan;
			float _MochieMetallicMapsUV;
			float _MochieMetallicMapInvert;
			float _MochieRoughnessMapInvert;
			float _MochieReflectionMaskInvert;
			float _MochieSpecularMaskInvert;
			float _MochieReflectionTintThemeIndex;
			float _MochieSpecularTintThemeIndex;
			float _MochieRoughnessMultiplier;
			float _MochieMetallicMultiplier;
			float _MochieReflectionStrength;
			float _MochieSpecularStrength;
			float4 _MochieSpecularTint;
			float4 _MochieReflectionTint;
			float _MochieLitFallback;
			float _IgnoreCastedShadows;
			float _PBRSplitMaskSample;
			float4 _PBRMaskScaleTiling;
			float _MochieMetallicMasksUV;
			float4 _MochieMetallicMasksPan;
			float _Specular2ndLayer;
			float _MochieSpecularStrength2;
			float _MochieRoughnessMultiplier2;
			float _RefSpecFresnel;
			samplerCUBE _MochieReflCube;
			float _MochieForceFallback;
			float _MochieGSAAEnabled;
			float _PoiGSAAVariance;
			float _PoiGSAAThreshold;
			float _BRDFTPSReflectionMaskStrength;
			float _BRDFTPSSpecularMaskStrength;
			float _BRDFTPSDepthEnabled;
			#endif
			//ifex float(1)==0
			#ifdef POI_IRIDESCENCE
			#if defined(PROP_IRIDESCENCERAMP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceRamp;
			#endif
			float4 _IridescenceRamp_ST;
			float2 _IridescenceRampPan;
			#if defined(PROP_IRIDESCENCEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceMask;
			#endif
			float4 _IridescenceMask_ST;
			float2 _IridescenceMaskPan;
			float _IridescenceMaskUV;
			#if defined(PROP_IRIDESCENCENORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceNormalMap;
			#endif
			float4 _IridescenceNormalMap_ST;
			float2 _IridescenceNormalMapPan;
			float _IridescenceNormalMapUV;
			float _IridescenceIntensity;
			float _IridescenceHueShiftEnabled;
			float _IridescenceHueShiftSpeed;
			float _IridescenceHueShift;
			float _IridescenceNormalSelection;
			float _IridescenceNormalIntensity;
			float _IridescenceNormalToggle;
			float _IridescenceAddBlend;
			float _IridescenceReplaceBlend;
			float _IridescenceMultiplyBlend;
			float _IridescenceEmissionStrength;
			#ifdef POI_AUDIOLINK
			float _IridescenceAudioLinkEmissionAddBand;
			float2 _IridescenceAudioLinkEmissionAdd;
			#endif
			#endif
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct v2f
			{
				float4 pos : SV_POSITION;
				float2 uv[4] : TEXCOORD0;
				float3 objNormal : TEXCOORD4;
				float3 normal : TEXCOORD5;
				float3 tangent : TEXCOORD6;
				float3 binormal : TEXCOORD7;
				float4 worldPos : TEXCOORD8;
				float4 localPos : TEXCOORD9;
				float3 objectPos : TEXCOORD10;
				float4 vertexColor : TEXCOORD11;
				float4 lightmapUV : TEXCOORD12;
				float4 grabPos: TEXCOORD13;
				float4 worldDirection: TEXCOORD14;
				UNITY_SHADOW_COORDS(15)
				UNITY_FOG_COORDS(16)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			struct PoiMesh
			{
				float3 normals[2];
				float3 objNormal;
				float3 tangentSpaceNormal;
				float3 binormal;
				float3 tangent;
				float3 worldPos;
				float3 localPos;
				float3 objectPosition;
				float isFrontFace;
				float4 vertexColor;
				float4 lightmapUV;
				float2 uv[8];
				float2 parallaxUV;
			};
			struct PoiCam
			{
				float3 viewDir;
				float3 forwardDir;
				float3 worldPos;
				float distanceToVert;
				float4 clipPos;
				float3 reflectionDir;
				float3 vertexReflectionDir;
				float3 tangentViewDir;
				float4 grabPos;
				float2 screenUV;
				float vDotN;
				float4 worldDirection;
			};
			struct PoiMods
			{
				float4 Mask;
				float4 audioLink;
				float audioLinkAvailable;
				float audioLinkVersion;
				float4 audioLinkTexture;
				float audioLinkViaLuma;
				float2 detailMask;
				float2 backFaceDetailIntensity;
				float globalEmission;
				float4 globalColorTheme[12];
				float ALTime[8];
			};
			struct PoiLight
			{
				float3 direction;
				float attenuation;
				float attenuationStrength;
				float3 directColor;
				float3 indirectColor;
				float occlusion;
				float shadowMask;
				float detailShadow;
				float3 halfDir;
				float lightMap;
				float3 rampedLightMap;
				float vertexNDotL;
				float nDotL;
				float nDotV;
				float vertexNDotV;
				float nDotH;
				float vertexNDotH;
				float lDotv;
				float lDotH;
				float nDotLSaturated;
				float nDotLNormalized;
				#ifdef POI_PASS_ADD
				float additiveShadow;
				#endif
				float3 finalLighting;
				float3 finalLightAdd;
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float4 vDotNL;
				float4 vertexVDotNL;
				float3 vColor[4];
				float4 vCorrectedDotNL;
				float4 vAttenuation;
				float4 vAttenuationDotNL;
				float3 vPosition[4];
				float3 vDirection[4];
				float3 vFinalLighting;
				float3 vHalfDir[4];
				half4 vDotNH;
				half4 vertexVDotNH;
				half4 vDotLH;
				#endif
			};
			struct PoiVertexLights
			{
				float3 direction;
				float3 color;
				float attenuation;
			};
			struct PoiFragData
			{
				float3 baseColor;
				float3 finalColor;
				float alpha;
				float3 emission;
			};
			float2 poiUV(float2 uv, float4 tex_st)
			{
				return uv * tex_st.xy + tex_st.zw;
			}
			float calculateluminance(float3 color)
			{
				return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
			}
			bool IsInMirror()
			{
				return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
			}
			bool IsOrthographicCamera()
			{
				return unity_OrthoParams.w == 1 || UNITY_MATRIX_P[3][3] == 1;
			}
			float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
			{
				float R0 = max(0, L0);
				float3 R1 = 0.5f * L1;
				float lenR1 = length(R1);
				float q = dot(normalize(R1), n) * 0.5 + 0.5;
				q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
				float p = 1.0f + 2.0f * lenR1 / R0;
				float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
				return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
			}
			half3 BetterSH9(half4 normal)
			{
				float3 indirect;
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
				indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
				indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
				indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
				indirect = max(0, indirect);
				indirect += SHEvalLinearL2(normal);
				return indirect;
			}
			float3 getCameraForward()
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1));
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1));
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				return normalize(p2 - p1);
			}
			half3 GetSHLength()
			{
				half3 x, x1;
				x.r = length(unity_SHAr);
				x.g = length(unity_SHAg);
				x.b = length(unity_SHAb);
				x1.r = length(unity_SHBr);
				x1.g = length(unity_SHBg);
				x1.b = length(unity_SHBb);
				return x + x1;
			}
			float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			float poiMax(float2 i)
			{
				return max(i.x, i.y);
			}
			float poiMax(float3 i)
			{
				return max(max(i.x, i.y), i.z);
			}
			float poiMax(float4 i)
			{
				return max(max(max(i.x, i.y), i.z), i.w);
			}
			float3 calculateNormal(in float3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in float4 normal_ST, in float2 normalPan, in float normalUV, in float normalIntensity)
			{
				float3 normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(normalTexture, _MainTex, poiUV(poiMesh.uv[normalUV], normal_ST), normalPan), normalIntensity);
				return normalize(
				normal.x * poiMesh.tangent +
				normal.y * poiMesh.binormal +
				normal.z * baseNormal
				);
			}
			float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float2 remapClamped(float2 minOld, float2 maxOld, float2 x, float2 minNew, float2 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float3 remapClamped(float3 minOld, float3 maxOld, float3 x, float3 minNew, float3 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float4 remapClamped(float4 minOld, float4 maxOld, float4 x, float4 minNew, float4 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float2 calcParallax(in float height, in PoiCam poiCam)
			{
				return ((height * - 1) + 1) * (poiCam.tangentViewDir.xy / poiCam.tangentViewDir.z);
			}
			float4 poiBlend(const float sourceFactor, const  float4 sourceColor, const  float destinationFactor, const  float4 destinationColor, const float4 blendFactor)
			{
				float4 sA = 1 - blendFactor;
				const float4 blendData[11] = {
					float4(0.0, 0.0, 0.0, 0.0),
					float4(1.0, 1.0, 1.0, 1.0),
					destinationColor,
					sourceColor,
					float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sA,
					saturate(sourceColor.aaaa),
					1 - sA,
				};
				return lerp(blendData[sourceFactor] * sourceColor + blendData[destinationFactor] * destinationColor, sourceColor, sA);
			}
			float3 blendAverage(float3 base, float3 blend)
			{
				return (base + blend) / 2.0;
			}
			float blendColorBurn(float base, float blend)
			{
				return (blend == 0.0)?blend : max((1.0 - ((1.0 - base) / blend)), 0.0);
			}
			float3 blendColorBurn(float3 base, float3 blend)
			{
				return float3(blendColorBurn(base.r, blend.r), blendColorBurn(base.g, blend.g), blendColorBurn(base.b, blend.b));
			}
			float blendColorDodge(float base, float blend)
			{
				return (blend == 1.0)?blend : min(base / (1.0 - blend), 1.0);
			}
			float3 blendColorDodge(float3 base, float3 blend)
			{
				return float3(blendColorDodge(base.r, blend.r), blendColorDodge(base.g, blend.g), blendColorDodge(base.b, blend.b));
			}
			float blendDarken(float base, float blend)
			{
				return min(blend, base);
			}
			float3 blendDarken(float3 base, float3 blend)
			{
				return float3(blendDarken(base.r, blend.r), blendDarken(base.g, blend.g), blendDarken(base.b, blend.b));
			}
			float3 blendExclusion(float3 base, float3 blend)
			{
				return base + blend - 2.0 * base * blend;
			}
			float blendReflect(float base, float blend)
			{
				return (blend == 1.0)?blend : min(base * base / (1.0 - blend), 1.0);
			}
			float3 blendReflect(float3 base, float3 blend)
			{
				return float3(blendReflect(base.r, blend.r), blendReflect(base.g, blend.g), blendReflect(base.b, blend.b));
			}
			float3 blendGlow(float3 base, float3 blend)
			{
				return blendReflect(blend, base);
			}
			float blendOverlay(float base, float blend)
			{
				return base < 0.5?(2.0 * base * blend) : (1.0 - 2.0 * (1.0 - base) * (1.0 - blend));
			}
			float3 blendOverlay(float3 base, float3 blend)
			{
				return float3(blendOverlay(base.r, blend.r), blendOverlay(base.g, blend.g), blendOverlay(base.b, blend.b));
			}
			float3 blendHardLight(float3 base, float3 blend)
			{
				return blendOverlay(blend, base);
			}
			float blendVividLight(float base, float blend)
			{
				return (blend < 0.5)?blendColorBurn(base, (2.0 * blend)) : blendColorDodge(base, (2.0 * (blend - 0.5)));
			}
			float3 blendVividLight(float3 base, float3 blend)
			{
				return float3(blendVividLight(base.r, blend.r), blendVividLight(base.g, blend.g), blendVividLight(base.b, blend.b));
			}
			float blendHardMix(float base, float blend)
			{
				return (blendVividLight(base, blend) < 0.5)?0.0 : 1.0;
			}
			float3 blendHardMix(float3 base, float3 blend)
			{
				return float3(blendHardMix(base.r, blend.r), blendHardMix(base.g, blend.g), blendHardMix(base.b, blend.b));
			}
			float blendLighten(float base, float blend)
			{
				return max(blend, base);
			}
			float3 blendLighten(float3 base, float3 blend)
			{
				return float3(blendLighten(base.r, blend.r), blendLighten(base.g, blend.g), blendLighten(base.b, blend.b));
			}
			float blendLinearBurn(float base, float blend)
			{
				return max(base + blend - 1.0, 0.0);
			}
			float3 blendLinearBurn(float3 base, float3 blend)
			{
				return max(base + blend - float3(1.0, 1.0, 1.0), float3(0.0, 0.0, 0.0));
			}
			float blendLinearDodge(float base, float blend)
			{
				return min(base + blend, 1.0);
			}
			float3 blendLinearDodge(float3 base, float3 blend)
			{
				return min(base + blend, float3(1.0, 1.0, 1.0));
			}
			float blendLinearLight(float base, float blend)
			{
				return blend < 0.5?blendLinearBurn(base, (2.0 * blend)) : blendLinearDodge(base, (2.0 * (blend - 0.5)));
			}
			float3 blendLinearLight(float3 base, float3 blend)
			{
				return float3(blendLinearLight(base.r, blend.r), blendLinearLight(base.g, blend.g), blendLinearLight(base.b, blend.b));
			}
			float3 blendMultiply(float3 base, float3 blend)
			{
				return base * blend;
			}
			float3 blendNegation(float3 base, float3 blend)
			{
				return float3(1.0, 1.0, 1.0) - abs(float3(1.0, 1.0, 1.0) - base - blend);
			}
			float3 blendNormal(float3 base, float3 blend)
			{
				return blend;
			}
			float3 blendPhoenix(float3 base, float3 blend)
			{
				return min(base, blend) - max(base, blend) + float3(1.0, 1.0, 1.0);
			}
			float blendPinLight(float base, float blend)
			{
				return (blend < 0.5)?blendDarken(base, (2.0 * blend)) : blendLighten(base, (2.0 * (blend - 0.5)));
			}
			float3 blendPinLight(float3 base, float3 blend)
			{
				return float3(blendPinLight(base.r, blend.r), blendPinLight(base.g, blend.g), blendPinLight(base.b, blend.b));
			}
			float blendScreen(float base, float blend)
			{
				return 1.0 - ((1.0 - base) * (1.0 - blend));
			}
			float3 blendScreen(float3 base, float3 blend)
			{
				return float3(blendScreen(base.r, blend.r), blendScreen(base.g, blend.g), blendScreen(base.b, blend.b));
			}
			float blendSoftLight(float base, float blend)
			{
				return (blend < 0.5)?(2.0 * base * blend + base * base * (1.0 - 2.0 * blend)) : (sqrt(base) * (2.0 * blend - 1.0) + 2.0 * base * (1.0 - blend));
			}
			float3 blendSoftLight(float3 base, float3 blend)
			{
				return float3(blendSoftLight(base.r, blend.r), blendSoftLight(base.g, blend.g), blendSoftLight(base.b, blend.b));
			}
			float blendSubtract(float base, float blend)
			{
				return max(base - blend, 0.0);
			}
			float3 blendSubtract(float3 base, float3 blend)
			{
				return max(base - blend, 0.0);
			}
			float blendDifference(float base, float blend)
			{
				return abs(base - blend);
			}
			float3 blendDifference(float3 base, float3 blend)
			{
				return abs(base - blend);
			}
			float blendDivide(float base, float blend)
			{
				return base / max(blend, 0.0001);
			}
			float3 blendDivide(float3 base, float3 blend)
			{
				return base / max(blend, 0.0001);
			}
			float3 customBlend(float3 base, float3 blend, float blendType)
			{
				float3 ret = 0;
				switch(blendType)
				{
					case 0:
					{
						ret = blendNormal(base, blend);
						break;
					}
					case 1:
					{
						ret = blendDarken(base, blend);
						break;
					}
					case 2:
					{
						ret = blendMultiply(base, blend);
						break;
					}
					case 3:
					{
						ret = blendColorBurn(base, blend);
						break;
					}
					case 4:
					{
						ret = blendLinearBurn(base, blend);
						break;
					}
					case 5:
					{
						ret = blendLighten(base, blend);
						break;
					}
					case 6:
					{
						ret = blendScreen(base, blend);
						break;
					}
					case 7:
					{
						ret = blendColorDodge(base, blend);
						break;
					}
					case 8:
					{
						ret = blendLinearDodge(base, blend);
						break;
					}
					case 9:
					{
						ret = blendOverlay(base, blend);
						break;
					}
					case 10:
					{
						ret = blendSoftLight(base, blend);
						break;
					}
					case 11:
					{
						ret = blendHardLight(base, blend);
						break;
					}
					case 12:
					{
						ret = blendVividLight(base, blend);
						break;
					}
					case 13:
					{
						ret = blendLinearLight(base, blend);
						break;
					}
					case 14:
					{
						ret = blendPinLight(base, blend);
						break;
					}
					case 15:
					{
						ret = blendHardMix(base, blend);
						break;
					}
					case 16:
					{
						ret = blendDifference(base, blend);
						break;
					}
					case 17:
					{
						ret = blendExclusion(base, blend);
						break;
					}
					case 18:
					{
						ret = blendSubtract(base, blend);
						break;
					}
					case 19:
					{
						ret = blendDivide(base, blend);
						break;
					}
				}
				return ret;
			}
			float random(float2 p)
			{
				return frac(sin(dot(p, float2(12.9898, 78.2383))) * 43758.5453123);
			}
			float2 random2(float2 p)
			{
				return frac(sin(float2(dot(p, float2(127.1, 311.7)), dot(p, float2(269.5, 183.3)))) * 43758.5453);
			}
			float3 random3(float3 p)
			{
				return frac(sin(float3(dot(p, float3(127.1, 311.7, 248.6)), dot(p, float3(269.5, 183.3, 423.3)), dot(p, float3(248.3, 315.9, 184.2)))) * 43758.5453);
			}
			float3 randomFloat3(float2 Seed, float maximum)
			{
				return (.5 + float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed), float2(12.9898, 78.233))) * 43758.5453)
				) * .5) * (maximum);
			}
			float3 randomFloat3Range(float2 Seed, float Range)
			{
				return (float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1) * Range;
			}
			float3 randomFloat3WiggleRange(float2 Seed, float Range, float wiggleSpeed)
			{
				float3 rando = (float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1);
				float speed = 1 + wiggleSpeed;
				return float3(sin((_Time.x + rando.x * PI) * speed), sin((_Time.x + rando.y * PI) * speed), sin((_Time.x + rando.z * PI) * speed)) * Range;
			}
			void poiDither(float4 In, float4 ScreenPosition, out float4 Out)
			{
				float2 uv = ScreenPosition.xy * _ScreenParams.xy;
				float DITHER_THRESHOLDS[16] = {
					1.0 / 17.0, 9.0 / 17.0, 3.0 / 17.0, 11.0 / 17.0,
					13.0 / 17.0, 5.0 / 17.0, 15.0 / 17.0, 7.0 / 17.0,
					4.0 / 17.0, 12.0 / 17.0, 2.0 / 17.0, 10.0 / 17.0,
					16.0 / 17.0, 8.0 / 17.0, 14.0 / 17.0, 6.0 / 17.0
				};
				uint index = (uint(uv.x) % 4) * 4 + uint(uv.y) % 4;
				Out = In - DITHER_THRESHOLDS[index];
			}
			static const float Epsilon = 1e-10;
			static const float3 HCYwts = float3(0.299, 0.587, 0.114);
			static const float HCLgamma = 3;
			static const float HCLy0 = 100;
			static const float HCLmaxL = 0.530454533953517; // == exp(HCLgamma / HCLy0) - 0.5
			static const float3 wref = float3(1.0, 1.0, 1.0);
			#define TAU 6.28318531
			float3 HUEtoRGB(in float H)
			{
				float R = abs(H * 6 - 3) - 1;
				float G = 2 - abs(H * 6 - 2);
				float B = 2 - abs(H * 6 - 4);
				return saturate(float3(R, G, B));
			}
			float3 RGBtoHCV(in float3 RGB)
			{
				float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
				float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
				float C = Q.x - min(Q.w, Q.y);
				float H = abs((Q.w - Q.y) / (6 * C + Epsilon) + Q.z);
				return float3(H, C, Q.x);
			}
			float3 HSVtoRGB(in float3 HSV)
			{
				float3 RGB = HUEtoRGB(HSV.x);
				return ((RGB - 1) * HSV.y + 1) * HSV.z;
			}
			float3 RGBtoHSV(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float S = HCV.y / (HCV.z + Epsilon);
				return float3(HCV.x, S, HCV.z);
			}
			float3 HSLtoRGB(in float3 HSL)
			{
				float3 RGB = HUEtoRGB(HSL.x);
				float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
				return (RGB - 0.5) * C + HSL.z;
			}
			float3 RGBtoHSL(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float L = HCV.z - HCV.y * 0.5;
				float S = HCV.y / (1 - abs(L * 2 - 1) + Epsilon);
				return float3(HCV.x, S, L);
			}
			float3 hueShift(float3 color, float hueOffset)
			{
				color = RGBtoHSV(color);
				color.x = frac(hueOffset +color.x);
				return HSVtoRGB(color);
			}
			float xyzF(float t)
			{
				return lerp(pow(t, 1. / 3.), 7.787037 * t + 0.139731, step(t, 0.00885645));
			}
			float xyzR(float t)
			{
				return lerp(t * t * t, 0.1284185 * (t - 0.139731), step(t, 0.20689655));
			}
			float4x4 poiRotationMatrixFromAngles(float x, float y, float z)
			{
				float angleX = radians(x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				float angleY = radians(y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				float angleZ = radians(z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			float4x4 poiRotationMatrixFromAngles(float3 angles)
			{
				float angleX = radians(angles.x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				float angleY = radians(angles.y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				float angleZ = radians(angles.z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			float3 getCameraPosition()
			{
				#ifdef USING_STEREO_MATRICES
				return lerp(unity_StereoWorldSpaceCameraPos[0], unity_StereoWorldSpaceCameraPos[1], 0.5);
				#endif
				return _WorldSpaceCameraPos;
			}
			half2 calcScreenUVs(half4 grabPos)
			{
				half2 uv = grabPos.xy / (grabPos.w + 0.0000000001);
				#if UNITY_SINGLE_PASS_STEREO
				uv.xy *= half2(_ScreenParams.x * 2, _ScreenParams.y);
				#else
				uv.xy *= _ScreenParams.xy;
				#endif
				return uv;
			}
			float CalcMipLevel(float2 texture_coord)
			{
				float2 dx = ddx(texture_coord);
				float2 dy = ddy(texture_coord);
				float delta_max_sqr = max(dot(dx, dx), dot(dy, dy));
				return 0.5 * log2(delta_max_sqr);
			}
			float inverseLerp(float A, float B, float T)
			{
				return (T - A) / (B - A);
			}
			float inverseLerp2(float2 a, float2 b, float2 value)
			{
				float2 AB = b - a;
				float2 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			float inverseLerp3(float3 a, float3 b, float3 value)
			{
				float3 AB = b - a;
				float3 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			float inverseLerp4(float4 a, float4 b, float4 value)
			{
				float4 AB = b - a;
				float4 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			float4 quaternion_conjugate(float4 v)
			{
				return float4(
				v.x, -v.yzw
				);
			}
			float4 quaternion_mul(float4 v1, float4 v2)
			{
				float4 result1 = (v1.x * v2 + v1 * v2.x);
				float4 result2 = float4(
				- dot(v1.yzw, v2.yzw),
				cross(v1.yzw, v2.yzw)
				);
				return float4(result1 + result2);
			}
			float4 get_quaternion_from_angle(float3 axis, float angle)
			{
				float sn = sin(angle * 0.5);
				float cs = cos(angle * 0.5);
				return float4(axis * sn, cs);
			}
			float4 quaternion_from_vector(float3 inVec)
			{
				return float4(0.0, inVec);
			}
			float degree_to_radius(float degree)
			{
				return (
				degree / 180.0 * PI
				);
			}
			float3 rotate_with_quaternion(float3 inVec, float3 rotation)
			{
				float4 qx = get_quaternion_from_angle(float3(1, 0, 0), radians(rotation.x));
				float4 qy = get_quaternion_from_angle(float3(0, 1, 0), radians(rotation.y));
				float4 qz = get_quaternion_from_angle(float3(0, 0, 1), radians(rotation.z));
				#define MUL3(A, B, C) quaternion_mul(quaternion_mul((A), (B)), (C))
				float4 quaternion = normalize(MUL3(qx, qy, qz));
				float4 conjugate = quaternion_conjugate(quaternion);
				float4 inVecQ = quaternion_from_vector(inVec);
				float3 rotated = (
				MUL3(quaternion, inVecQ, conjugate)
				).yzw;
				return rotated;
			}
			float4 transform(float4 input, float4 pos, float4 rotation, float4 scale)
			{
				input.rgb *= (scale.xyz * scale.w);
				input = float4(rotate_with_quaternion(input.xyz, rotation.xyz * rotation.w) + (pos.xyz * pos.w), input.w);
				return input;
			}
			float3 poiThemeColor(in PoiMods poiMods, in float3 srcColor, in float themeIndex)
			{
				if (themeIndex == 0) return srcColor;
				themeIndex -= 1;
				if (themeIndex <= 3)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				#endif
				return srcColor;
			}
			float lilIsIn0to1(float f)
			{
				float value = 0.5 - abs(f - 0.5);
				return saturate(value / clamp(fwidth(value), 0.0001, 1.0));
			}
			float lilIsIn0to1(float f, float nv)
			{
				float value = 0.5 - abs(f - 0.5);
				return saturate(value / clamp(fwidth(value), 0.0001, nv));
			}
			float poiEdgeLinearNoSaturate(float value, float border)
			{
				return (value - border) / clamp(fwidth(value), 0.0001, 1.0);
			}
			float poiEdgeLinearNoSaturate(float value, float border, float blur)
			{
				float borderMin = saturate(border - blur * 0.5);
				float borderMax = saturate(border + blur * 0.5);
				return (value - borderMin) / saturate(borderMax - borderMin + fwidth(value));
			}
			float poiEdgeLinearNoSaturate(float value, float border, float blur, float borderRange)
			{
				float borderMin = saturate(border - blur * 0.5 - borderRange);
				float borderMax = saturate(border + blur * 0.5);
				return (value - borderMin) / saturate(borderMax - borderMin + fwidth(value));
			}
			float poiEdgeNonLinearNoSaturate(float value, float border)
			{
				float fwidthValue = fwidth(value);
				return smoothstep(border - fwidthValue, border + fwidthValue, value);
			}
			float poiEdgeNonLinearNoSaturate(float value, float border, float blur)
			{
				float fwidthValue = fwidth(value);
				float borderMin = saturate(border - blur * 0.5);
				float borderMax = saturate(border + blur * 0.5);
				return smoothstep(borderMin - fwidthValue, borderMax + fwidthValue, value);
			}
			float poiEdgeNonLinearNoSaturate(float value, float border, float blur, float borderRange)
			{
				float fwidthValue = fwidth(value);
				float borderMin = saturate(border - blur * 0.5 - borderRange);
				float borderMax = saturate(border + blur * 0.5);
				return smoothstep(borderMin - fwidthValue, borderMax + fwidthValue, value);
			}
			float poiEdgeNonLinear(float value, float border)
			{
				return saturate(poiEdgeNonLinearNoSaturate(value, border));
			}
			float poiEdgeNonLinear(float value, float border, float blur)
			{
				return saturate(poiEdgeNonLinearNoSaturate(value, border, blur));
			}
			float poiEdgeNonLinear(float value, float border, float blur, float borderRange)
			{
				return saturate(poiEdgeNonLinearNoSaturate(value, border, blur, borderRange));
			}
			float poiEdgeLinear(float value, float border)
			{
				return saturate(poiEdgeLinearNoSaturate(value, border));
			}
			float poiEdgeLinear(float value, float border, float blur)
			{
				return saturate(poiEdgeLinearNoSaturate(value, border, blur));
			}
			float poiEdgeLinear(float value, float border, float blur, float borderRange)
			{
				return saturate(poiEdgeLinearNoSaturate(value, border, blur, borderRange));
			}
			float3 OpenLitLinearToSRGB(float3 col)
			{
				return LinearToGammaSpace(col);
			}
			float3 OpenLitSRGBToLinear(float3 col)
			{
				return GammaToLinearSpace(col);
			}
			float OpenLitLuminance(float3 rgb)
			{
				#if defined(UNITY_COLORSPACE_GAMMA)
				return dot(rgb, float3(0.22, 0.707, 0.071));
				#else
				return dot(rgb, float3(0.0396819152, 0.458021790, 0.00609653955));
				#endif
			}
			float OpenLitGray(float3 rgb)
			{
				return dot(rgb, float3(1.0/3.0, 1.0/3.0, 1.0/3.0));
			}
			void OpenLitShadeSH9ToonDouble(float3 lightDirection, out float3 shMax, out float3 shMin)
			{
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
				float3 N = lightDirection * 0.666666;
				float4 vB = N.xyzz * N.yzzx;
				float3 res = float3(unity_SHAr.w,unity_SHAg.w,unity_SHAb.w);
				res.r += dot(unity_SHBr, vB);
				res.g += dot(unity_SHBg, vB);
				res.b += dot(unity_SHBb, vB);
				res += unity_SHC.rgb * (N.x * N.x - N.y * N.y);
				float3 l1;
				l1.r = dot(unity_SHAr.rgb, N);
				l1.g = dot(unity_SHAg.rgb, N);
				l1.b = dot(unity_SHAb.rgb, N);
				shMax = res + l1;
				shMin = res - l1;
				#if defined(UNITY_COLORSPACE_GAMMA)
				shMax = OpenLitLinearToSRGB(shMax);
				shMin = OpenLitLinearToSRGB(shMin);
				#endif
				#else
				shMax = 0.0;
				shMin = 0.0;
				#endif
			}
			float3 OpenLitComputeCustomLightDirection(float4 lightDirectionOverride)
			{
				float3 customDir = length(lightDirectionOverride.xyz) * normalize(mul((float3x3)unity_ObjectToWorld, lightDirectionOverride.xyz));
				return lightDirectionOverride.w ? customDir : lightDirectionOverride.xyz; // .w isn't doc'd anywhere and is always 0 unless end user changes it
			}
			float3 OpenLitLightingDirection(float4 lightDirectionOverride)
			{
				float3 mainDir = _WorldSpaceLightPos0.xyz * OpenLitLuminance(_LightColor0.rgb);
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
				float3 sh9Dir = unity_SHAr.xyz * 0.333333 + unity_SHAg.xyz * 0.333333 + unity_SHAb.xyz * 0.333333;
				float3 sh9DirAbs = float3(sh9Dir.x, abs(sh9Dir.y), sh9Dir.z);
				#else
				float3 sh9Dir = 0;
				float3 sh9DirAbs = 0;
				#endif
				float3 customDir = OpenLitComputeCustomLightDirection(lightDirectionOverride);
				return normalize(sh9DirAbs + mainDir + customDir);
			}
			float3 OpenLitLightingDirection()
			{
				float4 customDir = float4(0.001,0.002,0.001,0.0);
				return OpenLitLightingDirection(customDir);
			}
			inline float4 CalculateFrustumCorrection()
			{
				float x1 = -UNITY_MATRIX_P._31 / (UNITY_MATRIX_P._11 * UNITY_MATRIX_P._34);
				float x2 = -UNITY_MATRIX_P._32 / (UNITY_MATRIX_P._22 * UNITY_MATRIX_P._34);
				return float4(x1, x2, 0, UNITY_MATRIX_P._33 / UNITY_MATRIX_P._34 + x1 * UNITY_MATRIX_P._13 + x2 * UNITY_MATRIX_P._23);
			}
			inline float CorrectedLinearEyeDepth(float z, float B)
			{
				return 1.0 / (z / UNITY_MATRIX_P._34 + B);
			}
			float2 sharpSample( float4 texelSize , float2 p )
			{
				p = p*texelSize.zw;
				float2 c = max(0.0, fwidth(p));
				p = floor(p) + saturate(frac(p) / c);
				p = (p - 0.5)*texelSize.xy;
				return p;
			}
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			float4 AudioLinkDataMultiline(uint2 xycoord) { return AudioLinkData(uint2(xycoord.x % AUDIOLINK_WIDTH, xycoord.y + xycoord.x/AUDIOLINK_WIDTH)); }
			float4 AudioLinkLerp(float2 xy) { return lerp( AudioLinkData(xy), AudioLinkData(xy+int2(1,0)), frac( xy.x ) ); }
			float4 AudioLinkLerpMultiline(float2 xy) { return lerp(AudioLinkDataMultiline(xy), AudioLinkDataMultiline(xy+float2(1,0)), frac(xy.x)); }
			bool AudioLinkIsAvailable()
			{
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				int width, height;
				_AudioTexture.GetDimensions(width, height);
				return width > 16;
				#else
				return _AudioTexture_TexelSize.z > 16;
				#endif
			}
			float AudioLinkGetVersion()
			{
				int2 dims;
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				_AudioTexture.GetDimensions(dims.x, dims.y);
				#else
				dims = _AudioTexture_TexelSize.zw;
				#endif
				if (dims.x >= 128)
				return AudioLinkData(ALPASS_GENERALVU).x;
				else if (dims.x > 16)
				return 1;
				else
				return 0;
			}
			#define AudioLinkGetSelfPixelData(xy) _SelfTexture2D[xy]
			uint AudioLinkDecodeDataAsUInt(uint2 indexloc)
			{
				uint4 rpx = AudioLinkData(indexloc);
				return rpx.r + rpx.g*1024 + rpx.b * 1048576 + rpx.a * 1073741824;
			}
			float AudioLinkDecodeDataAsSeconds(uint2 indexloc)
			{
				uint time = AudioLinkDecodeDataAsUInt(indexloc) & 0x7ffffff;
				return float(time / 1000) + float( time % 1000 ) / 1000.;
			}
			#define ALDecodeDataAsSeconds( x ) AudioLinkDecodeDataAsSeconds( x )
			#define ALDecodeDataAsUInt( x ) AudioLinkDecodeDataAsUInt( x )
			float AudioLinkRemap(float t, float a, float b, float u, float v) { return ((t-a) / (b-a)) * (v-u) + u; }
			float3 AudioLinkHSVtoRGB(float3 HSV)
			{
				float3 RGB = 0;
				float C = HSV.z * HSV.y;
				float H = HSV.x * 6;
				float X = C * (1 - abs(fmod(H, 2) - 1));
				if (HSV.y != 0)
				{
					float I = floor(H);
					if (I == 0) { RGB = float3(C, X, 0); }
					else if (I == 1) { RGB = float3(X, C, 0); }
					else if (I == 2) { RGB = float3(0, C, X); }
					else if (I == 3) { RGB = float3(0, X, C); }
					else if (I == 4) { RGB = float3(X, 0, C); }
					else { RGB = float3(C, 0, X); }
				}
				float M = HSV.z - C;
				return RGB + M;
			}
			float3 AudioLinkCCtoRGB(float bin, float intensity, int rootNote)
			{
				float note = bin / AUDIOLINK_EXPBINS;
				float hue = 0.0;
				note *= 12.0;
				note = glsl_mod(4. - note + rootNote, 12.0);
				{
					if(note < 4.0)
					{
						hue = (note) / 24.0;
					}
					else if(note < 8.0)
					{
						hue = (note-2.0) / 12.0;
					}
					else
					{
						hue = (note - 4.0) / 8.0;
					}
				}
				float val = intensity - 0.1;
				return AudioLinkHSVtoRGB(float3(fmod(hue, 1.0), 1.0, clamp(val, 0.0, 1.0)));
			}
			float4 AudioLinkGetAmplitudeAtFrequency(float hertz)
			{
				float note = AUDIOLINK_EXPBINS * log2(hertz / AUDIOLINK_BOTTOM_FREQUENCY);
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(note, 0));
			}
			float AudioLinkGetAmplitudeAtNote(float octave, float note)
			{
				float quarter = note * 2.0;
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(octave * AUDIOLINK_EXPBINS + quarter, 0));
			}
			float AudioLinkGetChronoTime(uint index, uint band)
			{
				return (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(index, band))) / 100000.0;
			}
			float AudioLinkGetChronoTimeNormalized(uint index, uint band, float speed)
			{
				return frac(AudioLinkGetChronoTime(index, band) * speed);
			}
			float AudioLinkGetChronoTimeInterval(uint index, uint band, float speed, float interval)
			{
				return AudioLinkGetChronoTimeNormalized(index, band, speed) * interval;
			}
			float getBandAtTime(float band, float time, float size = 1.0f)
			{
				return remapClamped(min(size,.9999), 1, AudioLinkData(ALPASS_AUDIOBASS + uint2(time * AUDIOLINK_WIDTH,band)).r);
			}
			fixed3 maximize(fixed3 c) {
				if (c.x == 0 && c.y == 0 && c.z == 0)
				return fixed3(1.0, 1.0, 1.0);
				else
				return c / max(c.r, max(c.g, c.b));
			}
			bool LumaIsAvailable()
			{
				return LumaData(0.629, 0.511).r > 0.9;
			}
			float3 getLumaGradient(uint index, float offset) {
				return LumaData(0.57 + (index * 0.11) + lerp(0, 0.107, offset), 0.493);
			}
			void initPoiAudioLink(inout PoiMods poiMods)
			{
				if (!_AudioLinkAnimToggle) return;
				if (AudioLinkIsAvailable())
				{
					poiMods.audioLinkAvailable = true;
					poiMods.audioLinkVersion = AudioLinkGetVersion();
					poiMods.audioLink.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					poiMods.audioLink.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					poiMods.audioLink.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					poiMods.audioLink.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
					poiMods.globalColorTheme[4] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(2, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[5] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(3, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[6] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(4, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[7] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(5, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[8] = AudioLinkData(ALPASS_THEME_COLOR0);
					poiMods.globalColorTheme[9] = AudioLinkData(ALPASS_THEME_COLOR1);
					poiMods.globalColorTheme[10] = AudioLinkData(ALPASS_THEME_COLOR2);
					poiMods.globalColorTheme[11] = AudioLinkData(ALPASS_THEME_COLOR3);
					return;
				}
				if (LumaIsAvailable())
				{
					float4 audioPixel = LumaData(0.578, 0.515);
					float audioLows = audioPixel.r;
					float audioHighs = audioPixel.g;
					float4 zone1 = LumaData(0.856, 0.522);
					float4 zone2 = LumaData(0.856, 0.507);
					float4 zone3 = LumaData(0.864, 0.522);
					float4 zone4 = LumaData(0.864, 0.507);
					poiMods.audioLinkAvailable = true;
					poiMods.audioLinkViaLuma = true;
					poiMods.audioLink.xy = audioLows;
					poiMods.audioLink.zw = audioHighs;
					poiMods.globalColorTheme[8] = zone1;
					poiMods.globalColorTheme[9] = zone2;
					poiMods.globalColorTheme[10] = zone3;
					poiMods.globalColorTheme[11] = zone4;
				}
			}
			void DebugVisualizer(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods){
				if (_DebugWaveform){
					float waveform = AudioLinkLerpMultiline(ALPASS_WAVEFORM + float2( 500. * poiMesh.uv[0].x, 0)).r;
					poiFragData.emission += clamp(1 - 50 * abs(waveform - poiMesh.uv[0].y * 2. + 1), 0, 1);
				}
				if (_DebugDFT){
					poiFragData.emission += AudioLinkLerpMultiline(ALPASS_DFT + uint2(poiMesh.uv[0].x * AUDIOLINK_ETOTALBINS, 0)).rrr;
				}
				if (_DebugBass){
					poiFragData.emission += poiMods.audioLink.x;
				}
				if (_DebugLowMids){
					poiFragData.emission += poiMods.audioLink.y;
				}
				if (_DebugHighMids){
					poiFragData.emission += poiMods.audioLink.z;
				}
				if (_DebugTreble){
					poiFragData.emission += poiMods.audioLink.w;
				}
				if (_DebugCCColors){
					poiFragData.emission += AudioLinkData(ALPASS_CCCOLORS + uint2(3 + 1, 0));
				}
				if (_DebugCCStrip){
					poiFragData.emission += AudioLinkLerp(ALPASS_CCSTRIP + float2(poiMesh.uv[0].x * AUDIOLINK_WIDTH, 0));
				}
				if (_DebugCCLights){
					poiFragData.emission += AudioLinkData(ALPASS_CCLIGHTS + uint2(uint(poiMesh.uv[0].x * 8) + uint(poiMesh.uv[0].y * 16) * 8, 0));
				}
				if (_DebugAutocorrelator){
					poiFragData.emission += saturate(AudioLinkLerp(ALPASS_AUTOCORRELATOR + float2((abs(1. - poiMesh.uv[0].x * 2.)) * AUDIOLINK_WIDTH, 0)).rrr);
				}
				if (_DebugChronotensity){
					poiFragData.emission += (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY  + uint2(1, 0)) % 1000000) / 1000000.0;
				}
			}
			void SetupAudioLink(inout PoiFragData poiFragData, inout PoiMods poiMods, in PoiMesh poiMesh){
				initPoiAudioLink(poiMods);
				DebugVisualizer(poiFragData, poiMesh, poiMods);
				if(_AudioLinkCCStripY)
				{
					poiFragData.emission += AudioLinkLerp( ALPASS_CCSTRIP + float2( poiMesh.uv[0].y * AUDIOLINK_WIDTH, 0 ) ).rgb * .5;
				}
			}
			#endif
			v2f vert(appdata v)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				PoiInitStruct(v2f, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				o.objectPos = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				o.objNormal = v.normal;
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.tangent = UnityObjectToWorldDir(v.tangent);
				o.binormal = cross(o.normal, o.tangent) * (v.tangent.w * unity_WorldTransformParams.w);
				o.vertexColor = v.color;
				o.uv[0] = v.uv0;
				o.uv[1] = v.uv1;
				o.uv[2] = v.uv2;
				o.uv[3] = v.uv3;
				#if defined(LIGHTMAP_ON)
				o.lightmapUV.xy = v.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				o.localPos.rgb += localOffset;
				o.worldPos.rgb += worldOffset;
				o.pos = UnityObjectToClipPos(o.localPos);
				#ifdef POI_PASS_OUTLINE
				#if defined(UNITY_REVERSED_Z)
				o.pos.z += _Offset_Z * - 0.01;
				#else
				o.pos.z += _Offset_Z * 0.01;
				#endif
				#endif
				o.grabPos = ComputeGrabScreenPos(o.pos);
				#ifndef FORWARD_META_PASS
				#if !defined(UNITY_PASS_SHADOWCASTER)
				UNITY_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				#endif
				UNITY_TRANSFER_FOG(o, o.pos);
				if (float(0))
				{
					if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
					{
						o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					}
				}
				#ifdef POI_PASS_META
				o.pos = UnityMetaVertexPosition(v.vertex, v.uv1.xy, v.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);
				#endif
				#if defined(GRAIN)
				float4 worldDirection;
				worldDirection.xyz = o.worldPos.xyz - _WorldSpaceCameraPos;
				worldDirection.w = dot(o.pos, CalculateFrustumCorrection());
				o.worldDirection = worldDirection;
				#endif
				return o;
			}
			void calculateGlobalThemes(inout PoiMods poiMods)
			{
				poiMods.globalColorTheme[0] = float4(1,1,1,1);
				poiMods.globalColorTheme[1] = float4(1,1,1,1);
				poiMods.globalColorTheme[2] = float4(1,1,1,1);
				poiMods.globalColorTheme[3] = float4(1,1,1,1);
			}
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[float(0)] - float4(0.5,0.5,0,0);
				float radius = length(delta) * 2 * float(1);
				float angle = atan2(delta.x, delta.y) * 1.0 / 6.28 * float(1);
				return float2(radius, angle + distance(poiMesh.uv[float(0)], float4(0.5,0.5,0,0)) * float(0));
			}
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(1.0, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).zw;
			}
			float2 StereoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).zw;
			}
			float2 calculatePanosphereUV(in PoiMesh poiMesh)
			{
				float3 viewDirection = normalize(lerp(getCameraPosition().xyz, _WorldSpaceCameraPos.xyz, float(1)) - poiMesh.worldPos.xyz) * - 1;
				return lerp(MonoPanoProjection(viewDirection), StereoPanoProjection(viewDirection), float(0));
			}
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + float(0));
			}
			//ifex float(1)==0
			#ifdef FINALPASS
			void ApplyDetailColor(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				#if defined(PROP_DETAILTEX) || !defined(OPTIMIZER_ENABLED)
				half3 detailTexture = POI2D_SAMPLER_PAN(_DetailTex, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0)).rgb * poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				#else
				half3 detailTexture = 0.21763764082 * poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				#endif
				poiFragData.baseColor.rgb *= LerpWhiteTo(detailTexture * float(0.912) * unity_ColorSpaceDouble.rgb, poiMods.detailMask.r * float(1.12));
			}
			void ApplyDetailNormal(inout PoiMods poiMods, inout PoiMesh poiMesh)
			{
				#if defined(PROP_DETAILMASK) || !defined(OPTIMIZER_ENABLED)
				poiMods.detailMask = POI2D_SAMPLER_PAN(_DetailMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0)).rg;
				#else
				poiMods.detailMask = 1;
				#endif
				#ifdef POI_BACKFACE
				if (!poiMesh.isFrontFace)
				{
					poiMods.detailMask.g *= float(1);
				}
				#endif
				#if defined(PROP_DETAILNORMALMAP) || !defined(OPTIMIZER_ENABLED)
				half3 detailNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_DetailNormalMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(1) * poiMods.detailMask.g);
				poiMesh.tangentSpaceNormal = BlendNormals(detailNormal, poiMesh.tangentSpaceNormal);
				#endif
			}
			#endif
			//ifex float(1)==0
			#ifdef VIGNETTE
			#if defined(GEOM_TYPE_MESH) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
			void calculateRGBNormals(inout PoiMesh poiMesh)
			{
				float4 rgbMask;
				if (float(0))
				{
					rgbMask = poiMesh.vertexColor;
				}
				else
				{
					#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
					rgbMask = POI2D_SAMPLER_PAN(_RGBMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					rgbMask = 1;
					#endif
				}
				if (float(0))
				{
					if (float(0) == 0)
					{
						if (float(0) > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalR, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.r);
						}
						if (float(0) > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalG, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.g);
						}
						if (float(0) > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalB, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.b);
						}
						if (float(0) > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalA, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.a);
						}
					}
					else
					{
						half3 newNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalR, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0) * rgbMask.r);
						half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalG, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0) * rgbMask.g);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalB, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0) * rgbMask.b);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalA, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(0) * rgbMask.a);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						poiMesh.tangentSpaceNormal = BlendNormals(newNormal, poiMesh.tangentSpaceNormal);
					}
				}
			}
			#endif
			void calculateRGBMask(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float4 rgbMask = float4(1, 1, 1, 1);
				if (float(0))
				{
					rgbMask = poiMesh.vertexColor;
				}
				else
				{
					#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
					rgbMask = POI2D_SAMPLER_PAN(_RGBMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					rgbMask = 1;
					#endif
				}
				#if defined(PROP_REDTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 red = POI2D_SAMPLER_PAN(_RedTexture, _MainTex, poiUV(poiMesh.uv[float(1)], _RedTexture_ST), float4(0,0,0,0));
				#else
				float4 red = 1;
				#endif
				#if defined(PROP_GREENTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 green = POI2D_SAMPLER_PAN(_GreenTexture, _MainTex, poiUV(poiMesh.uv[float(1)], _GreenTexture_ST), float4(0,0,0,0));
				#else
				float4 green = 1;
				#endif
				#if defined(PROP_BLUETEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 blue = POI2D_SAMPLER_PAN(_BlueTexture, _MainTex, poiUV(poiMesh.uv[float(1)], float4(0.01,1,0.5,0)), float4(0,0,0,0));
				#else
				float4 blue = 1;
				#endif
				#if defined(PROP_ALPHATEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 alpha = POI2D_SAMPLER_PAN(_AlphaTexture, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 alpha = 1;
				#endif
				float4 maskFinal = 1;
				maskFinal.r = saturate(rgbMask.r + float(0)) * saturate(red.a * float4(1,1,1,1).a);
				maskFinal.g = saturate(rgbMask.g + _GreenAlphaAdd) * saturate(green.a * _GreenColor.a);
				maskFinal.b = saturate(rgbMask.b + float(0)) * saturate(blue.a * float4(1,0,0,0).a);
				maskFinal.a = saturate(rgbMask.a + float(0)) * saturate(alpha.a * float4(1,1,1,0).a);
				if (float(0))
				{
					float3 RGBColor = 1;
					RGBColor = lerp(RGBColor, red.rgb * poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), maskFinal.r);
					RGBColor = lerp(RGBColor, green.rgb * poiThemeColor(poiMods, _GreenColor.rgb, float(0)), maskFinal.g);
					RGBColor = lerp(RGBColor, blue.rgb * poiThemeColor(poiMods, float4(1,0,0,0).rgb, float(0)), maskFinal.b);
					RGBColor = lerp(RGBColor, alpha.rgb * poiThemeColor(poiMods, float4(1,1,1,0).rgb, float(0)), maskFinal.a);
					poiFragData.baseColor *= RGBColor;
				}
				else
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, red.rgb * poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), maskFinal.r);
					poiFragData.baseColor = lerp(poiFragData.baseColor, green.rgb * poiThemeColor(poiMods, _GreenColor.rgb, float(0)), maskFinal.g);
					poiFragData.baseColor = lerp(poiFragData.baseColor, blue.rgb * poiThemeColor(poiMods, float4(1,0,0,0).rgb, float(0)), maskFinal.b);
					poiFragData.baseColor = lerp(poiFragData.baseColor, alpha.rgb * poiThemeColor(poiMods, float4(1,1,1,0).rgb, float(0)), maskFinal.a);
				}
			}
			#endif
			#if defined(GEOM_TYPE_BRANCH) || defined(GEOM_TYPE_BRANCH_DETAIL) || defined(GEOM_TYPE_FROND) || defined(DEPTH_OF_FIELD_COC_VIEW)
			float2 decalUV(float uvNumber, float4 uv_st, float2 position, half rotation, half rotationSpeed, half2 scale, float4 scaleOffset, float depth, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				scaleOffset = float4(-scaleOffset.x, scaleOffset.y, -scaleOffset.z, scaleOffset.w);
				float2 uv = poiUV(poiMesh.uv[uvNumber], uv_st) + calcParallax(depth + 1, poiCam);
				float2 decalCenter = position;
				float theta = radians(rotation + _Time.z * rotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - scale / 2 + position + scaleOffset.xz, scale / 2 + position + scaleOffset.yw, float2(0, 0), float2(1, 1));
				return uv;
			}
			inline float3 decalHueShift(float enabled, float3 color, float shift, float shiftSpeed)
			{
				if (enabled)
				{
					color = hueShift(color, shift + _Time.x * shiftSpeed);
				}
				return color;
			}
			inline float applyTilingClipping(float enabled, float2 uv)
			{
				float ret = 1;
				if (!enabled)
				{
					if (uv.x > 1 || uv.y > 1 || uv.x < 0 || uv.y < 0)
					{
						ret = 0;
					}
				}
				return ret;
			}
			void applyDecals(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods, in PoiLight poiLight)
			{
				float decalAlpha = 1;
				float alphaOverride = 0;
				#if defined(PROP_DECALMASK) || !defined(OPTIMIZER_ENABLED)
				float4 decalMask = POI2D_SAMPLER_PAN(_DecalMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 decalMask = 1;
				#endif
				#ifdef TPS_Penetrator
				if (float(0))
				{
					decalMask.r = lerp(0, decalMask.r * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
					decalMask.g = lerp(0, decalMask.g * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
					decalMask.b = lerp(0, decalMask.b * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
					decalMask.a = lerp(0, decalMask.a * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
				}
				#endif
				float4 decalColor = 1;
				float2 uv = 0;
				float2 decalScale = float2(1, 1);
				float decalRotation = 0;
				float2 ddxuv = 0;
				float2 ddyuv = 0;
				float4 sideMod = 0;
				//ifex float(1)==0
				#ifdef GEOM_TYPE_BRANCH
				decalScale = float4(1,1,0,0);
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(float4(0,0,0,0).xy, float4(0,0,0,0).zw, poiMods.audioLink[float(0)]);
					sideMod += lerp(float4(0,0,0,0), float4(0,0,0,0), poiMods.audioLink[float(0)]);
					decalRotation += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					decalRotation += AudioLinkGetChronoTime(float(0), float(0)) * float(0) * 360;
				}
				#endif
				#if defined(PROP_DECALTEXTURE) || !defined(OPTIMIZER_ENABLED)
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) +sideMod, float(0), poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if (any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture, uv + float4(0,0,0,0) * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor.rgb, float(0)), _DecalColor.a);
				#else
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) +sideMod, float(0), poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor.rgb, float(0)), _DecalColor.a);
				#endif
				decalColor.rgb = decalHueShift(float(1), decalColor.rgb, _DecalHueShift + poiLight.nDotV * _Decal0HueAngleStrength, float(0));
				decalColor.a *= applyTilingClipping(float(0), uv) * decalMask[float(3)];
				float audioLinkDecalAlpha0 = 0;
				#ifdef POI_AUDIOLINK
				if (float(0) && poiMods.audioLinkAvailable)
				{
					decalColor.rgb *= AudioLinkLerp(ALPASS_CCSTRIP + float2(uv.x * AUDIOLINK_WIDTH, 0)).rgb;
				}
				audioLinkDecalAlpha0 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, float(0)), decalColor.a * saturate(float(1) + audioLinkDecalAlpha0));
				if (float(0))
				{
					alphaOverride += 1;
					decalAlpha = lerp(decalAlpha, min(decalAlpha, decalColor.a), decalMask[float(3)]);
				}
				float audioLinkDecalEmission0 = 0;
				#ifdef POI_AUDIOLINK
				audioLinkDecalEmission0 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength + audioLinkDecalEmission0, 0);
				#endif
				//ifex float(1)==0
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				decalScale = float4(1,1,0,0);
				decalRotation = 0;
				sideMod = 0;
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(float4(0,0,0,0).xy, float4(0,0,0,0).zw, poiMods.audioLink[float(0)]);
					sideMod += lerp(float4(0,0,0,0), float4(0,0,0,0), poiMods.audioLink[float(0)]);
					decalRotation += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					decalRotation += AudioLinkGetChronoTime(float(0), float(0)) * float(0) * 360;
				}
				#endif
				#if defined(PROP_DECALTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) + sideMod, float(0), poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if (any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture1, uv + float4(0,0,0,0) * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#else
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) + sideMod, float(0), poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#endif
				decalColor.rgb = decalHueShift(float(1), decalColor.rgb, float(0) + poiLight.nDotV * float(0), float(0));
				decalColor.a *= applyTilingClipping(float(0), uv) * decalMask[float(3)];
				float audioLinkDecalAlpha1 = 0;
				#ifdef POI_AUDIOLINK
				if (float(0) && poiMods.audioLinkAvailable)
				{
					decalColor.rgb *= AudioLinkLerp(ALPASS_CCSTRIP + float2(uv.x * AUDIOLINK_WIDTH, 0)).rgb;
				}
				audioLinkDecalAlpha1 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, float(0)), decalColor.a * saturate(_DecalBlendAlpha1 + audioLinkDecalAlpha1));
				if (float(0))
				{
					alphaOverride += 1;
					decalAlpha = lerp(decalAlpha, min(decalAlpha, decalColor.a), decalMask[float(3)]);
				}
				float audioLinkDecalEmission1 = 0;
				#ifdef POI_AUDIOLINK
				audioLinkDecalEmission1 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.emission += decalColor.rgb * decalColor.a * max(float(0) + audioLinkDecalEmission1, 0);
				#endif
				//ifex float(1)==0
				#ifdef GEOM_TYPE_FROND
				decalScale = float4(1,1,0,0);
				decalRotation = 0;
				sideMod = 0;
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(float4(0,0,0,0).xy, float4(0,0,0,0).zw, poiMods.audioLink[float(0)]);
					sideMod += lerp(float4(0,0,0,0), float4(0,0,0,0), poiMods.audioLink[float(0)]);
					decalRotation += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					decalRotation += AudioLinkGetChronoTime(float(0), float(0)) * float(0) * 360;
				}
				#endif
				#if defined(PROP_DECALTEXTURE2) || !defined(OPTIMIZER_ENABLED)
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) + sideMod, float(0), poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if (any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture2, uv + float4(0,0,0,0) * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, float4(0.06083425,0.8079984,1,1).rgb, float(0)), float4(0.06083425,0.8079984,1,1).a);
				#else
				uv = decalUV(float(1), float4(1,1,0,0), float4(0.5,0.5,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0,0) + sideMod, float(0), poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, float4(0.06083425,0.8079984,1,1).rgb, float(0)), float4(0.06083425,0.8079984,1,1).a);
				#endif
				decalColor.rgb = decalHueShift(float(1), decalColor.rgb, _DecalHueShift2 + poiLight.nDotV * float(0), float(0));
				decalColor.a *= applyTilingClipping(float(0), uv) * decalMask[float(3)];
				float audioLinkDecalAlpha2 = 0;
				#ifdef POI_AUDIOLINK
				if (float(0) && poiMods.audioLinkAvailable)
				{
					decalColor.rgb *= AudioLinkLerp(ALPASS_CCSTRIP + float2(uv.x * AUDIOLINK_WIDTH, 0)).rgb;
				}
				audioLinkDecalAlpha2 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, float(0)), decalColor.a * saturate(_DecalBlendAlpha2 + audioLinkDecalAlpha2));
				if (float(0))
				{
					alphaOverride += 1;
					decalAlpha = lerp(decalAlpha, min(decalAlpha, decalColor.a), decalMask[float(3)]);
				}
				float audioLinkDecalEmission2 = 0;
				#ifdef POI_AUDIOLINK
				audioLinkDecalEmission2 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.emission += decalColor.rgb * decalColor.a * max(float(0) + audioLinkDecalEmission2, 0);
				#endif
				//ifex float(1)==0
				#ifdef DEPTH_OF_FIELD_COC_VIEW
				decalScale = float4(0.07,0.05,0,0);
				decalRotation = 0;
				sideMod = 0;
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(float4(0,0,0,0).xy, float4(0,0,0,0).zw, poiMods.audioLink[float(0)]);
					sideMod += lerp(float4(0,0,0,0), float4(0,0,0,0), poiMods.audioLink[float(0)]);
					decalRotation += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					decalRotation += AudioLinkGetChronoTime(float(0), float(0)) * float(0) * 360;
				}
				#endif
				#if defined(PROP_DECALTEXTURE3) || !defined(OPTIMIZER_ENABLED)
				uv = decalUV(float(4), float4(4,4,0,0), float4(0,0,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0.01501,0) + sideMod, float(0), poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if (any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture3, uv + float4(0,0,0,0) * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#else
				uv = decalUV(float(4), float4(4,4,0,0), float4(0,0,0,0), float(0) + decalRotation, float(0), decalScale, float4(0,0,0.01501,0) + sideMod, float(0), poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#endif
				decalColor.rgb = decalHueShift(float(0), decalColor.rgb, float(0.137) + poiLight.nDotV * float(0), float(0));
				decalColor.a *= applyTilingClipping(float(1), uv) * decalMask[float(1)];
				float audioLinkDecalAlpha3 = 0;
				#ifdef POI_AUDIOLINK
				if (float(0) && poiMods.audioLinkAvailable)
				{
					decalColor.rgb *= AudioLinkLerp(ALPASS_CCSTRIP + float2(uv.x * AUDIOLINK_WIDTH, 0)).rgb;
				}
				audioLinkDecalAlpha3 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, float(1)), decalColor.a * saturate(_DecalBlendAlpha3 + audioLinkDecalAlpha3));
				if (float(0))
				{
					alphaOverride += 1;
					decalAlpha = lerp(decalAlpha, min(decalAlpha, decalColor.a), decalMask[float(1)]);
				}
				float audioLinkDecalEmission3 = 0;
				#ifdef POI_AUDIOLINK
				audioLinkDecalEmission3 = lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]) * poiMods.audioLinkAvailable;
				#endif
				poiFragData.emission += decalColor.rgb * decalColor.a * max(float(0) + audioLinkDecalEmission3, 0);
				#endif
				if (alphaOverride)
				{
					poiFragData.alpha *= decalAlpha;
				}
				poiFragData.baseColor = saturate(poiFragData.baseColor);
			}
			#endif
			//ifex float(1)==0
			#ifdef VIGNETTE_MASKED
			#ifdef _LIGHTINGMODE_CLOTH
			#define HARD 0
			#define LERP 1
			#define CLOTHMODE HARD
			float V_SmithGGXCorrelated(float roughness, float NoV, float NoL)
			{
				float a2 = roughness * roughness;
				float lambdaV = NoL * sqrt((NoV - a2 * NoV) * NoV + a2);
				float lambdaL = NoV * sqrt((NoL - a2 * NoL) * NoL + a2);
				float v = 0.5 / (lambdaV + lambdaL);
				return v;
			}
			float D_GGX(float roughness, float NoH)
			{
				float oneMinusNoHSquared = 1.0 - NoH * NoH;
				float a = NoH * roughness;
				float k = roughness / (oneMinusNoHSquared + a * a);
				float d = k * k * (1.0 / UNITY_PI);
				return d;
			}
			float D_Charlie(float roughness, float NoH)
			{
				float invAlpha = 1.0 / roughness;
				float cos2h = NoH * NoH;
				float sin2h = max(1.0 - cos2h, 0.0078125); // 0.0078125 = 2^(-14/2), so sin2h^2 > 0 in fp16
				return (2.0 + invAlpha) * pow(sin2h, invAlpha * 0.5) / (2.0 * UNITY_PI);
			}
			float V_Neubelt(float NoV, float NoL)
			{
				return 1.0 / (4.0 * (NoL + NoV - NoL * NoV));
			}
			float Distribution(float roughness, float NoH, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(GGXTerm(roughness, NoH), D_Charlie(roughness, NoH), cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? GGXTerm(roughness, NoH) : D_Charlie(roughness, NoH);
				#endif
			}
			float Visibility(float roughness, float NoV, float NoL, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(V_SmithGGXCorrelated(roughness, NoV, NoL), V_Neubelt(NoV, NoL), cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? V_SmithGGXCorrelated(roughness, NoV, NoL) : V_Neubelt(NoV, NoL);
				#endif
			}
			float F_Schlick(float3 f0, float f90, float VoH)
			{
				return f0 + (f90 - f0) * pow(1.0 - VoH, 5);
			}
			float F_Schlick(float3 f0, float VoH)
			{
				float f = pow(1.0 - VoH, 5.0);
				return f + f0 * (1.0 - f);
			}
			float Fresnel(float3 f0, float LoH)
			{
				float f90 = saturate(dot(f0, float(50.0 * 0.33).xxx));
				return F_Schlick(f0, f90, LoH);
			}
			float Fd_Burley(float roughness, float NoV, float NoL, float LoH)
			{
				float f90 = 0.5 + 2.0 * roughness * LoH * LoH;
				float lightScatter = F_Schlick(1.0, f90, NoL);
				float viewScatter = F_Schlick(1.0, f90, NoV);
				return lightScatter * viewScatter;
			}
			float Fd_Wrap(float NoL, float w)
			{
				return saturate((NoL + w) / pow(1.0 + w, 2));
			}
			float4 SampleDFG(float NoV, float perceptualRoughness)
			{
				return _ClothDFG.Sample(sampler_ClothDFG, float3(NoV, perceptualRoughness, 0));
			}
			float3 EnvBRDF(float2 dfg, float3 f0)
			{
				return f0 * dfg.x + dfg.y;
			}
			float3 EnvBRDFMultiscatter(float3 dfg, float3 f0, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(lerp(dfg.xxx, dfg.yyy, f0), f0 * dfg.z, cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? lerp(dfg.xxx, dfg.yyy, f0) : f0 * dfg.z;
				#endif
			}
			float3 EnvBRDFEnergyCompensation(float3 dfg, float3 f0, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(1.0 + f0 * (1.0 / dfg.y - 1.0), 1, cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? 1.0 + f0 * (1.0 / dfg.y - 1.0) : 1;
				#endif
			}
			float ClothMetallic(float cloth)
			{
				#if CLOTHMODE == LERP
				return cloth;
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? 1 : 0;
				#endif
			}
			float3 Specular(float roughness, PoiLight poiLight, float f0, float3 normal, float cloth)
			{
				float NoL = poiLight.nDotLSaturated;
				float NoH = poiLight.nDotH;
				float LoH = poiLight.lDotH;
				float NoV = poiLight.nDotV;
				float D = Distribution(roughness, NoH, cloth);
				float V = Visibility(roughness, NoV, NoL, cloth);
				float3 F = Fresnel(f0, LoH);
				return (D * V) * F;
			}
			float3 getBoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			float SpecularAO(float NoV, float ao, float roughness)
			{
				return clamp(pow(NoV + ao, exp2(-16.0 * roughness - 1.0)) - 1.0 + ao, 0.0, 1.0);
			}
			float3 IndirectSpecular(float3 dfg, float roughness, float occlusion, float energyCompensation, float cloth, float3 indirectDiffuse, float f0, PoiLight poiLight, PoiFragData poiFragData, PoiCam poiCam, PoiMesh poiMesh)
			{
				float3 normal = poiMesh.normals[1];
				float3 reflDir = reflect(-poiCam.viewDir, normal);
				Unity_GlossyEnvironmentData envData;
				envData.roughness = roughness;
				envData.reflUVW = getBoxProjection(reflDir, poiMesh.worldPos, unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz);
				float3 probe0 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData);
				float3 indirectSpecular = probe0;
				#if UNITY_SPECCUBE_BLENDING
				
				if (unity_SpecCube0_BoxMin.w < 0.99999)
				{
					envData.reflUVW = getBoxProjection(reflDir, poiMesh.worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz);
					float3 probe1 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0), unity_SpecCube1_HDR, envData);
					indirectSpecular = lerp(probe1, probe0, unity_SpecCube0_BoxMin.w);
				}
				#endif
				float horizon = min(1 + dot(reflDir, normal), 1);
				indirectSpecular = indirectSpecular * horizon * horizon * energyCompensation * EnvBRDFMultiscatter(dfg, f0, cloth);
				indirectSpecular *= SpecularAO(poiLight.nDotV, occlusion, roughness);
				return indirectSpecular;
			};
			#undef LERP
			#undef HARD
			#undef CLOTHMODE
			#endif
			float _LightingWrappedWrap;
			float _LightingWrappedNormalization;
			float RTWrapFunc(in float dt, in float w, in float norm)
			{
				float cw = saturate(w);
				float o = (dt + cw) / ((1.0 + cw) * (1.0 + cw * norm));
				float flt = 1.0 - 0.85 * norm;
				if (w > 1.0)
				{
					o = lerp(o, flt, w - 1.0);
				}
				return o;
			}
			float3 GreenWrapSH(float fA) // Greens unoptimized and non-normalized
			{
				float fAs = saturate(fA);
				float4 t = float4(fA + 1, fAs - 1, fA - 2, fAs + 1); // DJL edit: allow wrapping to L0-only at w=2
				return float3(t.x, -t.z * t.x / 3, 0.25 * t.y * t.y * t.w);
			}
			float3 GreenWrapSHOpt(float fW) // optimised and normalized https://blog.selfshadow.com/2012/01/07/righting-wrap-part-2/
			{
				const float4 t0 = float4(0.0, 1.0 / 4.0, -1.0 / 3.0, -1.0 / 2.0);
				const float4 t1 = float4(1.0, 2.0 / 3.0, 1.0 / 4.0, 0.0);
				float3 fWs = float3(fW, fW, saturate(fW)); // DJL edit: allow wrapping to L0-only at w=2
				float3 r;
				r.xyz = t0.xxy * fWs + t0.xzw;
				r.xyz = r.xyz * fWs + t1.xyz;
				return r;
			}
			float3 ShadeSH9_wrapped(float3 normal, float wrap)
			{
				float3 x0, x1, x2;
				float3 conv = lerp(GreenWrapSH(wrap), GreenWrapSHOpt(wrap), float(0)); // Should try optimizing this...
				conv *= float3(1, 1.5, 4); // Undo pre-applied cosine convolution by using the inverse
				x0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
				float3 L2_0 = float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / - 3.0;
				x0 -= L2_0;
				x1.r = dot(unity_SHAr.xyz, normal);
				x1.g = dot(unity_SHAg.xyz, normal);
				x1.b = dot(unity_SHAb.xyz, normal);
				float4 vB = normal.xyzz * normal.yzzx;
				x2.r = dot(unity_SHBr, vB);
				x2.g = dot(unity_SHBg, vB);
				x2.b = dot(unity_SHBb, vB);
				float vC = normal.x * normal.x - normal.y * normal.y;
				x2 += unity_SHC.rgb * vC;
				x2 += L2_0;
				return x0 * conv.x + x1 * conv.y + x2 * conv.z;
			}
			float3 GetSHDirectionL1()
			{
				return Unity_SafeNormalize((unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz));
			}
			half3 GetSHMaxL1()
			{
				float3 maxDirection = GetSHDirectionL1();
				return ShadeSH9_wrapped(maxDirection, 0);
			}
			#ifdef _LIGHTINGMODE_SHADEMAP
			void applyShadeMapping(inout PoiFragData poiFragData, PoiMesh poiMesh, inout PoiLight poiLight)
			{
				float MainColorFeatherStep = float(0.5) - float(0.0001);
				float firstColorFeatherStep = float(0) - float(0.0001);
				#if defined(PROP_1ST_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 firstShadeMap = POI2D_SAMPLER_PAN(_1st_ShadeMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 firstShadeMap = float4(1, 1, 1, 1);
				#endif
				firstShadeMap = lerp(firstShadeMap, float4(poiFragData.baseColor, 1), float(0));
				#if defined(PROP_2ND_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 secondShadeMap = POI2D_SAMPLER_PAN(_2nd_ShadeMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 secondShadeMap = float4(1, 1, 1, 1);
				#endif
				secondShadeMap = lerp(secondShadeMap, firstShadeMap, float(0));
				firstShadeMap.rgb *= float4(1,1,1,1).rgb; //* lighColor
				secondShadeMap.rgb *= float4(1,1,1,1).rgb; //* LightColor;
				float shadowMask = 1;
				shadowMask *= float(0) ?(float(0) ?(1.0 - firstShadeMap.a) : firstShadeMap.a) : 1;
				shadowMask *= float(0) ?(float(0) ?(1.0 - secondShadeMap.a) : secondShadeMap.a) : 1;
				float mainShadowMask = saturate(1 - ((poiLight.lightMap) - MainColorFeatherStep) / (float(0.5) - MainColorFeatherStep) * (shadowMask));
				float firstSecondShadowMask = saturate(1 - ((poiLight.lightMap) - firstColorFeatherStep) / (float(0) - firstColorFeatherStep) * (shadowMask));
				mainShadowMask *= poiLight.shadowMask * float(0.599);
				firstSecondShadowMask *= poiLight.shadowMask * float(0.599);
				if (float(0) == 0)
				{
					poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
				}
				else
				{
					poiFragData.baseColor.rgb *= lerp(1, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
				}
				poiLight.rampedLightMap = 1 - mainShadowMask;
			}
			#endif
			void ApplySubtractiveLighting(inout UnityIndirect indirectLight)
			{
				#if SUBTRACTIVE_LIGHTING
				poiLight.attenuation = FadeShadows(lerp(1, poiLight.attenuation, _AttenuationMultiplier));
				float ndotl = saturate(dot(i.normal, _WorldSpaceLightPos0.xyz));
				float3 shadowedLightEstimate = ndotl * (1 - poiLight.attenuation) * _LightColor0.rgb;
				float3 subtractedLight = indirectLight.diffuse - shadowedLightEstimate;
				subtractedLight = max(subtractedLight, unity_ShadowColor.rgb);
				subtractedLight = lerp(subtractedLight, indirectLight.diffuse, _LightShadowData.x);
				indirectLight.diffuse = min(subtractedLight, indirectLight.diffuse);
				#endif
			}
			UnityIndirect CreateIndirectLight(in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight)
			{
				UnityIndirect indirectLight;
				indirectLight.diffuse = 0;
				indirectLight.specular = 0;
				#if defined(LIGHTMAP_ON)
				indirectLight.diffuse = DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, poiMesh.lightmapUV.xy));
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 lightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_LightmapInd, unity_Lightmap, poiMesh.lightmapUV.xy
				);
				indirectLight.diffuse = DecodeDirectionalLightmap(
				indirectLight.diffuse, lightmapDirection, poiMesh.normals[1]
				);
				#endif
				ApplySubtractiveLighting(indirectLight);
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float3 dynamicLightDiffuse = DecodeRealtimeLightmap(
				UNITY_SAMPLE_TEX2D(unity_DynamicLightmap, poiMesh.lightmapUV.zw)
				);
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 dynamicLightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_DynamicDirectionality, unity_DynamicLightmap,
				poiMesh.lightmapUV.zw
				);
				indirectLight.diffuse += DecodeDirectionalLightmap(
				dynamicLightDiffuse, dynamicLightmapDirection, poiMesh.normals[1]
				);
				#else
				indirectLight.diffuse += dynamicLightDiffuse;
				#endif
				#endif
				#if !defined(LIGHTMAP_ON) && !defined(DYNAMICLIGHTMAP_ON)
				#if UNITY_LIGHT_PROBE_PROXY_VOLUME
				if (unity_ProbeVolumeParams.x == 1)
				{
					indirectLight.diffuse = SHEvalLinearL0L1_SampleProbeVolume(
					float4(poiMesh.normals[1], 1), poiMesh.worldPos
					);
					indirectLight.diffuse = max(0, indirectLight.diffuse);
					#if defined(UNITY_COLORSPACE_GAMMA)
					indirectLight.diffuse = LinearToGammaSpace(indirectLight.diffuse);
					#endif
				}
				else
				{
					indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				}
				#else
				indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				#endif
				#endif
				indirectLight.diffuse *= poiLight.occlusion;
				return indirectLight;
			}
			void calculateShading(inout PoiLight poiLight, inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				#ifdef UNITY_PASS_FORWARDBASE
				float shadowStrength = float(0.599) * poiLight.shadowMask;
				#ifdef POI_PASS_OUTLINE
				shadowStrength = lerp(0, shadowStrength, _OutlineShadowStrength);
				#endif
				#ifdef _LIGHTINGMODE_FLAT
				poiLight.finalLighting = poiLight.directColor;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				#endif
				#ifdef _LIGHTINGMODE_TEXTURERAMP
				poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, poiLight.lightMap + float(0)).rgb, shadowStrength);
				poiLight.finalLighting = lerp(float4(1,1,1,1) * lerp(poiLight.indirectColor, poiLight.rampedLightMap * poiLight.directColor, float(0)) * poiLight.occlusion, poiLight.directColor, poiLight.rampedLightMap);
				#endif
				#ifdef _LIGHTINGMODE_MULTILAYER_MATH
				#if defined(PROP_MULTILAYERMATHBLURMAP) || !defined(OPTIMIZER_ENABLED)
				float4 blurMap = POI2D_SAMPLER_PAN(_MultilayerMathBlurMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 blurMap = 1;
				#endif
				float4 lns = float4(1, 1, 1, 1);
				if (float(1))
				{
					lns.x = poiEdgeNonLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.1) * blurMap.r);
					lns.y = poiEdgeNonLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.3) * blurMap.g);
					lns.z = poiEdgeNonLinearNoSaturate(poiLight.lightMap, float(0.25), float(0.1) * blurMap.b);
					lns.w = poiEdgeNonLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.1) * blurMap.r, float(0));
				}
				else
				{
					lns.x = poiEdgeLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.1) * blurMap.r);
					lns.y = poiEdgeLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.3) * blurMap.g);
					lns.z = poiEdgeLinearNoSaturate(poiLight.lightMap, float(0.25), float(0.1) * blurMap.b);
					lns.w = poiEdgeLinearNoSaturate(poiLight.lightMap, float(0.5), float(0.1) * blurMap.r, float(0));
				}
				lns = saturate(lns);
				float3 indirectColor = 1;
				if (float4(0.4479884,0.5225216,0.6920712,1).a > 0)
				{
					#if defined(PROP_SHADOWCOLORTEX) || !defined(OPTIMIZER_ENABLED)
					float4 shadowColorTex = POI2D_SAMPLER_PAN(_ShadowColorTex, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					float4 shadowColorTex = float4(1, 1, 1, 1);
					#endif
					indirectColor = lerp(float3(1, 1, 1), shadowColorTex.rgb, shadowColorTex.a) * float4(0.4479884,0.5225216,0.6920712,1).rgb;
				}
				if (float4(0,0,0,0).a > 0)
				{
					#if defined(PROP_SHADOW2NDCOLORTEX) || !defined(OPTIMIZER_ENABLED)
					float4 shadow2ndColorTex = POI2D_SAMPLER_PAN(_Shadow2ndColorTex, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					float4 shadow2ndColorTex = float4(1, 1, 1, 1);
					#endif
					shadow2ndColorTex.rgb = lerp(float3(1, 1, 1), shadow2ndColorTex.rgb, shadow2ndColorTex.a) * float4(0,0,0,0).rgb;
					lns.y = float4(0,0,0,0).a - lns.y * float4(0,0,0,0).a;
					indirectColor = lerp(indirectColor, shadow2ndColorTex.rgb, lns.y);
				}
				if (float4(0,0,0,0).a > 0)
				{
					#if defined(PROP_SHADOW3RDCOLORTEX) || !defined(OPTIMIZER_ENABLED)
					float4 shadow3rdColorTex = POI2D_SAMPLER_PAN(_Shadow3rdColorTex, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
					#else
					float4 shadow3rdColorTex = float4(1, 1, 1, 1);
					#endif
					shadow3rdColorTex.rgb = lerp(float3(1, 1, 1), shadow3rdColorTex.rgb, shadow3rdColorTex.a) * float4(0,0,0,0).rgb;
					lns.z = float4(0,0,0,0).a - lns.z * float4(0,0,0,0).a;
					indirectColor = lerp(indirectColor, shadow3rdColorTex.rgb, lns.z);
				}
				poiLight.rampedLightMap = lns.x;
				indirectColor = lerp(indirectColor, 1, lns.w * float4(1,0,0,1).rgb);
				indirectColor = indirectColor * lerp(poiLight.indirectColor, poiLight.directColor, float(0));
				indirectColor = lerp(poiLight.directColor, indirectColor, shadowStrength * poiLight.shadowMask);
				poiLight.finalLighting = lerp(indirectColor, poiLight.directColor, lns.x);
				#endif
				#ifdef _LIGHTINGMODE_SHADEMAP
				poiLight.finalLighting = poiLight.directColor;
				#endif
				#ifdef _LIGHTINGMODE_REALISTIC
				UnityLight light;
				light.dir = poiLight.direction;
				light.color = saturate(_LightColor0.rgb * lerp(1, poiLight.attenuation, poiLight.attenuationStrength) * poiLight.detailShadow);
				light.ndotl = poiLight.nDotLSaturated;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				poiLight.finalLighting = max(UNITY_BRDF_PBS(1, 0, 0, 0, poiMesh.normals[1], poiCam.viewDir, light, CreateIndirectLight(poiMesh, poiCam, poiLight)).xyz, float(0));
				#endif
				#ifdef _LIGHTINGMODE_CLOTH
				#if defined(PROP_MOCHIEMETALLICMAP) || !defined(OPTIMIZER_ENABLED)
				float4 clothmapsample = POI2D_MAINTEX_SAMPLER_PAN_INLINED(_ClothMetallicSmoothnessMap, poiMesh);
				float roughness = 1 - (clothmapsample.a * float(0.5));
				float reflectance = float(0.5) * clothmapsample.b;
				float clothmask = clothmapsample.g;
				float metallic = pow(clothmapsample.r * _ClothMetallic, 2) * ClothMetallic(clothmask);
				roughness = float(0) == 1 ? 1 - roughness : roughness;
				#else
				float roughness = 1 - (float(0.5));
				float metallic = pow(_ClothMetallic, 2);
				float reflectance = float(0.5);
				float clothmask = 1;
				#endif
				float perceptualRoughness = pow(roughness, 2);
				float clampedRoughness = max(0.002, perceptualRoughness);
				float f0 = 0.16 * reflectance * reflectance * (1 - metallic) + poiFragData.baseColor * metallic;
				float3 fresnel = Fresnel(f0, poiLight.nDotV);
				float3 dfg = SampleDFG(poiLight.nDotV, perceptualRoughness);
				float energyCompensation = EnvBRDFEnergyCompensation(dfg, f0, clothmask);
				poiLight.finalLighting = Fd_Burley(perceptualRoughness, poiLight.nDotV, poiLight.nDotLSaturated, poiLight.lDotH);
				poiLight.finalLighting *= _LightColor0 * poiLight.attenuation * poiLight.nDotLSaturated;
				float3 specular = max(0, Specular(clampedRoughness, poiLight, f0, poiMesh.normals[1], clothmask) * poiLight.finalLighting * energyCompensation * UNITY_PI); // (D * V) * F
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
				float3 indirectDiffuse;
				indirectDiffuse.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, poiMesh.normals[1]);
				indirectDiffuse.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, poiMesh.normals[1]);
				indirectDiffuse.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, poiMesh.normals[1]);
				indirectDiffuse = max(0, indirectDiffuse);
				float3 indirectSpecular = IndirectSpecular(dfg, roughness, poiLight.occlusion, energyCompensation, clothmask, indirectDiffuse, f0, poiLight, poiFragData, poiCam, poiMesh);
				poiLight.finalLightAdd += max(0, specular + indirectSpecular);
				poiLight.finalLighting += indirectDiffuse * poiLight.occlusion;
				poiFragData.baseColor.xyz *= (1 - metallic);
				#endif
				#ifdef _LIGHTINGMODE_WRAPPED
				#define GREYSCALE_VECTOR float3(.33333, .33333, .33333)
				float3 directColor = _LightColor0.rgb * saturate(RTWrapFunc(poiLight.nDotL, float(0), float(0))) * lerp(1, poiLight.attenuation, poiLight.attenuationStrength);
				float3 indirectColor = ShadeSH9_wrapped(poiMesh.normals[float(0)], float(0)) * poiLight.occlusion;
				float3 ShadeSH9Plus_2 = GetSHMaxL1();
				float bw_topDirectLighting_2 = dot(_LightColor0.rgb, GREYSCALE_VECTOR);
				float bw_directLighting = dot(directColor, GREYSCALE_VECTOR);
				float bw_indirectLighting = dot(indirectColor, GREYSCALE_VECTOR);
				float bw_topIndirectLighting = dot(ShadeSH9Plus_2, GREYSCALE_VECTOR);
				poiLight.lightMap = smoothstep(0, bw_topIndirectLighting + bw_topDirectLighting_2, bw_indirectLighting + bw_directLighting) * poiLight.detailShadow;
				poiLight.rampedLightMap = saturate((poiLight.lightMap - (1 - float(0.5))) / saturate((1 - float(0)) - (1 - float(0.5)) + fwidth(poiLight.lightMap)));
				float3 mathRamp = lerp(float3(1, 1, 1), saturate(lerp((float4(1,1,1,1) * lerp(indirectColor, 1, float(0))), float3(1, 1, 1), saturate(poiLight.rampedLightMap))), float(0.599));
				float3 finalWrap = directColor + indirectColor;
				if (float(1))
				{
					finalWrap = clamp(finalWrap, float(0), float(1));
				}
				else
				{
					finalWrap = max(finalWrap, float(0));
				}
				poiLight.finalLighting = finalWrap * saturate(mathRamp + 1 - float(0.599));
				#endif
				#ifdef _LIGHTINGMODE_SKIN
				float3 ambientNormalWorld = poiMesh.normals[1];//aTangentToWorld(s, s.blurredNormalTangent);
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				float subsurface = 1;
				float skinScattering = saturate(subsurface * float(1) * 2);
				half3 absorption = exp((1.0h - subsurface) * float4(-8,-40,-64,0).rgb);
				absorption *= saturate(poiFragData.baseColor * unity_ColorSpaceDouble.rgb);
				ambientNormalWorld = normalize(lerp(poiMesh.normals[1], ambientNormalWorld, float(0.7)));
				float ndlBlur = dot(poiMesh.normals[1], poiLight.direction) * 0.5h + 0.5h;
				float lumi = dot(poiLight.directColor, half3(0.2126h, 0.7152h, 0.0722h));
				float4 sssLookupUv = float4(ndlBlur, skinScattering * lumi, 0.0f, 0.0f);
				half3 sss = poiLight.lightMap * poiLight.attenuation * tex2Dlod(_SkinLUT, sssLookupUv).rgb;
				poiLight.finalLighting = min(lerp(poiLight.indirectColor * float4(1,1,1,1), float4(1,1,1,1), float(0)) + (sss * poiLight.directColor), poiLight.directColor);
				#endif
				#ifdef _LIGHTINGMODE_SDF
				float3 forward = normalize(UnityObjectToWorldDir(float4(float4(0,0,1,0).xyz, 1)));
				float3 left = normalize(UnityObjectToWorldDir(float4(float4(-1,0,0,0).xyz, 1)));
				float3 lightDirHorizontal = normalize(float3(poiLight.direction.x, 0, poiLight.direction.z));
				float lightAtten = 1 - (dot(lightDirHorizontal, forward) * 0.5 + 0.5);
				float filpU = sign(dot(lightDirHorizontal, left));
				#if defined(PROP_SDFSHADINGTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float shadowSDF = POI2D_SAMPLER_PAN(_SDFShadingTexture, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)) * float2(filpU, 1), float4(0,0,0,0)).r;
				#else
				float shadowSDF = float2(1, 1);
				#endif
				float blur = float(0.1) * 0.1;
				float faceShadow = smoothstep(lightAtten - blur, lightAtten + blur, shadowSDF) * poiLight.detailShadow;
				float3 indirectColor = float4(1,1,1,1).rgb;
				indirectColor = indirectColor * lerp(poiLight.indirectColor, poiLight.directColor, float(0));
				indirectColor = lerp(poiLight.directColor, indirectColor, float(0.599) * poiLight.shadowMask);
				poiLight.finalLighting = lerp(indirectColor, poiLight.directColor, faceShadow);
				#endif
				#endif
				#ifdef POI_PASS_ADD
				if (float(1) == 0)
				{
					poiLight.rampedLightMap = max(0, poiLight.nDotL);
					poiLight.finalLighting = poiLight.directColor * poiLight.attenuation * max(0, poiLight.nDotL) * poiLight.detailShadow * poiLight.additiveShadow;
				}
				if (float(1) == 1)
				{
					#if defined(POINT_COOKIE) || defined(DIRECTIONAL_COOKIE)
					float passthrough = 0;
					#else
					float passthrough = float(0.5);
					#endif
					if (float(0.5) == float(0)) float(0.5) += 0.001;
					poiLight.rampedLightMap = smoothstep(float(0.5), float(0), 1 - (.5 * poiLight.nDotL + .5));
					#if defined(POINT) || defined(SPOT)
					poiLight.finalLighting = lerp(poiLight.directColor * max(min(poiLight.additiveShadow, poiLight.detailShadow), passthrough), poiLight.indirectColor, smoothstep(float(0), float(0.5), 1 - (.5 * poiLight.nDotL + .5))) * poiLight.attenuation;
					#else
					poiLight.finalLighting = lerp(poiLight.directColor * max(min(poiLight.attenuation, poiLight.detailShadow), passthrough), poiLight.indirectColor, smoothstep(float(0), float(0.5), 1 - (.5 * poiLight.nDotL + .5)));
					#endif
				}
				if (float(1) == 2)
				{
				}
				#endif
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float3 vertexLighting = float3(0, 0, 0);
				for (int index = 0; index < 4; index++)
				{
					if (float(1) == 0)
					{
						vertexLighting += poiLight.vColor[index] * poiLight.vAttenuationDotNL[index] * poiLight.detailShadow; // Realistic
					}
					if (float(1) == 1) // Toon
					{
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * float(0.5) * poiLight.vAttenuation[index], smoothstep(float(0), float(0.5), .5 * poiLight.vDotNL[index] + .5)) * poiLight.detailShadow;
					}
				}
				float3 mixedLight = poiLight.finalLighting;
				poiLight.finalLighting = vertexLighting + poiLight.finalLighting;
				#endif
			}
			#endif
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			#ifdef POI_AL_DECAL
			void ApplyAudioLinkDecal(in PoiMesh poiMesh, inout PoiFragData poiFragData, in PoiMods poiMods)
			{
				float4 colorAndMask = float4(1, 1, 1, 1);
				#if defined(PROP_ALDECALCOLORMASK) || !defined(OPTIMIZER_ENABLED)
				colorAndMask = POI2D_SAMPLER_PAN(_ALDecalColorMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#endif
				float2 uv = poiMesh.uv[float(2)];
				float2 decalCenter = float4(-0.3,-0.7,1,1);
				float theta = radians(float(360) + _Time.z * float(0));
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - _ALUVScale.xz / 2 + float4(-0.3,-0.7,1,1), _ALUVScale.yw / 2 + float4(-0.3,-0.7,1,1), float2(0, 0), float2(1, 1));
				float4 audioLinkMask = 1.0;
				float2 aluv = uv;
				if (float(0) == 1)
				{
					float2 uvdir = uv * 2 - 1;
					aluv.x = frac(atan2(uvdir.y, uvdir.x) * UNITY_INV_TWO_PI);
					aluv.y = length(uvdir);
				}
				float maskY = aluv.y;
				if (float(0) == 1)
				{
					maskY = remap(maskY, float4(0,1,0,1).x, float4(0,1,0,1).y, 0, 1);
				}
				float maskX = aluv.x;
				if (float(0) == 1)
				{
					maskX = remap(maskX, float4(0,1,0,1).z, float4(0,1,0,1).w, 0, 1);
				}
				float maskVolume = _ALDecalVolumeStep != 0.0 ? floor(maskY * _ALDecalVolumeStep) / _ALDecalVolumeStep : maskY;
				float maskBand = float(0) != 0.0 ? floor(maskX * float(0)) / float(0) : maskX;
				audioLinkMask.r = maskVolume;
				audioLinkMask.g = maskBand;
				audioLinkMask.b = maskVolume < float(0) || maskVolume > float(1) ? 0.0 : audioLinkMask.b;
				audioLinkMask.b = maskBand < float(0) || maskBand > float(1) ? 0.0 : audioLinkMask.b;
				if (float(0))
				{
					float volumeth = float(0.419);
					if (_ALDecalVolumeStep != 0.0) audioLinkMask.b = frac(maskY * _ALDecalVolumeStep) > volumeth ? 0.0 : audioLinkMask.b;
					float bandwidth = float(0) == 1 ? float(1) / aluv.y : float(1);
					float bandth = 1.0 - bandwidth;
					if (float(0) != 0.0) audioLinkMask.b = frac(maskX * float(0) + bandth * 0.5) < bandth ? 0.0 : audioLinkMask.b;
				}
				float2 audioLinkUV = float2(frac(audioLinkMask.g * 2.0), 4.5 / 4.0 + floor(audioLinkMask.g * 2.0) / 4.0);
				audioLinkUV.y *= 0.0625;
				float4 audioTexture = _AudioTexture.Sample(sampler_linear_clamp, audioLinkUV);
				float audioVal = audioTexture.b * float(0.2) * lerp(float(5), float(1), audioLinkMask.g);
				float audioLinkValue = float(0.239) < 1.0 ? abs(audioVal - audioLinkMask.r) < float(0.239) : audioVal > audioLinkMask.r * 2.0;
				audioLinkValue = saturate(audioLinkValue) * audioLinkMask.b;
				audioLinkValue *= colorAndMask.a;
				if (!poiMods.audioLinkAvailable)
				{
					audioLinkValue = 0;
				}
				float3 alColorChord = _AudioTexture.Sample(sampler_linear_clamp, float2(maskX, 24.5 / 64.0)).rgb;
				float volumeColorSrc = audioLinkMask.g;
				if (float(0) == 1) volumeColorSrc = audioLinkMask.r;
				if (float(0) == 2) volumeColorSrc = audioVal;
				float3 volumeColor = lerp(float4(0.2319224,0,0.05863854,1).rgb, float4(0,0.06823184,0.2603273,1).rgb, saturate(volumeColorSrc * 2));
				volumeColor = lerp(volumeColor, float4(0,1,1,1).rgb, saturate(volumeColorSrc * 2 - 1));
				float3 emissionColor = lerp(float4(0.2319224,0,0.05863854,1).rgb * float(5.02), float4(0,0.06823184,0.2603273,1).rgb * float(5.2), saturate(volumeColorSrc * 2));
				emissionColor = lerp(emissionColor, float4(0,1,1,1).rgb * float(5.08), saturate(volumeColorSrc * 2 - 1));
				#if defined(POI_PASS_BASE) || defined(POI_PASS_ADD)
				poiFragData.emission += emissionColor * audioLinkValue;
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor, customBlend(poiFragData.baseColor, volumeColor * colorAndMask.rgb, float(11)), saturate(float(1) * audioLinkValue));
				#endif
				poiFragData.alpha = lerp(poiFragData.alpha, poiFragData.alpha * audioLinkValue, float(0));
			}
			#endif
			#endif
			//ifex float(1)==0
			#ifdef _GLOSSYREFLECTIONS_OFF
			#ifdef _RIMSTYLE_POIYOMI
			void ApplyRimLighting(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				float viewDotNormal = abs(dot(poiCam.viewDir, lerp(poiMesh.normals[0], poiMesh.normals[1], float(0.277))));
				
				if (float(0))
				{
					viewDotNormal = 1 - viewDotNormal;
				}
				viewDotNormal = pow(viewDotNormal, float(1.15));
				if (float(0.157) && float(0))
				{
					viewDotNormal += lerp(0, (1 - poiLight.nDotLNormalized) * 3, float(0.157));
				}
				float rimStrength = float(0);
				float rimWidth = lerp( - .05, 1, float(0.185));
				float blendStrength = float(0.48);
				#ifdef POI_AUDIOLINK
				
				if (poiMods.audioLinkAvailable)
				{
					rimWidth = clamp(rimWidth + lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]), - .05, 1);
					blendStrength += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
					blendStrength += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
				}
				#endif
				#if defined(PROP_RIMMASK) || !defined(OPTIMIZER_ENABLED)
				float rimMask = POI2D_SAMPLER_PAN(_RimMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float rimMask = 1;
				#endif
				#if defined(PROP_RIMTEX) || !defined(OPTIMIZER_ENABLED)
				float4 rimColor = POI2D_SAMPLER_PAN(_RimTex, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)) * float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#else
				float4 rimColor = float4(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)), float4(1,1,1,1).a);
				#endif
				
				if (float(0))
				{
					rimColor.rgb = hueShift(rimColor.rgb, float(0) + _Time.x * float(0));
				}
				rimWidth = max(lerp(rimWidth, rimWidth * lerp(0, 1, poiLight.lightMap - _ShadowMixThreshold) * _ShadowMixWidthMod, _ShadowMix), 0);
				float rim = 1 - smoothstep(min(float(0.192), rimWidth), rimWidth, viewDotNormal);
				rim *= float4(1,1,1,1).a * rimColor.a * rimMask;
				if (float(0))
				{
					switch(float(0))
					{
						case 0: rim = lerp(rim, rim * poiLight.rampedLightMap, float(0)); break;
						case 1: rim = lerp(rim, rim * smoothstep(float4(0,0,0,1).x, float4(0,0,0,1).y, poiLight.nDotLNormalized), float(0)); break;
					}
				}
				float3 finalRimColor = rimColor.rgb * lerp(1, poiFragData.baseColor, float(0));
				finalRimColor *= float(1.28);
				switch(float(3))
				{
					case 0: poiFragData.baseColor += finalRimColor * rim * blendStrength; break;
					case 1: poiFragData.baseColor = lerp(poiFragData.baseColor, finalRimColor, rim * blendStrength); break;
					case 2: poiFragData.baseColor = lerp(poiFragData.baseColor, poiFragData.baseColor * finalRimColor, rim * blendStrength); break;
					case 3: poiFragData.baseColor = lerp(poiFragData.baseColor.rgb, poiFragData.baseColor.rgb + poiFragData.baseColor.rgb * finalRimColor, rim * blendStrength); break;
				}
				poiFragData.baseColor = saturate(poiFragData.baseColor);
				poiFragData.emission += finalRimColor * rim * rimStrength;
			}
			#endif
			#ifdef _RIMSTYLE_UTS2
			void ApplyRimLighting(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				#if defined(PROP_SET_RIMLIGHTMASK) || !defined(OPTIMIZER_ENABLED)
				float4 _Set_RimLightMask_var = POI2D_SAMPLER_PAN(_Set_RimLightMask, _MainTex, poiUV(poiMesh.uv[_Set_RimLightMaskUV], float4(1,1,0,0)), _Set_RimLightMaskPan);
				#else
				float4 _Set_RimLightMask_var = float4(1.0, 1.0, 1.0, 1.0);
				#endif
				float3 rimColor = float3(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)));
				float3 _Is_LightColor_RimLight_var = lerp(rimColor, (rimColor * poiLight.directColor), float(1));
				float _RimArea_var = (1.0 - dot(lerp(poiMesh.normals[0], poiMesh.normals[1], float(0.277)), poiCam.viewDir));
				float _RimLightPower_var = pow(_RimArea_var, exp2(lerp(3, 0, float(0.1))));
				float _Rimlight_InsideMask_var = saturate(lerp((0.0 + ((_RimLightPower_var - float(0.0001)) * (1.0 - 0.0)) / (1.0 - float(0.0001))), step(float(0.0001), _RimLightPower_var), float(0)));
				float _VertHalfLambert_var = 0.5 * dot(poiMesh.normals[0], poiLight.direction) + 0.5;
				float3 _LightDirection_MaskOn_var = lerp((_Is_LightColor_RimLight_var * _Rimlight_InsideMask_var), (_Is_LightColor_RimLight_var * saturate((_Rimlight_InsideMask_var - ((1.0 - _VertHalfLambert_var) + float(0))))), float(0));
				float _ApRimLightPower_var = pow(_RimArea_var, exp2(lerp(3, 0, float(0.1))));
				float3 ApRimColor = float3(poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0)));
				float3 _RimLight_var = (saturate((_Set_RimLightMask_var.g + float(0))) * lerp(_LightDirection_MaskOn_var, (_LightDirection_MaskOn_var + (lerp(ApRimColor, (ApRimColor * poiLight.directColor), float(1)) * saturate((lerp((0.0 + ((_ApRimLightPower_var - float(0.0001)) * (1.0 - 0.0)) / (1.0 - float(0.0001))), step(float(0.0001), _ApRimLightPower_var), float(0)) - (saturate(_VertHalfLambert_var) + float(0)))))), float(0)));
				
				if (float(0))
				{
					_RimLight_var = hueShift(_RimLight_var, float(0) + _Time.x * float(0));
				}
				poiFragData.baseColor = saturate(poiFragData.baseColor + _RimLight_var);
			}
			#endif
			#endif
			//ifex float(1)==0
			#ifdef _SUNDISK_SIMPLE
			float3 RandomColorFromPoint(float2 rando)
			{
				fixed hue = random2(rando.x + rando.y).x;
				fixed saturation = lerp(float4(0.8,1,0,1).x, float4(0.8,1,0,1).y, rando.x);
				fixed value = lerp(float4(0.8,1,0,1).x, float4(0.8,1,0,1).y, rando.y);
				float3 hsv = float3(hue, saturation, value);
				return HSVtoRGB(hsv);
			}
			void applyGlitter(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				float2 st = frac(poiMesh.uv[float(0)] + float4(0,0,0,0).xy * _Time.x) * float(623.4);
				float2 i_st = floor(st);
				float2 f_st = frac(st);
				float m_dist = 10.;  // minimun distance
				float2 m_point = 0;        // minimum point
				float2 randoPoint = 0;
				float2 dank;
				for (int j = -1; j <= 1; j++)
				{
					for (int i = -1; i <= 1; i++)
					{
						float2 neighbor = float2(i, j);
						float2 pos = random2(i_st + neighbor);
						float2 rando = pos;
						pos = 0.5 + 0.5 * sin(float(1) * 6.2831 * pos);
						float2 diff = neighbor + pos - f_st;
						float dist = length(diff);
						if (dist < m_dist)
						{
							dank = diff;
							m_dist = dist;
							m_point = pos;
							randoPoint = rando;
						}
					}
				}
				float randomFromPoint = random(randoPoint);
				float size = float(0.3);
				
				if (float(0))
				{
					size = remapClamped(0, 1, randomFromPoint, float4(0.1,0.5,0,1).x, float4(0.1,0.5,0,1).y);
				}
				half glitterAlpha = 1;
				switch(float(0))
				{
					case 0: //circle
					glitterAlpha = 1 - saturate((m_dist - size) / clamp(fwidth(m_dist), 0.0001, 1.0));
					break;
					case 1: //sqaure
					float jaggyFix = pow(poiCam.distanceToVert, 2) * float(0);
					
					if (float(0) == 1 || float(0) != 0)
					{
						float2 center = float2(0, 0);
						float randomBoy = 0;
						
						if (float(0))
						{
							randomBoy = random(randoPoint);
						}
						float theta = radians((randomBoy + _Time.x * float(0)) * 360);
						float cs = cos(theta);
						float sn = sin(theta);
						dank = float2((dank.x - center.x) * cs - (dank.y - center.y) * sn + center.x, (dank.x - center.x) * sn + (dank.y - center.y) * cs + center.y);
						glitterAlpha = (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.x))) * (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.y)));
					}
					else
					{
						glitterAlpha = (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.x))) * (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.y)));
					}
					break;
				}
				float3 finalGlitter = 0;
				half3 glitterColor = poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				float3 norm = poiMesh.normals[1];
				float3 randomRotation = 0;
				switch(float(0))
				{
					case 0:
					
					if (float(10) > 0)
					{
						randomRotation = randomFloat3WiggleRange(randoPoint, float(72), float(10));
					}
					else
					{
						randomRotation = randomFloat3Range(randoPoint, float(72));
					}
					float3 glitterReflectionDirection = normalize(mul(poiRotationMatrixFromAngles(randomRotation), norm));
					finalGlitter = lerp(0, float(0) * glitterAlpha, glitterAlpha) + max(pow(saturate(dot(lerp(glitterReflectionDirection, poiCam.viewDir, float(0.8)), poiCam.viewDir)), float(601)), 0);
					finalGlitter *= glitterAlpha;
					break;
					case 1:
					float offset = random(randoPoint);
					float brightness = sin((_Time.x + offset) * float(10)) * float(20) - (float(20) - 1);
					finalGlitter = max(float(0) * glitterAlpha, brightness * glitterAlpha * smoothstep(0, 1, 1 - m_dist * float(0.08) * 10));
					break;
					case 2:
					if (float(10) > 0)
					{
						randomRotation = randomFloat3WiggleRange(randoPoint, float(72), float(10));
					}
					else
					{
						randomRotation = randomFloat3Range(randoPoint, float(72));
					}
					float3 glitterLightReflectionDirection = normalize(mul(poiRotationMatrixFromAngles(randomRotation), norm));
					#ifdef POI_PASS_ADD
					glitterAlpha *= poiLight.nDotLSaturated * poiLight.attenuation;
					#endif
					#ifdef UNITY_PASS_FORWARDBASE
					glitterAlpha *= poiLight.nDotLSaturated;
					#endif
					float3 halfDir = normalize(poiLight.direction + poiCam.viewDir);
					float specAngle = max(dot(halfDir, glitterLightReflectionDirection), 0.0);
					finalGlitter = lerp(0, float(0) * glitterAlpha, glitterAlpha) + max(pow(specAngle, float(601)), 0);
					glitterColor *= poiLight.directColor;
					finalGlitter *= glitterAlpha;
					break;
				}
				glitterColor *= lerp(1, poiFragData.baseColor, float(1));
				#if defined(PROP_GLITTERCOLORMAP) || !defined(OPTIMIZER_ENABLED)
				glitterColor *= POI2D_SAMPLER_PAN(_GlitterColorMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)).rgb;
				#endif
				float2 uv = remapClamped(-size, size, dank, 0, 1);
				
				if (float(0) == 1 || float(0) != 0 && !float(0))
				{
					float2 fakeUVCenter = float2(.5, .5);
					float randomBoy = 0;
					
					if (float(0))
					{
						randomBoy = random(randoPoint);
					}
					float theta = radians((randomBoy + _Time.x * float(0)) * 360);
					float cs = cos(theta);
					float sn = sin(theta);
					uv = float2((uv.x - fakeUVCenter.x) * cs - (uv.y - fakeUVCenter.y) * sn + fakeUVCenter.x, (uv.x - fakeUVCenter.x) * sn + (uv.y - fakeUVCenter.y) * cs + fakeUVCenter.y);
				}
				#if defined(PROP_GLITTERTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 glitterTexture = POI2D_SAMPLER_PAN(_GlitterTexture, _MainTex, poiUV(uv, float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 glitterTexture = 1;
				#endif
				glitterColor *= glitterTexture.rgb;
				#if defined(PROP_GLITTERMASK) || !defined(OPTIMIZER_ENABLED)
				float glitterMask = POI2D_SAMPLER_PAN(_GlitterMask, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float glitterMask = 1;
				#endif
				glitterMask *= lerp(1, poiLight.rampedLightMap, float(0));
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskGlitter != 4)
				{
					glitterMask *= blackLightMask[_BlackLightMaskGlitter];
				}
				#endif
				if (float(0))
				{
					glitterColor *= RandomColorFromPoint(random2(randoPoint.x + randoPoint.y));
				}
				
				if (float(0))
				{
					glitterColor.rgb = hueShift(glitterColor.rgb, float(0) + _Time.x * float(0));
				}
				
				if (float(0) == 1)
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, finalGlitter * glitterColor * float(40), finalGlitter * glitterTexture.a * glitterMask);
					poiFragData.emission += finalGlitter * glitterColor * max(0, (float(40) - 1) * glitterTexture.a) * glitterMask;
				}
				else
				{
					poiFragData.emission += finalGlitter * glitterColor * float(40) * glitterTexture.a * glitterMask;
				}
			}
			#endif
			//ifex float(1)==0 && float(0)==0
			#if defined(MOCHIE_PBR) || defined(POI_CLEARCOAT)
			float GSAA_Filament(float3 worldNormal, float perceptualRoughness, float gsaaVariance, float gsaaThreshold)
			{
				float3 du = ddx(worldNormal);
				float3 dv = ddy(worldNormal);
				float variance = gsaaVariance * (dot(du, du) + dot(dv, dv));
				float roughness = perceptualRoughness * perceptualRoughness;
				float kernelRoughness = min(2.0 * variance, gsaaThreshold);
				float squareRoughness = saturate(roughness * roughness + kernelRoughness);
				return sqrt(sqrt(squareRoughness));
			}
			bool SceneHasReflections()
			{
				float width, height;
				unity_SpecCube0.GetDimensions(width, height);
				return !(width * height < 2);
			}
			float3 GetWorldReflections(float3 reflDir, float3 worldPos, float roughness)
			{
				float3 baseReflDir = reflDir;
				reflDir = BoxProjection(reflDir, worldPos, unity_SpecCube0_ProbePosition, unity_SpecCube0_BoxMin, unity_SpecCube0_BoxMax);
				float4 envSample0 = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, reflDir, roughness * UNITY_SPECCUBE_LOD_STEPS);
				float3 p0 = DecodeHDR(envSample0, unity_SpecCube0_HDR);
				float interpolator = unity_SpecCube0_BoxMin.w;
				
				if (interpolator < 0.99999)
				{
					float3 refDirBlend = BoxProjection(baseReflDir, worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin, unity_SpecCube1_BoxMax);
					float4 envSample1 = UNITY_SAMPLE_TEXCUBE_SAMPLER_LOD(unity_SpecCube1, unity_SpecCube0, refDirBlend, roughness * UNITY_SPECCUBE_LOD_STEPS);
					float3 p1 = DecodeHDR(envSample1, unity_SpecCube1_HDR);
					p0 = lerp(p1, p0, interpolator);
				}
				return p0;
			}
			float3 GetReflections(in PoiCam poiCam, in PoiLight pl, in PoiMesh poiMesh, float roughness, float ForceFallback, float LightFallback, samplerCUBE reflectionCube, float3 reflectionDir)
			{
				float3 reflections = 0;
				float3 lighting = pl.finalLighting;
				if (ForceFallback == 0)
				{
					
					if (SceneHasReflections())
					{
						#ifdef UNITY_PASS_FORWARDBASE
						reflections = GetWorldReflections(reflectionDir, poiMesh.worldPos.xyz, roughness);
						#endif
					}
					else
					{
						#ifdef UNITY_PASS_FORWARDBASE
						reflections = texCUBElod(reflectionCube, float4(reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
						reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * lerp(1, pl.finalLighting, LightFallback);
						#endif
						#ifdef POI_PASS_ADD
						if (LightFallback)
						{
							reflections = texCUBElod(reflectionCube, float4(reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
							reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * pl.finalLighting;
						}
						#endif
					}
				}
				else
				{
					#ifdef UNITY_PASS_FORWARDBASE
					reflections = texCUBElod(reflectionCube, float4(reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
					reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * lerp(1, pl.finalLighting, LightFallback);
					#endif
					#ifdef POI_PASS_ADD
					if (LightFallback)
					{
						reflections = texCUBElod(reflectionCube, float4(reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
						reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * pl.finalLighting;
					}
					#endif
				}
				reflections *= pl.occlusion;
				return reflections;
			}
			float GetGGXTerm(float nDotL, float nDotV, float nDotH, float roughness)
			{
				float visibilityTerm = 0;
				if (nDotL > 0)
				{
					float rough = roughness;
					float rough2 = roughness * roughness;
					float lambdaV = nDotL * (nDotV * (1 - rough) + rough);
					float lambdaL = nDotV * (nDotL * (1 - rough) + rough);
					visibilityTerm = 0.5f / (lambdaV + lambdaL + 1e-5f);
					float d = (nDotH * rough2 - nDotH) * nDotH + 1.0f;
					float dotTerm = UNITY_INV_PI * rough2 / (d * d + 1e-7f);
					visibilityTerm *= dotTerm * UNITY_PI;
				}
				return visibilityTerm;
			}
			void GetSpecFresTerm(float nDotL, float nDotV, float nDotH, float lDotH, inout float3 specularTerm, inout float3 fresnelTerm, float3 specCol, float roughness)
			{
				specularTerm = GetGGXTerm(nDotL, nDotV, nDotH, roughness);
				fresnelTerm = FresnelTerm(specCol, lDotH);
				specularTerm = max(0, specularTerm * max(0.00001, nDotL));
			}
			float GetRoughness(float smoothness)
			{
				float rough = 1 - smoothness;
				rough *= 1.7 - 0.7 * rough;
				return rough;
			}
			#endif
			//ifex float(1)==0
			#ifdef MOCHIE_PBR
			void MochieBRDF(inout PoiFragData poiFragData, in PoiCam poiCam, inout PoiLight poiLight, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float smoothness = float(0.754);
				float smoothness2 = float(1);
				float metallic = float(0);
				float specularMask = 1;
				float reflectionMask = 1;
				#if defined(PROP_MOCHIEMETALLICMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 PRBMaps = POI2D_SAMPLER_PAN(_MochieMetallicMaps, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0).xy);
				
				if (float(0))
				{
					PRBMaps.zw = POI2D_SAMPLER_PAN(_MochieMetallicMaps, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0).xy).zw;
				}
				metallic *= PRBMaps.r;
				smoothness = (smoothness * PRBMaps.g);
				smoothness2 = (smoothness2 * PRBMaps.g);
				reflectionMask *= PRBMaps.b;
				specularMask *= PRBMaps.a;
				#endif
				reflectionMask *= float(0.181);
				specularMask *= float(0.339);
				if (float(0))
				{
					specularMask = 1 - specularMask;
				}
				if (float(0))
				{
					reflectionMask = 1 - reflectionMask;
				}
				#ifdef TPS_Penetrator
				if (float(0))
				{
					reflectionMask = lerp(0, reflectionMask * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
					specularMask = lerp(0, specularMask * TPSBufferedDepth(poiMesh.localPos, poiMesh.vertexColor), float(1));
				}
				#endif
				if (float(0))
				{
					smoothness = 1 - smoothness;
					smoothness2 = 1 - smoothness2;
				}
				float roughness = GetRoughness(smoothness);
				float roughness2 = GetRoughness(smoothness2);
				if (float(0))
				{
					metallic = 1 - metallic;
				}
				float3 specCol = lerp(unity_ColorSpaceDielectricSpec.rgb, poiFragData.baseColor, metallic);
				float omr = unity_ColorSpaceDielectricSpec.a - metallic * unity_ColorSpaceDielectricSpec.a;
				float percepRough = 1 - smoothness;
				float percepRough2 = 1 - smoothness2;
				
				if (float(1))
				{
					percepRough = GSAA_Filament(poiMesh.normals[1], percepRough, float(0.15), float(0.1));
					if (float(0) == 1 && float(1) > 0)
					{
						percepRough2 = GSAA_Filament(poiMesh.normals[1], percepRough2, float(0.15), float(0.1));
					}
				}
				float brdfRoughness = percepRough * percepRough;
				brdfRoughness = max(brdfRoughness, 0.002);
				float brdfRoughness2 = percepRough2 * percepRough2;
				brdfRoughness2 = max(brdfRoughness2, 0.002);
				float3 diffuse = poiFragData.baseColor;
				float3 specular = 0;
				float3 specular2 = 0;
				float3 vSpecular = 0;
				float3 vSpecular2 = 0;
				float3 reflections = 0;
				float3 environment = 0;
				float attenuation = min(poiLight.nDotLSaturated, lerp(poiLight.attenuation, 1, float(0)));
				float3 fresnelTerm = 1;
				float3 specularTerm = 1;
				GetSpecFresTerm(poiLight.nDotL, poiLight.nDotV, poiLight.nDotH, poiLight.lDotH, specularTerm, fresnelTerm, specCol, brdfRoughness);
				specular = poiLight.directColor * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, float4(1,1,1,1), float(0)) * poiLight.occlusion * attenuation;
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				for (int index = 0; index < 4; index++)
				{
					fresnelTerm = 1;
					specularTerm = 1;
					GetSpecFresTerm(poiLight.vDotNL[index], poiLight.nDotV, poiLight.vDotNH[index], poiLight.vDotLH[index], specularTerm, fresnelTerm, specCol, brdfRoughness);
					vSpecular += poiLight.vColor[index] * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, float4(1,1,1,1), float(0)) * poiLight.occlusion * poiLight.vAttenuation[index];
				}
				#endif
				if (float(0) == 1)
				{
					float3 fresnelTerm = 1;
					float3 specularTerm = 1;
					GetSpecFresTerm(poiLight.nDotL, poiLight.nDotV, poiLight.nDotH, poiLight.lDotH, specularTerm, fresnelTerm, specCol, brdfRoughness2);
					specular2 = poiLight.directColor * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, float4(1,1,1,1), float(0)) * poiLight.occlusion * attenuation * float(1);
					#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
					for (int index = 0; index < 4; index++)
					{
						fresnelTerm = 1;
						specularTerm = 1;
						GetSpecFresTerm(poiLight.vDotNL[index], poiLight.nDotV, poiLight.vDotNH[index], poiLight.vDotLH[index], specularTerm, fresnelTerm, specCol, brdfRoughness2);
						vSpecular2 += poiLight.vColor[index] * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, float4(1,1,1,1), float(0)) * poiLight.occlusion * poiLight.vAttenuation[index] * float(1);
					}
					#endif
				}
				float surfaceReduction = (1.0 / (brdfRoughness * brdfRoughness + 1.0));
				float grazingTerm = saturate(smoothness + (1 - omr));
				float3 reflCol = GetReflections(poiCam, poiLight, poiMesh, roughness, float(0), float(0), _MochieReflCube, poiCam.reflectionDir);
				reflections = surfaceReduction * reflCol * lerp(1, FresnelLerp(specCol, grazingTerm, poiLight.nDotV), float(1));
				reflections *= poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				reflections *= reflectionMask;
				#ifdef POI_PASS_ADD
				reflections *= poiLight.attenuation;
				#endif
				diffuse = lerp(diffuse, diffuse * omr, reflectionMask);
				environment = max(specular + vSpecular, specular2 + vSpecular2);
				environment += reflections;
				diffuse *= poiLight.finalLighting;
				poiFragData.finalColor = diffuse;
				poiLight.finalLightAdd += environment;
			}
			#endif
			//ifex float(1)==0
			#ifdef POI_IRIDESCENCE
			float3 calculateNormal(PoiMesh poiMesh, float3 baseNormal)
			{
				float3 normal = baseNormal;
				#if defined(PROP_IRIDESCENCENORMALMAP) || !defined(OPTIMIZER_ENABLED)
				normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_IridescenceNormalMap, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)), float(1));
				normal = normalize(normal.x * poiMesh.tangent + normal.y * poiMesh.binormal + normal.z * baseNormal);
				#endif
				return normal;
			}
			void applyIridescence(inout PoiFragData poiFragData, PoiMesh poiMesh, PoiCam poiCam, inout PoiMods poiMods)
			{
				float3 normal = poiMesh.normals[float(1)];
				if (float(0))
				{
					normal = calculateNormal(poiMesh, normal);
				}
				float ndotv = dot(normal, poiCam.viewDir);
				float4 iridescenceColor = 1;
				#if defined(PROP_IRIDESCENCERAMP) || !defined(OPTIMIZER_ENABLED)
				iridescenceColor = UNITY_SAMPLE_TEX2D_SAMPLER(_IridescenceRamp, _MainTex, (1 - abs(ndotv)) * float4(1,1,0,0).xy + float4(0,0,0,0) * _Time.x + float4(1,1,0,0).zw);
				if (float(1) == 1)
				{
					float hue = _IridescenceHueShift + frac(_Time.x * float(0));
					iridescenceColor.rgb = hueShift(iridescenceColor.rgb, hue);
				}
				#endif
				float iridescenceMask = 1;
				#if defined(PROP_IRIDESCENCEMASK) || !defined(OPTIMIZER_ENABLED)
				iridescenceMask = POI2D_SAMPLER_PAN(_IridescenceMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#endif
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskIridescence != 4)
				{
					iridescenceMask *= blackLightMask[_BlackLightMaskIridescence];
				}
				#endif
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, saturate(iridescenceColor.rgb * _IridescenceIntensity), iridescenceColor.a * float(0) * iridescenceMask);
				poiFragData.baseColor.rgb += saturate(iridescenceColor.rgb * _IridescenceIntensity * iridescenceColor.a * float(0.036) * iridescenceMask);
				poiFragData.baseColor.rgb *= saturate(lerp(1, iridescenceColor.rgb * _IridescenceIntensity, iridescenceColor.a * float(0.106) * iridescenceMask));
				float emissionStrength = float(0);
				#ifdef POI_AUDIOLINK
				if (any(float4(0,0,0,0)))
				{
					emissionStrength += lerp(float4(0,0,0,0).x, float4(0,0,0,0).y, poiMods.audioLink[float(0)]);
				}
				#endif
				poiFragData.emission += saturate(iridescenceColor.rgb * _IridescenceIntensity) * iridescenceColor.a * iridescenceMask * emissionStrength;
			}
			#endif
			float4 frag(v2f i, uint facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				PoiVertexLights poiVertexLights;
				PoiInitStruct(PoiVertexLights, poiVertexLights);
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				poiMods.globalEmission = 1;
				PoiFragData poiFragData;
				poiFragData.emission = 0;
				poiFragData.baseColor = float3(0, 0, 0);
				poiFragData.finalColor = float3(0, 0, 0);
				poiFragData.alpha = 1;
				#ifdef POI_UDIMDISCARD
				applyUDIMDiscard(i);
				#endif
				poiMesh.objectPosition = i.objectPos;
				poiMesh.objNormal = i.objNormal;
				poiMesh.normals[0] = i.normal;
				poiMesh.tangent = i.tangent;
				poiMesh.binormal = i.binormal;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.localPos = i.localPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				poiMesh.isFrontFace = facing;
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent *= -1;
					poiMesh.binormal *= -1;
				}
				#endif
				poiCam.viewDir = !IsOrthographicCamera() ? normalize(_WorldSpaceCameraPos - i.worldPos.xyz) : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				float3 tanToWorld0 = float3(i.tangent.x, i.binormal.x, i.normal.x);
				float3 tanToWorld1 = float3(i.tangent.y, i.binormal.y, i.normal.y);
				float3 tanToWorld2 = float3(i.tangent.z, i.binormal.z, i.normal.z);
				float3 ase_tanViewDir = tanToWorld0 * poiCam.viewDir.x + tanToWorld1 * poiCam.viewDir.y + tanToWorld2 * poiCam.viewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0];
				poiMesh.uv[1] = i.uv[1];
				poiMesh.uv[2] = i.uv[2];
				poiMesh.uv[3] = i.uv[3];
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.worldPos.xz;
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				float2 mainUV = poiMesh.uv[float(1)].xy;
				if (float(0))
				{
					mainUV = sharpSample(_MainTex_TexelSize, mainUV);
				}
				float4 mainTexture = UNITY_SAMPLE_TEX2D(_MainTex, poiUV(mainUV, _MainTex_ST) + _Time.x * float4(0,0,0,0));
				float3 mainNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_BumpMap, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
				poiMesh.tangentSpaceNormal = mainNormal;
				//ifex float(1)==0
				#if defined(FINALPASS) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				ApplyDetailNormal(poiMods, poiMesh);
				#endif
				//ifex float(1)==0
				#if defined(GEOM_TYPE_MESH) && defined(VIGNETTE) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				calculateRGBNormals(poiMesh);
				#endif
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent.xyz +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				float3 fancyNormal = UnpackNormal(float4(0.5, 0.5, 1, 1));
				poiMesh.normals[0] = normalize(
				fancyNormal.x * poiMesh.tangent.xyz +
				fancyNormal.y * poiMesh.binormal +
				fancyNormal.z * poiMesh.normals[0]
				);
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = _WorldSpaceCameraPos;
				poiCam.reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				poiCam.vertexReflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[0]);
				poiCam.distanceToVert = distance(poiMesh.worldPos, poiCam.worldPos);
				poiCam.grabPos = i.grabPos;
				poiCam.screenUV = calcScreenUVs(i.grabPos);
				poiCam.vDotN = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.clipPos = i.pos;
				poiCam.worldDirection = i.worldDirection;
				calculateGlobalThemes(poiMods);
				//ifex float(1)==0
				#ifdef POI_AUDIOLINK
				SetupAudioLink(poiFragData, poiMods, poiMesh);
				#endif
				poiLight.finalLightAdd = 0;
				#if defined(PROP_LIGHTINGAOMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 AOMaps = POI2D_SAMPLER_PAN(_LightingAOMaps, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				poiLight.occlusion = lerp(1, AOMaps.r, float(1)) * lerp(1, AOMaps.g, float(0)) * lerp(1, AOMaps.b, float(0)) * lerp(1, AOMaps.a, float(0));
				#else
				poiLight.occlusion = 1;
				#endif
				#if defined(PROP_LIGHTINGDETAILSHADOWMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 DetailShadows = POI2D_SAMPLER_PAN(_LightingDetailShadowMaps, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#ifndef POI_PASS_ADD
				poiLight.detailShadow = lerp(1, DetailShadows.r, float(1)) * lerp(1, DetailShadows.g, float(0)) * lerp(1, DetailShadows.b, float(0)) * lerp(1, DetailShadows.a, float(0));
				#else
				poiLight.detailShadow = lerp(1, DetailShadows.r, float(1)) * lerp(1, DetailShadows.g, float(0)) * lerp(1, DetailShadows.b, float(0)) * lerp(1, DetailShadows.a, float(0));
				#endif
				#else
				poiLight.detailShadow = 1;
				#endif
				#if defined(PROP_LIGHTINGSHADOWMASKS) || !defined(OPTIMIZER_ENABLED)
				float4 ShadowMasks = POI2D_SAMPLER_PAN(_LightingShadowMasks, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				poiLight.shadowMask = lerp(1, ShadowMasks.r, float(1)) * lerp(1, ShadowMasks.g, float(0)) * lerp(1, ShadowMasks.b, float(0)) * lerp(1, ShadowMasks.a, float(0));
				#else
				poiLight.shadowMask = 1;
				#endif
				#ifdef UNITY_PASS_FORWARDBASE
				bool lightExists = false;
				if (any(_LightColor0.rgb >= 0.002))
				{
					lightExists = true;
				}
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float4 toLightX = unity_4LightPosX0 - i.worldPos.x;
				float4 toLightY = unity_4LightPosY0 - i.worldPos.y;
				float4 toLightZ = unity_4LightPosZ0 - i.worldPos.z;
				float4 lengthSq = 0;
				lengthSq += toLightX * toLightX;
				lengthSq += toLightY * toLightY;
				lengthSq += toLightZ * toLightZ;
				float4 lightAttenSq = unity_4LightAtten0;
				float4 atten = 1.0 / (1.0 + lengthSq * lightAttenSq);
				float4 vLightWeight = saturate(1 - (lengthSq * lightAttenSq / 25));
				poiLight.vAttenuation = min(atten, vLightWeight * vLightWeight);
				poiLight.vDotNL = 0;
				poiLight.vDotNL += toLightX * poiMesh.normals[1].x;
				poiLight.vDotNL += toLightY * poiMesh.normals[1].y;
				poiLight.vDotNL += toLightZ * poiMesh.normals[1].z;
				float4 corr = rsqrt(lengthSq);
				poiLight.vertexVDotNL = max(0, poiLight.vDotNL * corr);
				poiLight.vertexVDotNL = 0;
				poiLight.vertexVDotNL += toLightX * poiMesh.normals[0].x;
				poiLight.vertexVDotNL += toLightY * poiMesh.normals[0].y;
				poiLight.vertexVDotNL += toLightZ * poiMesh.normals[0].z;
				poiLight.vertexVDotNL = max(0, poiLight.vDotNL * corr);
				poiLight.vAttenuationDotNL = saturate(poiLight.vAttenuation * saturate(poiLight.vDotNL));
				for (int index = 0; index < 4; index++)
				{
					poiLight.vPosition[index] = float3(unity_4LightPosX0[index], unity_4LightPosY0[index], unity_4LightPosZ0[index]);
					float3 vertexToLightSource = poiLight.vPosition[index] - poiMesh.worldPos;
					poiLight.vDirection[index] = normalize(vertexToLightSource);
					poiLight.vColor[index] = unity_LightColor[index].rgb;
					poiLight.vHalfDir[index] = Unity_SafeNormalize(poiLight.vDirection[index] + poiCam.viewDir);
					poiLight.vDotNL[index] = dot(poiMesh.normals[1], -poiLight.vDirection[index]);
					poiLight.vCorrectedDotNL[index] = .5 * (poiLight.vDotNL[index] + 1);
					poiLight.vDotLH[index] = saturate(dot(poiLight.vDirection[index], poiLight.vHalfDir[index]));
					poiLight.vDotNH[index] = dot(poiMesh.normals[1], poiLight.vHalfDir[index]);
					poiLight.vertexVDotNH[index] = saturate(dot(poiMesh.normals[0], poiLight.vHalfDir[index]));
				}
				#endif
				if (float(0) == 0) // Poi Custom Light Color
				{
					float3 magic = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
					float3 normalLight = _LightColor0.rgb + BetterSH9(float4(0, 0, 0, 1));
					float magiLumi = calculateluminance(magic);
					float normaLumi = calculateluminance(normalLight);
					float maginormalumi = magiLumi + normaLumi;
					float magiratio = magiLumi / maginormalumi;
					float normaRatio = normaLumi / maginormalumi;
					float target = calculateluminance(magic * magiratio + normalLight * normaRatio);
					float3 properLightColor = magic + normalLight;
					float properLuminance = calculateluminance(magic + normalLight);
					poiLight.directColor = properLightColor * max(0.0001, (target / properLuminance));
					poiLight.indirectColor = BetterSH9(float4(lerp(0, poiMesh.normals[1], float(0)), 1));
				}
				if (float(0) == 1) // More standard approach to light color
				{
					float3 indirectColor = BetterSH9(float4(poiMesh.normals[1], 1));
					if (lightExists)
					{
						poiLight.directColor = _LightColor0.rgb;
						poiLight.indirectColor = indirectColor;
					}
					else
					{
						poiLight.directColor = indirectColor * 0.6;
						poiLight.indirectColor = indirectColor * 0.5;
					}
				}
				if (float(0) == 2) // UTS style
				{
					poiLight.indirectColor = saturate(max(half3(0.05, 0.05, 0.05) * float(1), max(ShadeSH9(half4(0.0, 0.0, 0.0, 1.0)), ShadeSH9(half4(0.0, -1.0, 0.0, 1.0)).rgb) * float(1)));
					poiLight.directColor = max(poiLight.indirectColor, _LightColor0.rgb);
				}
				if (float(0) == 3) // OpenLit
				{
					float3 lightDirectionForSH9 = OpenLitLightingDirection();
					OpenLitShadeSH9ToonDouble(lightDirectionForSH9, poiLight.directColor, poiLight.indirectColor);
					poiLight.directColor += _LightColor0.rgb;
				}
				float lightMapMode = float(0);
				if (float(0) == 0)
				{
					poiLight.direction = _WorldSpaceLightPos0.xyz + unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz;
				}
				if (float(0) == 1 || float(0) == 2)
				{
					if (float(0) == 1)
					{
						poiLight.direction = mul(unity_ObjectToWorld, float4(0,0,0,1)).xyz;;
					}
					if (float(0) == 2)
					{
						poiLight.direction = float4(0,0,0,1);
					}
					if (lightMapMode == 0)
					{
						lightMapMode == 1;
					}
				}
				if (float(0) == 3) // UTS
				{
					float3 defaultLightDirection = normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
					float3 lightDirection = normalize(lerp(defaultLightDirection, _WorldSpaceLightPos0.xyz, any(_WorldSpaceLightPos0.xyz)));
					poiLight.direction = lightDirection;
				}
				if (float(0) == 4) // OpenLit
				{
					poiLight.direction = OpenLitLightingDirection(); // float4 customDir = 0; // Do we want to give users to alter this (OpenLit always does!)?
				}
				if (!any(poiLight.direction))
				{
					poiLight.direction = float3(.4, 1, .4);
				}
				poiLight.direction = normalize(poiLight.direction);
				poiLight.attenuationStrength = float(0);
				poiLight.attenuation = 1;
				if (!all(_LightColor0.rgb == 0.0))
				{
					UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
					poiLight.attenuation *= attenuation;
				}
				if (!any(poiLight.directColor) && !any(poiLight.indirectColor) && lightMapMode == 0)
				{
					lightMapMode = 1;
					if (float(0) == 0)
					{
						poiLight.direction = normalize(float3(.4, 1, .4));
					}
				}
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.vertexNDotL = dot(poiMesh.normals[0], poiLight.direction);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.vertexNDotV = abs(dot(poiMesh.normals[0], poiCam.viewDir));
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.vertexNDotH = max(0.00001, dot(poiMesh.normals[0], poiLight.halfDir));
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = max(0.00001, dot(poiLight.direction, poiLight.halfDir));
				if (lightMapMode == 0)
				{
					float3 ShadeSH9Plus = GetSHLength();
					float3 ShadeSH9Minus = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
					float3 greyScaleVector = float3(.33333, .33333, .33333);
					float bw_lightColor = dot(poiLight.directColor, greyScaleVector);
					float bw_directLighting = (((poiLight.nDotL * 0.5 + 0.5) * bw_lightColor * lerp(1, poiLight.attenuation, poiLight.attenuationStrength)) + dot(ShadeSH9(float4(poiMesh.normals[1], 1)), greyScaleVector));
					float bw_bottomIndirectLighting = dot(ShadeSH9Minus, greyScaleVector);
					float bw_topIndirectLighting = dot(ShadeSH9Plus, greyScaleVector);
					float lightDifference = ((bw_topIndirectLighting + bw_lightColor) - bw_bottomIndirectLighting);
					poiLight.lightMap = smoothstep(0, lightDifference, bw_directLighting - bw_bottomIndirectLighting) * poiLight.detailShadow;
				}
				if (lightMapMode == 1)
				{
					poiLight.lightMap = poiLight.nDotLNormalized * lerp(1, poiLight.attenuation, poiLight.attenuationStrength);
				}
				if (lightMapMode == 2)
				{
					poiLight.lightMap = poiLight.nDotLSaturated * lerp(1, poiLight.attenuation, poiLight.attenuationStrength);
				}
				poiLight.directColor = max(poiLight.directColor, 0.0001);
				poiLight.indirectColor = max(poiLight.indirectColor, 0.0001);
				if (float(0) == 3)
				{
					poiLight.directColor = max(poiLight.directColor, float(0));
					poiLight.indirectColor = max(poiLight.indirectColor, float(0));
				}
				else
				{
					poiLight.directColor = max(poiLight.directColor, poiLight.directColor / max(0.0001, (calculateluminance(poiLight.directColor) / float(0))));
					poiLight.indirectColor = max(poiLight.indirectColor, poiLight.indirectColor / max(0.0001, (calculateluminance(poiLight.indirectColor) / float(0))));
				}
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), float(0));
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), float(0));
				if (float(1))
				{
					poiLight.directColor = min(poiLight.directColor, float(1));
					poiLight.indirectColor = min(poiLight.indirectColor, float(1));
				}
				if (float(0))
				{
					poiLight.directColor = poiThemeColor(poiMods, float4(1,1,1,1), float(0));
				}
				#ifdef UNITY_PASS_FORWARDBASE
				poiLight.directColor = max(poiLight.directColor * float(1), 0);
				poiLight.directColor = max(poiLight.directColor + float(0), 0);
				poiLight.indirectColor = max(poiLight.indirectColor * float(1), 0);
				poiLight.indirectColor = max(poiLight.indirectColor + float(0), 0);
				#endif
				#endif
				#ifdef POI_PASS_ADD
				#if defined(POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE) && defined(DIRECTIONAL)
				return float4(mainTexture.rgb * .0001, 1);
				#endif
				#if defined(POINT) || defined(SPOT)
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz - i.worldPos.xyz);
				#ifdef POINT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(i, poiMesh.worldPos);
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1)).xyz;
				poiLight.attenuation = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(i, poiMesh.worldPos);
				unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1));
				poiLight.attenuation = (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#else
				poiLight.direction = _WorldSpaceLightPos0.xyz;
				UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
				poiLight.additiveShadow == 0;
				poiLight.attenuation = attenuation;
				#endif
				poiLight.directColor = float(0) ? min(float(1), _LightColor0.rgb) : _LightColor0.rgb;
				#if defined(POINT_COOKIE) || defined(DIRECTIONAL_COOKIE)
				poiLight.indirectColor = 0;
				#else
				poiLight.indirectColor = lerp(0, poiLight.directColor, float(0.5));
				#endif
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), float(0));
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), float(0));
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				poiLight.vertexNDotL = dot(poiMesh.normals[0], poiLight.direction);
				poiLight.vertexNDotV = abs(dot(poiMesh.normals[0], poiCam.viewDir));
				poiLight.vertexNDotH = max(0.00001, dot(poiMesh.normals[0], poiLight.halfDir));
				poiLight.lightMap = 1;
				#endif
				poiFragData.baseColor = mainTexture.rgb * poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0));
				poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				//ifex float(1)==0
				#ifdef COLOR_GRADING_HDR
				#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 hueShiftAlpha = POI2D_SAMPLER_PAN(_MainColorAdjustTexture, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 hueShiftAlpha = 1;
				#endif
				if (float(1))
				{
					float shift = _MainHueShift;
					#ifdef POI_AUDIOLINK
					if (poiMods.audioLinkAvailable && float(0))
					{
						shift += AudioLinkGetChronoTime(float(0), float(0)) * float(1);
					}
					#endif
					if (float(0))
					{
						poiFragData.baseColor = lerp(poiFragData.baseColor, hueShift(poiFragData.baseColor, shift + float(0) * _Time.x), hueShiftAlpha.r);
					}
					else
					{
						poiFragData.baseColor = hueShift(poiFragData.baseColor, frac((shift - (1 - hueShiftAlpha.r) + float(0) * _Time.x)));
					}
				}
				poiFragData.baseColor = lerp(poiFragData.baseColor, dot(poiFragData.baseColor, float3(0.3, 0.59, 0.11)), -_Saturation * hueShiftAlpha.b);
				poiFragData.baseColor = saturate(poiFragData.baseColor + _MainBrightness * hueShiftAlpha.g);
				#endif
				#if defined(PROP_CLIPPINGMASK) || !defined(OPTIMIZER_ENABLED)
				float alphaMask = POI2D_SAMPLER_PAN(_ClippingMask, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)).r;
				if (float(0))
				{
					alphaMask = 1 - alphaMask;
				}
				#else
				float alphaMask = 1;
				#endif
				poiFragData.alpha *= alphaMask;
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				//ifex float(1)==0
				#ifdef FINALPASS
				ApplyDetailColor(poiFragData, poiMesh, poiMods);
				#endif
				//ifex float(1)==0
				#ifdef VIGNETTE
				calculateRGBMask(poiFragData, poiMesh, poiMods);
				#endif
				#if defined(GEOM_TYPE_BRANCH) || defined(GEOM_TYPE_BRANCH_DETAIL) || defined(GEOM_TYPE_FROND) || defined(DEPTH_OF_FIELD_COC_VIEW)
				applyDecals(poiFragData, poiMesh, poiCam, poiMods, poiLight);
				#endif
				//ifex float(1)==0
				#if defined(_LIGHTINGMODE_SHADEMAP) && defined(VIGNETTE_MASKED)
				#ifndef POI_PASS_OUTLINE
				#ifdef _LIGHTINGMODE_SHADEMAP
				applyShadeMapping(poiFragData, poiMesh, poiLight);
				#endif
				#endif
				#endif
				//ifex float(1)==0
				#ifdef VIGNETTE_MASKED
				#ifdef POI_PASS_OUTLINE
				if (_OutlineLit)
				{
					calculateShading(poiLight, poiFragData, poiMesh, poiCam);
				}
				else
				{
					poiLight.finalLighting = 1;
				}
				#else
				calculateShading(poiLight, poiFragData, poiMesh, poiCam);
				#endif
				#else
				poiLight.finalLighting = 1;
				poiLight.rampedLightMap = poiEdgeNonLinear(poiLight.nDotL, 0.1, .1);
				//ifex float(1)==0
				#endif
				//ifex float(1)==0
				#ifdef POI_AUDIOLINK
				#ifdef POI_AL_DECAL
				ApplyAudioLinkDecal(poiMesh, poiFragData, poiMods);
				#endif
				#endif
				//ifex float(1)==0
				#ifdef _GLOSSYREFLECTIONS_OFF
				ApplyRimLighting(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				//ifex float(1)==0
				#ifdef _SUNDISK_SIMPLE
				applyGlitter(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				//ifex float(1)==0
				#ifdef POI_IRIDESCENCE
				applyIridescence(poiFragData, poiMesh, poiCam, poiMods);
				#endif
				if (float(0))
				{
					poiFragData.baseColor *= saturate(poiFragData.alpha);
				}
				poiFragData.finalColor = poiFragData.baseColor;
				poiFragData.finalColor = poiFragData.baseColor * poiLight.finalLighting;
				//ifex float(1)==0
				#ifdef MOCHIE_PBR
				MochieBRDF(poiFragData, poiCam, poiLight, poiMesh, poiMods);
				#endif
				if (float(0) == 0)
				{
					UNITY_APPLY_FOG(i.fogCoord, poiFragData.finalColor);
				}
				poiFragData.alpha = float(0) ? 1 : poiFragData.alpha;
				poiFragData.finalColor += poiLight.finalLightAdd;
				if (float(0) == POI_MODE_OPAQUE)
				{
					poiFragData.alpha = 1;
				}
				clip(poiFragData.alpha - float(0.5));
				if (float(0) == 4)
				{
					poiFragData.alpha = saturate(poiFragData.alpha * float(10));
				}
				if (float(0) != POI_MODE_TRANSPARENT)
				{
					poiFragData.finalColor *= poiFragData.alpha;
				}
				return float4(poiFragData.finalColor, poiFragData.alpha) + POI_SAFE_RGB0;
			}
			ENDCG
		}
		Pass
		{
			Tags { "LightMode" = "ShadowCaster" }
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				//ifex _StencilType == 1
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			ZWrite [_ZWrite]
			Cull [_Cull]
			AlphaToMask Off
			ZTest [_ZTest]
			ColorMask [_ColorMask]
			Offset [_OffsetFactor], [_OffsetUnits]
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend]
			CGPROGRAM
 #define OPTIMIZER_ENABLED 
 #define COLOR_GRADING_HDR 
 #define DEPTH_OF_FIELD_COC_VIEW 
 #define FINALPASS 
 #define GEOM_TYPE_BRANCH 
 #define GEOM_TYPE_BRANCH_DETAIL 
 #define GEOM_TYPE_FROND 
 #define MOCHIE_PBR 
 #define POI_AL_DECAL 
 #define POI_AUDIOLINK 
 #define POI_IRIDESCENCE 
 #define POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE 
 #define POI_LIGHT_DATA_ADDITIVE_ENABLE 
 #define POI_VERTEXLIGHT_ON 
 #define VIGNETTE 
 #define VIGNETTE_MASKED 
 #define _GLOSSYREFLECTIONS_OFF 
 #define _LIGHTINGMODE_TEXTURERAMP 
 #define _RIMSTYLE_POIYOMI 
 #define _SUNDISK_SIMPLE 
 #define PROP_DETAILMASK 
 #define PROP_DETAILTEX 
 #define PROP_RGBMASK 
 #define PROP_REDTEXTURE 
 #define PROP_DECALMASK 
 #define PROP_DECALTEXTURE 
 #define PROP_DECALTEXTURE1 
 #define PROP_DECALTEXTURE2 
 #define PROP_DECALTEXTURE3 
 #define PROP_RIMMASK 
 #define PROP_SET_RIMLIGHTMASK 
 #define PROP_MOCHIEMETALLICMAPS 
 #define PROP_GLITTERCOLORMAP 
 #define PROP_IRIDESCENCERAMP 
 #define PROP_IRIDESCENCEMASK 
 #define PROP_ALDECALCOLORMASK 
			#pragma target 5.0
			#pragma skip_variants LIGHTMAP_ON DYNAMICLIGHTMAP_ON LIGHTMAP_SHADOW_MIXING SHADOWS_SHADOWMASK DIRLIGHTMAP_COMBINED _MIXED_LIGHTING_SUBTRACTIVE
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			//ifex float(1)==0
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_instancing
			#pragma multi_compile_shadowcaster
			#pragma multi_compile_fog
			#define POI_PASS_SHADOW
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"
			#include "UnityPBSLighting.cginc"
			#ifdef POI_PASS_META
			#include "UnityMetaPass.cginc"
			#endif
			#pragma vertex vert
			#pragma fragment frag
			#define DielectricSpec float4(0.04, 0.04, 0.04, 1.0 - 0.04)
			#define PI float(3.14159265359)
			#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan))
			#define POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, ddx, ddy) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan, ddx, ddy))
			#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_PAN(tex, uv, pan) (tex2D(tex, uv + _Time.x * pan))
			#define POI2D(tex, uv) (tex2D(tex, uv))
			#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
			#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, uv + _Time.x * pan))
			#define POI2D_MAINTEX_SAMPLER_PAN_INLINED(tex, poiMesh) (POI2D_SAMPLER_PAN(tex, _MainTex, poiUV(poiMesh.uv[tex##UV], tex##_ST), tex##Pan))
			#define POI_SAFE_RGB0 float4(mainTexture.rgb * .0001, 0)
			#define POI_SAFE_RGB1 float4(mainTexture.rgb * .0001, 1)
			#define POI_SAFE_RGBA mainTexture
			#if defined(UNITY_COMPILER_HLSL)
			#define PoiInitStruct(type, name) name = (type)0;
			#else
			#define PoiInitStruct(type, name)
			#endif
			#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
			#define POI_MODE_OPAQUE 0
			#define POI_MODE_CUTOUT 1
			#define POI_MODE_FADE 2
			#define POI_MODE_TRANSPARENT 3
			#define POI_MODE_ADDITIVE 4
			#define POI_MODE_SOFTADDITIVE 5
			#define POI_MODE_MULTIPLICATIVE 6
			#define POI_MODE_2XMULTIPLICATIVE 7
			#define POI_MODE_TRANSCLIPPING 9
			//ifex float(1)==0
			#define ALPASS_DFT                      uint2(0,4)   //Size: 128, 2
			#define ALPASS_WAVEFORM                 uint2(0,6)   //Size: 128, 16
			#define ALPASS_AUDIOLINK                uint2(0,0)   //Size: 128, 4
			#define ALPASS_AUDIOBASS                uint2(0,0)   //Size: 128, 1
			#define ALPASS_AUDIOLOWMIDS             uint2(0,1)   //Size: 128, 1
			#define ALPASS_AUDIOHIGHMIDS            uint2(0,2)   //Size: 128, 1
			#define ALPASS_AUDIOTREBLE              uint2(0,3)   //Size: 128, 1
			#define ALPASS_AUDIOLINKHISTORY         uint2(1,0)   //Size: 127, 4
			#define ALPASS_GENERALVU                uint2(0,22)  //Size: 12, 1
			#define ALPASS_CCINTERNAL               uint2(12,22) //Size: 12, 2
			#define ALPASS_CCCOLORS                 uint2(25,22) //Size: 11, 1
			#define ALPASS_CCSTRIP                  uint2(0,24)  //Size: 128, 1
			#define ALPASS_CCLIGHTS                 uint2(0,25)  //Size: 128, 2
			#define ALPASS_AUTOCORRELATOR           uint2(0,27)  //Size: 128, 1
			#define ALPASS_GENERALVU_INSTANCE_TIME  uint2(2,22)
			#define ALPASS_GENERALVU_LOCAL_TIME     uint2(3,22)
			#define ALPASS_GENERALVU_NETWORK_TIME   uint2(4,22)
			#define ALPASS_GENERALVU_PLAYERINFO     uint2(6,22)
			#define ALPASS_FILTEREDAUDIOLINK        uint2(0,28)  //Size: 16, 4
			#define ALPASS_CHRONOTENSITY            uint2(16,28) //Size: 8, 4
			#define ALPASS_THEME_COLOR0             uint2(0,23)
			#define ALPASS_THEME_COLOR1             uint2(1,23)
			#define ALPASS_THEME_COLOR2             uint2(2,23)
			#define ALPASS_THEME_COLOR3             uint2(3,23)
			#define ALPASS_FILTEREDVU               uint2(24,28) //Size: 4, 4
			#define ALPASS_FILTEREDVU_INTENSITY     uint2(24,28) //Size: 4, 1
			#define ALPASS_FILTEREDVU_MARKER        uint2(24,29) //Size: 4, 1
			#define AUDIOLINK_SAMPHIST              3069        // Internal use for algos, do not change.
			#define AUDIOLINK_SAMPLEDATA24          2046
			#define AUDIOLINK_EXPBINS               24
			#define AUDIOLINK_EXPOCT                10
			#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
			#define AUDIOLINK_WIDTH                 128
			#define AUDIOLINK_SPS                   48000       // Samples per second
			#define AUDIOLINK_ROOTNOTE              0
			#define AUDIOLINK_4BAND_FREQFLOOR       0.123
			#define AUDIOLINK_4BAND_FREQCEILING     1
			#define AUDIOLINK_BOTTOM_FREQUENCY      13.75
			#define AUDIOLINK_BASE_AMPLITUDE        2.5
			#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
			#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
			#define AUDIOLINK_DFT_Q                 4.0
			#define AUDIOLINK_TREBLE_CORRECTION     5.0
			#define COLORCHORD_EMAXBIN              192
			#define COLORCHORD_IIR_DECAY_1          0.90
			#define COLORCHORD_IIR_DECAY_2          0.85
			#define COLORCHORD_CONSTANT_DECAY_1     0.01
			#define COLORCHORD_CONSTANT_DECAY_2     0.0
			#define COLORCHORD_NOTE_CLOSEST         3.0
			#define COLORCHORD_NEW_NOTE_GAIN        8.0
			#define COLORCHORD_MAX_NOTES            10
			#ifndef glsl_mod
			#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
			#endif
			uniform float4               _AudioTexture_TexelSize;
			#ifdef SHADER_TARGET_SURFACE_ANALYSIS
			#define AUDIOLINK_STANDARD_INDEXING
			#endif
			#ifdef AUDIOLINK_STANDARD_INDEXING
			sampler2D _AudioTexture;
			#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
			#else
			uniform Texture2D<float4> _AudioTexture;
			SamplerState sampler_AudioTexture;
			#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
			#endif
			uniform sampler2D _Stored;
			uniform float4 _Stored_TexelSize;
			#define LumaData(x,y) tex2Dlod(_Stored, float4(x, y, 0, 0))
			float _Mode;
			float _StereoEnabled;
			float _PolarUV;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _PanoUseBothEyes;
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			float _AudioLinkDelay;
			float _AudioLinkAnimToggle;
			float _DebugWaveform;
			float _DebugDFT;
			float _DebugBass;
			float _DebugLowMids;
			float _DebugHighMids;
			float _DebugTreble;
			float _DebugCCColors;
			float _DebugCCStrip;
			float _DebugCCLights;
			float _DebugAutocorrelator;
			float _DebugChronotensity;
			float _AudioLinkCCStripY;
			#endif
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			float _AddBlendOp;
			float4 _Color;
			float _ColorThemeIndex;
			UNITY_DECLARE_TEX2D(_MainTex);
			UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
			float _MainPixelMode;
			float4 _MainTex_ST;
			float2 _MainTexPan;
			float _MainTexUV;
			float4 _MainTex_TexelSize;
			Texture2D _BumpMap;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			Texture2D _ClippingMask;
			float4 _ClippingMask_ST;
			float2 _ClippingMaskPan;
			float _ClippingMaskUV;
			float _Inverse_Clipping;
			float _Cutoff;
			//ifex float(1)==0
			float _MainColorAdjustToggle;
			#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MainColorAdjustTexture;
			#endif
			float4 _MainColorAdjustTexture_ST;
			float2 _MainColorAdjustTexturePan;
			float _MainColorAdjustTextureUV;
			float _MainHueShiftToggle;
			float _MainHueShiftReplace;
			float _MainHueShift;
			float _MainHueShiftSpeed;
			float _Saturation;
			float _MainBrightness;
			float _MainHueALCTEnabled;
			float _MainALHueShiftBand;
			float _MainALHueShiftCTIndex;
			float _MainHueALMotionSpeed;
			SamplerState sampler_linear_clamp;
			SamplerState sampler_linear_repeat;
			float _AlphaForceOpaque;
			float _AlphaMod;
			float _AlphaPremultiply;
			float _AlphaBoostFA;
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			#ifdef POI_AL_DECAL
			float _ALDecalUV;
			float4 _ALUVScale;
			float2 _ALUVPosition;
			float _ALUVRotation;
			float _ALUVRotationSpeed;
			float4 _ALDecaldCircleDimensions;
			float _ALDecalUVMode;
			float _ALDecalVolumeStep;
			float _ALDecalVolumeClipMin;
			float _ALDecalVolumeClipMax;
			float _ALDecalBandStep;
			float _ALDecalBandClipMin;
			float _ALDecalBandClipMax;
			float _ALDecalShapeClip;
			float _ALDecalShapeClipVolumeWidth;
			float _ALDecalShapeClipBandWidth;
			#if defined(PROP_ALDECALCOLORMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ALDecalColorMask;
			float4 _ALDecalColorMask_ST;
			float2 _ALDecalColorMaskPan;
			float _ALDecalColorMaskUV;
			#endif
			float _ALDecalVolume;
			float _ALDecalBaseBoost;
			float _ALDecalTrebleBoost;
			float _ALDecalLineWidth;
			float _ALDecalVolumeColorSource;
			float3 _ALDecalVolumeColorLow;
			float3 _ALDecalVolumeColorMid;
			float3 _ALDecalVolumeColorHigh;
			float _ALDecalLowEmission;
			float _ALDecalMidEmission;
			float _ALDecalHighEmission;
			float _ALDecalBlendType;
			float _ALDecalBlendAlpha;
			float _ALDecalControlsAlpha;
			#endif
			#endif
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct v2f
			{
				float4 pos : SV_POSITION;
				float2 uv[4] : TEXCOORD0;
				float3 objNormal : TEXCOORD4;
				float3 normal : TEXCOORD5;
				float3 tangent : TEXCOORD6;
				float3 binormal : TEXCOORD7;
				float4 worldPos : TEXCOORD8;
				float4 localPos : TEXCOORD9;
				float3 objectPos : TEXCOORD10;
				float4 vertexColor : TEXCOORD11;
				float4 lightmapUV : TEXCOORD12;
				float4 grabPos: TEXCOORD13;
				float4 worldDirection: TEXCOORD14;
				UNITY_SHADOW_COORDS(15)
				UNITY_FOG_COORDS(16)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			struct PoiMesh
			{
				float3 normals[2];
				float3 objNormal;
				float3 tangentSpaceNormal;
				float3 binormal;
				float3 tangent;
				float3 worldPos;
				float3 localPos;
				float3 objectPosition;
				float isFrontFace;
				float4 vertexColor;
				float4 lightmapUV;
				float2 uv[8];
				float2 parallaxUV;
			};
			struct PoiCam
			{
				float3 viewDir;
				float3 forwardDir;
				float3 worldPos;
				float distanceToVert;
				float4 clipPos;
				float3 reflectionDir;
				float3 vertexReflectionDir;
				float3 tangentViewDir;
				float4 grabPos;
				float2 screenUV;
				float vDotN;
				float4 worldDirection;
			};
			struct PoiMods
			{
				float4 Mask;
				float4 audioLink;
				float audioLinkAvailable;
				float audioLinkVersion;
				float4 audioLinkTexture;
				float audioLinkViaLuma;
				float2 detailMask;
				float2 backFaceDetailIntensity;
				float globalEmission;
				float4 globalColorTheme[12];
				float ALTime[8];
			};
			struct PoiLight
			{
				float3 direction;
				float attenuation;
				float attenuationStrength;
				float3 directColor;
				float3 indirectColor;
				float occlusion;
				float shadowMask;
				float detailShadow;
				float3 halfDir;
				float lightMap;
				float3 rampedLightMap;
				float vertexNDotL;
				float nDotL;
				float nDotV;
				float vertexNDotV;
				float nDotH;
				float vertexNDotH;
				float lDotv;
				float lDotH;
				float nDotLSaturated;
				float nDotLNormalized;
				#ifdef POI_PASS_ADD
				float additiveShadow;
				#endif
				float3 finalLighting;
				float3 finalLightAdd;
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float4 vDotNL;
				float4 vertexVDotNL;
				float3 vColor[4];
				float4 vCorrectedDotNL;
				float4 vAttenuation;
				float4 vAttenuationDotNL;
				float3 vPosition[4];
				float3 vDirection[4];
				float3 vFinalLighting;
				float3 vHalfDir[4];
				half4 vDotNH;
				half4 vertexVDotNH;
				half4 vDotLH;
				#endif
			};
			struct PoiVertexLights
			{
				float3 direction;
				float3 color;
				float attenuation;
			};
			struct PoiFragData
			{
				float3 baseColor;
				float3 finalColor;
				float alpha;
				float3 emission;
			};
			float2 poiUV(float2 uv, float4 tex_st)
			{
				return uv * tex_st.xy + tex_st.zw;
			}
			float calculateluminance(float3 color)
			{
				return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
			}
			bool IsInMirror()
			{
				return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
			}
			bool IsOrthographicCamera()
			{
				return unity_OrthoParams.w == 1 || UNITY_MATRIX_P[3][3] == 1;
			}
			float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
			{
				float R0 = max(0, L0);
				float3 R1 = 0.5f * L1;
				float lenR1 = length(R1);
				float q = dot(normalize(R1), n) * 0.5 + 0.5;
				q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
				float p = 1.0f + 2.0f * lenR1 / R0;
				float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
				return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
			}
			half3 BetterSH9(half4 normal)
			{
				float3 indirect;
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
				indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
				indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
				indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
				indirect = max(0, indirect);
				indirect += SHEvalLinearL2(normal);
				return indirect;
			}
			float3 getCameraForward()
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1));
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1));
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				return normalize(p2 - p1);
			}
			half3 GetSHLength()
			{
				half3 x, x1;
				x.r = length(unity_SHAr);
				x.g = length(unity_SHAg);
				x.b = length(unity_SHAb);
				x1.r = length(unity_SHBr);
				x1.g = length(unity_SHBg);
				x1.b = length(unity_SHBb);
				return x + x1;
			}
			float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			float poiMax(float2 i)
			{
				return max(i.x, i.y);
			}
			float poiMax(float3 i)
			{
				return max(max(i.x, i.y), i.z);
			}
			float poiMax(float4 i)
			{
				return max(max(max(i.x, i.y), i.z), i.w);
			}
			float3 calculateNormal(in float3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in float4 normal_ST, in float2 normalPan, in float normalUV, in float normalIntensity)
			{
				float3 normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(normalTexture, _MainTex, poiUV(poiMesh.uv[normalUV], normal_ST), normalPan), normalIntensity);
				return normalize(
				normal.x * poiMesh.tangent +
				normal.y * poiMesh.binormal +
				normal.z * baseNormal
				);
			}
			float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float2 remapClamped(float2 minOld, float2 maxOld, float2 x, float2 minNew, float2 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float3 remapClamped(float3 minOld, float3 maxOld, float3 x, float3 minNew, float3 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float4 remapClamped(float4 minOld, float4 maxOld, float4 x, float4 minNew, float4 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float2 calcParallax(in float height, in PoiCam poiCam)
			{
				return ((height * - 1) + 1) * (poiCam.tangentViewDir.xy / poiCam.tangentViewDir.z);
			}
			float4 poiBlend(const float sourceFactor, const  float4 sourceColor, const  float destinationFactor, const  float4 destinationColor, const float4 blendFactor)
			{
				float4 sA = 1 - blendFactor;
				const float4 blendData[11] = {
					float4(0.0, 0.0, 0.0, 0.0),
					float4(1.0, 1.0, 1.0, 1.0),
					destinationColor,
					sourceColor,
					float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sA,
					saturate(sourceColor.aaaa),
					1 - sA,
				};
				return lerp(blendData[sourceFactor] * sourceColor + blendData[destinationFactor] * destinationColor, sourceColor, sA);
			}
			float3 blendAverage(float3 base, float3 blend)
			{
				return (base + blend) / 2.0;
			}
			float blendColorBurn(float base, float blend)
			{
				return (blend == 0.0)?blend : max((1.0 - ((1.0 - base) / blend)), 0.0);
			}
			float3 blendColorBurn(float3 base, float3 blend)
			{
				return float3(blendColorBurn(base.r, blend.r), blendColorBurn(base.g, blend.g), blendColorBurn(base.b, blend.b));
			}
			float blendColorDodge(float base, float blend)
			{
				return (blend == 1.0)?blend : min(base / (1.0 - blend), 1.0);
			}
			float3 blendColorDodge(float3 base, float3 blend)
			{
				return float3(blendColorDodge(base.r, blend.r), blendColorDodge(base.g, blend.g), blendColorDodge(base.b, blend.b));
			}
			float blendDarken(float base, float blend)
			{
				return min(blend, base);
			}
			float3 blendDarken(float3 base, float3 blend)
			{
				return float3(blendDarken(base.r, blend.r), blendDarken(base.g, blend.g), blendDarken(base.b, blend.b));
			}
			float3 blendExclusion(float3 base, float3 blend)
			{
				return base + blend - 2.0 * base * blend;
			}
			float blendReflect(float base, float blend)
			{
				return (blend == 1.0)?blend : min(base * base / (1.0 - blend), 1.0);
			}
			float3 blendReflect(float3 base, float3 blend)
			{
				return float3(blendReflect(base.r, blend.r), blendReflect(base.g, blend.g), blendReflect(base.b, blend.b));
			}
			float3 blendGlow(float3 base, float3 blend)
			{
				return blendReflect(blend, base);
			}
			float blendOverlay(float base, float blend)
			{
				return base < 0.5?(2.0 * base * blend) : (1.0 - 2.0 * (1.0 - base) * (1.0 - blend));
			}
			float3 blendOverlay(float3 base, float3 blend)
			{
				return float3(blendOverlay(base.r, blend.r), blendOverlay(base.g, blend.g), blendOverlay(base.b, blend.b));
			}
			float3 blendHardLight(float3 base, float3 blend)
			{
				return blendOverlay(blend, base);
			}
			float blendVividLight(float base, float blend)
			{
				return (blend < 0.5)?blendColorBurn(base, (2.0 * blend)) : blendColorDodge(base, (2.0 * (blend - 0.5)));
			}
			float3 blendVividLight(float3 base, float3 blend)
			{
				return float3(blendVividLight(base.r, blend.r), blendVividLight(base.g, blend.g), blendVividLight(base.b, blend.b));
			}
			float blendHardMix(float base, float blend)
			{
				return (blendVividLight(base, blend) < 0.5)?0.0 : 1.0;
			}
			float3 blendHardMix(float3 base, float3 blend)
			{
				return float3(blendHardMix(base.r, blend.r), blendHardMix(base.g, blend.g), blendHardMix(base.b, blend.b));
			}
			float blendLighten(float base, float blend)
			{
				return max(blend, base);
			}
			float3 blendLighten(float3 base, float3 blend)
			{
				return float3(blendLighten(base.r, blend.r), blendLighten(base.g, blend.g), blendLighten(base.b, blend.b));
			}
			float blendLinearBurn(float base, float blend)
			{
				return max(base + blend - 1.0, 0.0);
			}
			float3 blendLinearBurn(float3 base, float3 blend)
			{
				return max(base + blend - float3(1.0, 1.0, 1.0), float3(0.0, 0.0, 0.0));
			}
			float blendLinearDodge(float base, float blend)
			{
				return min(base + blend, 1.0);
			}
			float3 blendLinearDodge(float3 base, float3 blend)
			{
				return min(base + blend, float3(1.0, 1.0, 1.0));
			}
			float blendLinearLight(float base, float blend)
			{
				return blend < 0.5?blendLinearBurn(base, (2.0 * blend)) : blendLinearDodge(base, (2.0 * (blend - 0.5)));
			}
			float3 blendLinearLight(float3 base, float3 blend)
			{
				return float3(blendLinearLight(base.r, blend.r), blendLinearLight(base.g, blend.g), blendLinearLight(base.b, blend.b));
			}
			float3 blendMultiply(float3 base, float3 blend)
			{
				return base * blend;
			}
			float3 blendNegation(float3 base, float3 blend)
			{
				return float3(1.0, 1.0, 1.0) - abs(float3(1.0, 1.0, 1.0) - base - blend);
			}
			float3 blendNormal(float3 base, float3 blend)
			{
				return blend;
			}
			float3 blendPhoenix(float3 base, float3 blend)
			{
				return min(base, blend) - max(base, blend) + float3(1.0, 1.0, 1.0);
			}
			float blendPinLight(float base, float blend)
			{
				return (blend < 0.5)?blendDarken(base, (2.0 * blend)) : blendLighten(base, (2.0 * (blend - 0.5)));
			}
			float3 blendPinLight(float3 base, float3 blend)
			{
				return float3(blendPinLight(base.r, blend.r), blendPinLight(base.g, blend.g), blendPinLight(base.b, blend.b));
			}
			float blendScreen(float base, float blend)
			{
				return 1.0 - ((1.0 - base) * (1.0 - blend));
			}
			float3 blendScreen(float3 base, float3 blend)
			{
				return float3(blendScreen(base.r, blend.r), blendScreen(base.g, blend.g), blendScreen(base.b, blend.b));
			}
			float blendSoftLight(float base, float blend)
			{
				return (blend < 0.5)?(2.0 * base * blend + base * base * (1.0 - 2.0 * blend)) : (sqrt(base) * (2.0 * blend - 1.0) + 2.0 * base * (1.0 - blend));
			}
			float3 blendSoftLight(float3 base, float3 blend)
			{
				return float3(blendSoftLight(base.r, blend.r), blendSoftLight(base.g, blend.g), blendSoftLight(base.b, blend.b));
			}
			float blendSubtract(float base, float blend)
			{
				return max(base - blend, 0.0);
			}
			float3 blendSubtract(float3 base, float3 blend)
			{
				return max(base - blend, 0.0);
			}
			float blendDifference(float base, float blend)
			{
				return abs(base - blend);
			}
			float3 blendDifference(float3 base, float3 blend)
			{
				return abs(base - blend);
			}
			float blendDivide(float base, float blend)
			{
				return base / max(blend, 0.0001);
			}
			float3 blendDivide(float3 base, float3 blend)
			{
				return base / max(blend, 0.0001);
			}
			float3 customBlend(float3 base, float3 blend, float blendType)
			{
				float3 ret = 0;
				switch(blendType)
				{
					case 0:
					{
						ret = blendNormal(base, blend);
						break;
					}
					case 1:
					{
						ret = blendDarken(base, blend);
						break;
					}
					case 2:
					{
						ret = blendMultiply(base, blend);
						break;
					}
					case 3:
					{
						ret = blendColorBurn(base, blend);
						break;
					}
					case 4:
					{
						ret = blendLinearBurn(base, blend);
						break;
					}
					case 5:
					{
						ret = blendLighten(base, blend);
						break;
					}
					case 6:
					{
						ret = blendScreen(base, blend);
						break;
					}
					case 7:
					{
						ret = blendColorDodge(base, blend);
						break;
					}
					case 8:
					{
						ret = blendLinearDodge(base, blend);
						break;
					}
					case 9:
					{
						ret = blendOverlay(base, blend);
						break;
					}
					case 10:
					{
						ret = blendSoftLight(base, blend);
						break;
					}
					case 11:
					{
						ret = blendHardLight(base, blend);
						break;
					}
					case 12:
					{
						ret = blendVividLight(base, blend);
						break;
					}
					case 13:
					{
						ret = blendLinearLight(base, blend);
						break;
					}
					case 14:
					{
						ret = blendPinLight(base, blend);
						break;
					}
					case 15:
					{
						ret = blendHardMix(base, blend);
						break;
					}
					case 16:
					{
						ret = blendDifference(base, blend);
						break;
					}
					case 17:
					{
						ret = blendExclusion(base, blend);
						break;
					}
					case 18:
					{
						ret = blendSubtract(base, blend);
						break;
					}
					case 19:
					{
						ret = blendDivide(base, blend);
						break;
					}
				}
				return ret;
			}
			float random(float2 p)
			{
				return frac(sin(dot(p, float2(12.9898, 78.2383))) * 43758.5453123);
			}
			float2 random2(float2 p)
			{
				return frac(sin(float2(dot(p, float2(127.1, 311.7)), dot(p, float2(269.5, 183.3)))) * 43758.5453);
			}
			float3 random3(float3 p)
			{
				return frac(sin(float3(dot(p, float3(127.1, 311.7, 248.6)), dot(p, float3(269.5, 183.3, 423.3)), dot(p, float3(248.3, 315.9, 184.2)))) * 43758.5453);
			}
			float3 randomFloat3(float2 Seed, float maximum)
			{
				return (.5 + float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed), float2(12.9898, 78.233))) * 43758.5453)
				) * .5) * (maximum);
			}
			float3 randomFloat3Range(float2 Seed, float Range)
			{
				return (float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1) * Range;
			}
			float3 randomFloat3WiggleRange(float2 Seed, float Range, float wiggleSpeed)
			{
				float3 rando = (float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1);
				float speed = 1 + wiggleSpeed;
				return float3(sin((_Time.x + rando.x * PI) * speed), sin((_Time.x + rando.y * PI) * speed), sin((_Time.x + rando.z * PI) * speed)) * Range;
			}
			void poiDither(float4 In, float4 ScreenPosition, out float4 Out)
			{
				float2 uv = ScreenPosition.xy * _ScreenParams.xy;
				float DITHER_THRESHOLDS[16] = {
					1.0 / 17.0, 9.0 / 17.0, 3.0 / 17.0, 11.0 / 17.0,
					13.0 / 17.0, 5.0 / 17.0, 15.0 / 17.0, 7.0 / 17.0,
					4.0 / 17.0, 12.0 / 17.0, 2.0 / 17.0, 10.0 / 17.0,
					16.0 / 17.0, 8.0 / 17.0, 14.0 / 17.0, 6.0 / 17.0
				};
				uint index = (uint(uv.x) % 4) * 4 + uint(uv.y) % 4;
				Out = In - DITHER_THRESHOLDS[index];
			}
			static const float Epsilon = 1e-10;
			static const float3 HCYwts = float3(0.299, 0.587, 0.114);
			static const float HCLgamma = 3;
			static const float HCLy0 = 100;
			static const float HCLmaxL = 0.530454533953517; // == exp(HCLgamma / HCLy0) - 0.5
			static const float3 wref = float3(1.0, 1.0, 1.0);
			#define TAU 6.28318531
			float3 HUEtoRGB(in float H)
			{
				float R = abs(H * 6 - 3) - 1;
				float G = 2 - abs(H * 6 - 2);
				float B = 2 - abs(H * 6 - 4);
				return saturate(float3(R, G, B));
			}
			float3 RGBtoHCV(in float3 RGB)
			{
				float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
				float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
				float C = Q.x - min(Q.w, Q.y);
				float H = abs((Q.w - Q.y) / (6 * C + Epsilon) + Q.z);
				return float3(H, C, Q.x);
			}
			float3 HSVtoRGB(in float3 HSV)
			{
				float3 RGB = HUEtoRGB(HSV.x);
				return ((RGB - 1) * HSV.y + 1) * HSV.z;
			}
			float3 RGBtoHSV(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float S = HCV.y / (HCV.z + Epsilon);
				return float3(HCV.x, S, HCV.z);
			}
			float3 HSLtoRGB(in float3 HSL)
			{
				float3 RGB = HUEtoRGB(HSL.x);
				float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
				return (RGB - 0.5) * C + HSL.z;
			}
			float3 RGBtoHSL(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float L = HCV.z - HCV.y * 0.5;
				float S = HCV.y / (1 - abs(L * 2 - 1) + Epsilon);
				return float3(HCV.x, S, L);
			}
			float3 hueShift(float3 color, float hueOffset)
			{
				color = RGBtoHSV(color);
				color.x = frac(hueOffset +color.x);
				return HSVtoRGB(color);
			}
			float xyzF(float t)
			{
				return lerp(pow(t, 1. / 3.), 7.787037 * t + 0.139731, step(t, 0.00885645));
			}
			float xyzR(float t)
			{
				return lerp(t * t * t, 0.1284185 * (t - 0.139731), step(t, 0.20689655));
			}
			float4x4 poiRotationMatrixFromAngles(float x, float y, float z)
			{
				float angleX = radians(x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				float angleY = radians(y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				float angleZ = radians(z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			float4x4 poiRotationMatrixFromAngles(float3 angles)
			{
				float angleX = radians(angles.x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				float angleY = radians(angles.y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				float angleZ = radians(angles.z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			float3 getCameraPosition()
			{
				#ifdef USING_STEREO_MATRICES
				return lerp(unity_StereoWorldSpaceCameraPos[0], unity_StereoWorldSpaceCameraPos[1], 0.5);
				#endif
				return _WorldSpaceCameraPos;
			}
			half2 calcScreenUVs(half4 grabPos)
			{
				half2 uv = grabPos.xy / (grabPos.w + 0.0000000001);
				#if UNITY_SINGLE_PASS_STEREO
				uv.xy *= half2(_ScreenParams.x * 2, _ScreenParams.y);
				#else
				uv.xy *= _ScreenParams.xy;
				#endif
				return uv;
			}
			float CalcMipLevel(float2 texture_coord)
			{
				float2 dx = ddx(texture_coord);
				float2 dy = ddy(texture_coord);
				float delta_max_sqr = max(dot(dx, dx), dot(dy, dy));
				return 0.5 * log2(delta_max_sqr);
			}
			float inverseLerp(float A, float B, float T)
			{
				return (T - A) / (B - A);
			}
			float inverseLerp2(float2 a, float2 b, float2 value)
			{
				float2 AB = b - a;
				float2 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			float inverseLerp3(float3 a, float3 b, float3 value)
			{
				float3 AB = b - a;
				float3 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			float inverseLerp4(float4 a, float4 b, float4 value)
			{
				float4 AB = b - a;
				float4 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			float4 quaternion_conjugate(float4 v)
			{
				return float4(
				v.x, -v.yzw
				);
			}
			float4 quaternion_mul(float4 v1, float4 v2)
			{
				float4 result1 = (v1.x * v2 + v1 * v2.x);
				float4 result2 = float4(
				- dot(v1.yzw, v2.yzw),
				cross(v1.yzw, v2.yzw)
				);
				return float4(result1 + result2);
			}
			float4 get_quaternion_from_angle(float3 axis, float angle)
			{
				float sn = sin(angle * 0.5);
				float cs = cos(angle * 0.5);
				return float4(axis * sn, cs);
			}
			float4 quaternion_from_vector(float3 inVec)
			{
				return float4(0.0, inVec);
			}
			float degree_to_radius(float degree)
			{
				return (
				degree / 180.0 * PI
				);
			}
			float3 rotate_with_quaternion(float3 inVec, float3 rotation)
			{
				float4 qx = get_quaternion_from_angle(float3(1, 0, 0), radians(rotation.x));
				float4 qy = get_quaternion_from_angle(float3(0, 1, 0), radians(rotation.y));
				float4 qz = get_quaternion_from_angle(float3(0, 0, 1), radians(rotation.z));
				#define MUL3(A, B, C) quaternion_mul(quaternion_mul((A), (B)), (C))
				float4 quaternion = normalize(MUL3(qx, qy, qz));
				float4 conjugate = quaternion_conjugate(quaternion);
				float4 inVecQ = quaternion_from_vector(inVec);
				float3 rotated = (
				MUL3(quaternion, inVecQ, conjugate)
				).yzw;
				return rotated;
			}
			float4 transform(float4 input, float4 pos, float4 rotation, float4 scale)
			{
				input.rgb *= (scale.xyz * scale.w);
				input = float4(rotate_with_quaternion(input.xyz, rotation.xyz * rotation.w) + (pos.xyz * pos.w), input.w);
				return input;
			}
			float3 poiThemeColor(in PoiMods poiMods, in float3 srcColor, in float themeIndex)
			{
				if (themeIndex == 0) return srcColor;
				themeIndex -= 1;
				if (themeIndex <= 3)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				#ifdef POI_AUDIOLINK
				if (poiMods.audioLinkAvailable)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				#endif
				return srcColor;
			}
			float lilIsIn0to1(float f)
			{
				float value = 0.5 - abs(f - 0.5);
				return saturate(value / clamp(fwidth(value), 0.0001, 1.0));
			}
			float lilIsIn0to1(float f, float nv)
			{
				float value = 0.5 - abs(f - 0.5);
				return saturate(value / clamp(fwidth(value), 0.0001, nv));
			}
			float poiEdgeLinearNoSaturate(float value, float border)
			{
				return (value - border) / clamp(fwidth(value), 0.0001, 1.0);
			}
			float poiEdgeLinearNoSaturate(float value, float border, float blur)
			{
				float borderMin = saturate(border - blur * 0.5);
				float borderMax = saturate(border + blur * 0.5);
				return (value - borderMin) / saturate(borderMax - borderMin + fwidth(value));
			}
			float poiEdgeLinearNoSaturate(float value, float border, float blur, float borderRange)
			{
				float borderMin = saturate(border - blur * 0.5 - borderRange);
				float borderMax = saturate(border + blur * 0.5);
				return (value - borderMin) / saturate(borderMax - borderMin + fwidth(value));
			}
			float poiEdgeNonLinearNoSaturate(float value, float border)
			{
				float fwidthValue = fwidth(value);
				return smoothstep(border - fwidthValue, border + fwidthValue, value);
			}
			float poiEdgeNonLinearNoSaturate(float value, float border, float blur)
			{
				float fwidthValue = fwidth(value);
				float borderMin = saturate(border - blur * 0.5);
				float borderMax = saturate(border + blur * 0.5);
				return smoothstep(borderMin - fwidthValue, borderMax + fwidthValue, value);
			}
			float poiEdgeNonLinearNoSaturate(float value, float border, float blur, float borderRange)
			{
				float fwidthValue = fwidth(value);
				float borderMin = saturate(border - blur * 0.5 - borderRange);
				float borderMax = saturate(border + blur * 0.5);
				return smoothstep(borderMin - fwidthValue, borderMax + fwidthValue, value);
			}
			float poiEdgeNonLinear(float value, float border)
			{
				return saturate(poiEdgeNonLinearNoSaturate(value, border));
			}
			float poiEdgeNonLinear(float value, float border, float blur)
			{
				return saturate(poiEdgeNonLinearNoSaturate(value, border, blur));
			}
			float poiEdgeNonLinear(float value, float border, float blur, float borderRange)
			{
				return saturate(poiEdgeNonLinearNoSaturate(value, border, blur, borderRange));
			}
			float poiEdgeLinear(float value, float border)
			{
				return saturate(poiEdgeLinearNoSaturate(value, border));
			}
			float poiEdgeLinear(float value, float border, float blur)
			{
				return saturate(poiEdgeLinearNoSaturate(value, border, blur));
			}
			float poiEdgeLinear(float value, float border, float blur, float borderRange)
			{
				return saturate(poiEdgeLinearNoSaturate(value, border, blur, borderRange));
			}
			float3 OpenLitLinearToSRGB(float3 col)
			{
				return LinearToGammaSpace(col);
			}
			float3 OpenLitSRGBToLinear(float3 col)
			{
				return GammaToLinearSpace(col);
			}
			float OpenLitLuminance(float3 rgb)
			{
				#if defined(UNITY_COLORSPACE_GAMMA)
				return dot(rgb, float3(0.22, 0.707, 0.071));
				#else
				return dot(rgb, float3(0.0396819152, 0.458021790, 0.00609653955));
				#endif
			}
			float OpenLitGray(float3 rgb)
			{
				return dot(rgb, float3(1.0/3.0, 1.0/3.0, 1.0/3.0));
			}
			void OpenLitShadeSH9ToonDouble(float3 lightDirection, out float3 shMax, out float3 shMin)
			{
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
				float3 N = lightDirection * 0.666666;
				float4 vB = N.xyzz * N.yzzx;
				float3 res = float3(unity_SHAr.w,unity_SHAg.w,unity_SHAb.w);
				res.r += dot(unity_SHBr, vB);
				res.g += dot(unity_SHBg, vB);
				res.b += dot(unity_SHBb, vB);
				res += unity_SHC.rgb * (N.x * N.x - N.y * N.y);
				float3 l1;
				l1.r = dot(unity_SHAr.rgb, N);
				l1.g = dot(unity_SHAg.rgb, N);
				l1.b = dot(unity_SHAb.rgb, N);
				shMax = res + l1;
				shMin = res - l1;
				#if defined(UNITY_COLORSPACE_GAMMA)
				shMax = OpenLitLinearToSRGB(shMax);
				shMin = OpenLitLinearToSRGB(shMin);
				#endif
				#else
				shMax = 0.0;
				shMin = 0.0;
				#endif
			}
			float3 OpenLitComputeCustomLightDirection(float4 lightDirectionOverride)
			{
				float3 customDir = length(lightDirectionOverride.xyz) * normalize(mul((float3x3)unity_ObjectToWorld, lightDirectionOverride.xyz));
				return lightDirectionOverride.w ? customDir : lightDirectionOverride.xyz; // .w isn't doc'd anywhere and is always 0 unless end user changes it
			}
			float3 OpenLitLightingDirection(float4 lightDirectionOverride)
			{
				float3 mainDir = _WorldSpaceLightPos0.xyz * OpenLitLuminance(_LightColor0.rgb);
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
				float3 sh9Dir = unity_SHAr.xyz * 0.333333 + unity_SHAg.xyz * 0.333333 + unity_SHAb.xyz * 0.333333;
				float3 sh9DirAbs = float3(sh9Dir.x, abs(sh9Dir.y), sh9Dir.z);
				#else
				float3 sh9Dir = 0;
				float3 sh9DirAbs = 0;
				#endif
				float3 customDir = OpenLitComputeCustomLightDirection(lightDirectionOverride);
				return normalize(sh9DirAbs + mainDir + customDir);
			}
			float3 OpenLitLightingDirection()
			{
				float4 customDir = float4(0.001,0.002,0.001,0.0);
				return OpenLitLightingDirection(customDir);
			}
			inline float4 CalculateFrustumCorrection()
			{
				float x1 = -UNITY_MATRIX_P._31 / (UNITY_MATRIX_P._11 * UNITY_MATRIX_P._34);
				float x2 = -UNITY_MATRIX_P._32 / (UNITY_MATRIX_P._22 * UNITY_MATRIX_P._34);
				return float4(x1, x2, 0, UNITY_MATRIX_P._33 / UNITY_MATRIX_P._34 + x1 * UNITY_MATRIX_P._13 + x2 * UNITY_MATRIX_P._23);
			}
			inline float CorrectedLinearEyeDepth(float z, float B)
			{
				return 1.0 / (z / UNITY_MATRIX_P._34 + B);
			}
			float2 sharpSample( float4 texelSize , float2 p )
			{
				p = p*texelSize.zw;
				float2 c = max(0.0, fwidth(p));
				p = floor(p) + saturate(frac(p) / c);
				p = (p - 0.5)*texelSize.xy;
				return p;
			}
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			float4 AudioLinkDataMultiline(uint2 xycoord) { return AudioLinkData(uint2(xycoord.x % AUDIOLINK_WIDTH, xycoord.y + xycoord.x/AUDIOLINK_WIDTH)); }
			float4 AudioLinkLerp(float2 xy) { return lerp( AudioLinkData(xy), AudioLinkData(xy+int2(1,0)), frac( xy.x ) ); }
			float4 AudioLinkLerpMultiline(float2 xy) { return lerp(AudioLinkDataMultiline(xy), AudioLinkDataMultiline(xy+float2(1,0)), frac(xy.x)); }
			bool AudioLinkIsAvailable()
			{
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				int width, height;
				_AudioTexture.GetDimensions(width, height);
				return width > 16;
				#else
				return _AudioTexture_TexelSize.z > 16;
				#endif
			}
			float AudioLinkGetVersion()
			{
				int2 dims;
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				_AudioTexture.GetDimensions(dims.x, dims.y);
				#else
				dims = _AudioTexture_TexelSize.zw;
				#endif
				if (dims.x >= 128)
				return AudioLinkData(ALPASS_GENERALVU).x;
				else if (dims.x > 16)
				return 1;
				else
				return 0;
			}
			#define AudioLinkGetSelfPixelData(xy) _SelfTexture2D[xy]
			uint AudioLinkDecodeDataAsUInt(uint2 indexloc)
			{
				uint4 rpx = AudioLinkData(indexloc);
				return rpx.r + rpx.g*1024 + rpx.b * 1048576 + rpx.a * 1073741824;
			}
			float AudioLinkDecodeDataAsSeconds(uint2 indexloc)
			{
				uint time = AudioLinkDecodeDataAsUInt(indexloc) & 0x7ffffff;
				return float(time / 1000) + float( time % 1000 ) / 1000.;
			}
			#define ALDecodeDataAsSeconds( x ) AudioLinkDecodeDataAsSeconds( x )
			#define ALDecodeDataAsUInt( x ) AudioLinkDecodeDataAsUInt( x )
			float AudioLinkRemap(float t, float a, float b, float u, float v) { return ((t-a) / (b-a)) * (v-u) + u; }
			float3 AudioLinkHSVtoRGB(float3 HSV)
			{
				float3 RGB = 0;
				float C = HSV.z * HSV.y;
				float H = HSV.x * 6;
				float X = C * (1 - abs(fmod(H, 2) - 1));
				if (HSV.y != 0)
				{
					float I = floor(H);
					if (I == 0) { RGB = float3(C, X, 0); }
					else if (I == 1) { RGB = float3(X, C, 0); }
					else if (I == 2) { RGB = float3(0, C, X); }
					else if (I == 3) { RGB = float3(0, X, C); }
					else if (I == 4) { RGB = float3(X, 0, C); }
					else { RGB = float3(C, 0, X); }
				}
				float M = HSV.z - C;
				return RGB + M;
			}
			float3 AudioLinkCCtoRGB(float bin, float intensity, int rootNote)
			{
				float note = bin / AUDIOLINK_EXPBINS;
				float hue = 0.0;
				note *= 12.0;
				note = glsl_mod(4. - note + rootNote, 12.0);
				{
					if(note < 4.0)
					{
						hue = (note) / 24.0;
					}
					else if(note < 8.0)
					{
						hue = (note-2.0) / 12.0;
					}
					else
					{
						hue = (note - 4.0) / 8.0;
					}
				}
				float val = intensity - 0.1;
				return AudioLinkHSVtoRGB(float3(fmod(hue, 1.0), 1.0, clamp(val, 0.0, 1.0)));
			}
			float4 AudioLinkGetAmplitudeAtFrequency(float hertz)
			{
				float note = AUDIOLINK_EXPBINS * log2(hertz / AUDIOLINK_BOTTOM_FREQUENCY);
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(note, 0));
			}
			float AudioLinkGetAmplitudeAtNote(float octave, float note)
			{
				float quarter = note * 2.0;
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(octave * AUDIOLINK_EXPBINS + quarter, 0));
			}
			float AudioLinkGetChronoTime(uint index, uint band)
			{
				return (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(index, band))) / 100000.0;
			}
			float AudioLinkGetChronoTimeNormalized(uint index, uint band, float speed)
			{
				return frac(AudioLinkGetChronoTime(index, band) * speed);
			}
			float AudioLinkGetChronoTimeInterval(uint index, uint band, float speed, float interval)
			{
				return AudioLinkGetChronoTimeNormalized(index, band, speed) * interval;
			}
			float getBandAtTime(float band, float time, float size = 1.0f)
			{
				return remapClamped(min(size,.9999), 1, AudioLinkData(ALPASS_AUDIOBASS + uint2(time * AUDIOLINK_WIDTH,band)).r);
			}
			fixed3 maximize(fixed3 c) {
				if (c.x == 0 && c.y == 0 && c.z == 0)
				return fixed3(1.0, 1.0, 1.0);
				else
				return c / max(c.r, max(c.g, c.b));
			}
			bool LumaIsAvailable()
			{
				return LumaData(0.629, 0.511).r > 0.9;
			}
			float3 getLumaGradient(uint index, float offset) {
				return LumaData(0.57 + (index * 0.11) + lerp(0, 0.107, offset), 0.493);
			}
			void initPoiAudioLink(inout PoiMods poiMods)
			{
				if (!_AudioLinkAnimToggle) return;
				if (AudioLinkIsAvailable())
				{
					poiMods.audioLinkAvailable = true;
					poiMods.audioLinkVersion = AudioLinkGetVersion();
					poiMods.audioLink.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					poiMods.audioLink.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					poiMods.audioLink.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					poiMods.audioLink.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
					poiMods.globalColorTheme[4] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(2, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[5] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(3, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[6] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(4, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[7] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(5, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[8] = AudioLinkData(ALPASS_THEME_COLOR0);
					poiMods.globalColorTheme[9] = AudioLinkData(ALPASS_THEME_COLOR1);
					poiMods.globalColorTheme[10] = AudioLinkData(ALPASS_THEME_COLOR2);
					poiMods.globalColorTheme[11] = AudioLinkData(ALPASS_THEME_COLOR3);
					return;
				}
				if (LumaIsAvailable())
				{
					float4 audioPixel = LumaData(0.578, 0.515);
					float audioLows = audioPixel.r;
					float audioHighs = audioPixel.g;
					float4 zone1 = LumaData(0.856, 0.522);
					float4 zone2 = LumaData(0.856, 0.507);
					float4 zone3 = LumaData(0.864, 0.522);
					float4 zone4 = LumaData(0.864, 0.507);
					poiMods.audioLinkAvailable = true;
					poiMods.audioLinkViaLuma = true;
					poiMods.audioLink.xy = audioLows;
					poiMods.audioLink.zw = audioHighs;
					poiMods.globalColorTheme[8] = zone1;
					poiMods.globalColorTheme[9] = zone2;
					poiMods.globalColorTheme[10] = zone3;
					poiMods.globalColorTheme[11] = zone4;
				}
			}
			void DebugVisualizer(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods){
				if (_DebugWaveform){
					float waveform = AudioLinkLerpMultiline(ALPASS_WAVEFORM + float2( 500. * poiMesh.uv[0].x, 0)).r;
					poiFragData.emission += clamp(1 - 50 * abs(waveform - poiMesh.uv[0].y * 2. + 1), 0, 1);
				}
				if (_DebugDFT){
					poiFragData.emission += AudioLinkLerpMultiline(ALPASS_DFT + uint2(poiMesh.uv[0].x * AUDIOLINK_ETOTALBINS, 0)).rrr;
				}
				if (_DebugBass){
					poiFragData.emission += poiMods.audioLink.x;
				}
				if (_DebugLowMids){
					poiFragData.emission += poiMods.audioLink.y;
				}
				if (_DebugHighMids){
					poiFragData.emission += poiMods.audioLink.z;
				}
				if (_DebugTreble){
					poiFragData.emission += poiMods.audioLink.w;
				}
				if (_DebugCCColors){
					poiFragData.emission += AudioLinkData(ALPASS_CCCOLORS + uint2(3 + 1, 0));
				}
				if (_DebugCCStrip){
					poiFragData.emission += AudioLinkLerp(ALPASS_CCSTRIP + float2(poiMesh.uv[0].x * AUDIOLINK_WIDTH, 0));
				}
				if (_DebugCCLights){
					poiFragData.emission += AudioLinkData(ALPASS_CCLIGHTS + uint2(uint(poiMesh.uv[0].x * 8) + uint(poiMesh.uv[0].y * 16) * 8, 0));
				}
				if (_DebugAutocorrelator){
					poiFragData.emission += saturate(AudioLinkLerp(ALPASS_AUTOCORRELATOR + float2((abs(1. - poiMesh.uv[0].x * 2.)) * AUDIOLINK_WIDTH, 0)).rrr);
				}
				if (_DebugChronotensity){
					poiFragData.emission += (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY  + uint2(1, 0)) % 1000000) / 1000000.0;
				}
			}
			void SetupAudioLink(inout PoiFragData poiFragData, inout PoiMods poiMods, in PoiMesh poiMesh){
				initPoiAudioLink(poiMods);
				DebugVisualizer(poiFragData, poiMesh, poiMods);
				if(_AudioLinkCCStripY)
				{
					poiFragData.emission += AudioLinkLerp( ALPASS_CCSTRIP + float2( poiMesh.uv[0].y * AUDIOLINK_WIDTH, 0 ) ).rgb * .5;
				}
			}
			#endif
			v2f vert(appdata v)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				PoiInitStruct(v2f, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				o.objectPos = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				o.objNormal = v.normal;
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.tangent = UnityObjectToWorldDir(v.tangent);
				o.binormal = cross(o.normal, o.tangent) * (v.tangent.w * unity_WorldTransformParams.w);
				o.vertexColor = v.color;
				o.uv[0] = v.uv0;
				o.uv[1] = v.uv1;
				o.uv[2] = v.uv2;
				o.uv[3] = v.uv3;
				#if defined(LIGHTMAP_ON)
				o.lightmapUV.xy = v.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				o.localPos.rgb += localOffset;
				o.worldPos.rgb += worldOffset;
				o.pos = UnityObjectToClipPos(o.localPos);
				#ifdef POI_PASS_OUTLINE
				#if defined(UNITY_REVERSED_Z)
				o.pos.z += _Offset_Z * - 0.01;
				#else
				o.pos.z += _Offset_Z * 0.01;
				#endif
				#endif
				o.grabPos = ComputeGrabScreenPos(o.pos);
				#ifndef FORWARD_META_PASS
				#if !defined(UNITY_PASS_SHADOWCASTER)
				UNITY_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				#endif
				UNITY_TRANSFER_FOG(o, o.pos);
				if (float(0))
				{
					if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
					{
						o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					}
				}
				#ifdef POI_PASS_META
				o.pos = UnityMetaVertexPosition(v.vertex, v.uv1.xy, v.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);
				#endif
				#if defined(GRAIN)
				float4 worldDirection;
				worldDirection.xyz = o.worldPos.xyz - _WorldSpaceCameraPos;
				worldDirection.w = dot(o.pos, CalculateFrustumCorrection());
				o.worldDirection = worldDirection;
				#endif
				return o;
			}
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[float(0)] - float4(0.5,0.5,0,0);
				float radius = length(delta) * 2 * float(1);
				float angle = atan2(delta.x, delta.y) * 1.0 / 6.28 * float(1);
				return float2(radius, angle + distance(poiMesh.uv[float(0)], float4(0.5,0.5,0,0)) * float(0));
			}
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(1.0, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).zw;
			}
			float2 StereoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).zw;
			}
			float2 calculatePanosphereUV(in PoiMesh poiMesh)
			{
				float3 viewDirection = normalize(lerp(getCameraPosition().xyz, _WorldSpaceCameraPos.xyz, float(1)) - poiMesh.worldPos.xyz) * - 1;
				return lerp(MonoPanoProjection(viewDirection), StereoPanoProjection(viewDirection), float(0));
			}
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + float(0));
			}
			//ifex float(1)==0
			#ifdef POI_AUDIOLINK
			#ifdef POI_AL_DECAL
			void ApplyAudioLinkDecal(in PoiMesh poiMesh, inout PoiFragData poiFragData, in PoiMods poiMods)
			{
				float4 colorAndMask = float4(1, 1, 1, 1);
				#if defined(PROP_ALDECALCOLORMASK) || !defined(OPTIMIZER_ENABLED)
				colorAndMask = POI2D_SAMPLER_PAN(_ALDecalColorMask, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0));
				#endif
				float2 uv = poiMesh.uv[float(2)];
				float2 decalCenter = float4(-0.3,-0.7,1,1);
				float theta = radians(float(360) + _Time.z * float(0));
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - _ALUVScale.xz / 2 + float4(-0.3,-0.7,1,1), _ALUVScale.yw / 2 + float4(-0.3,-0.7,1,1), float2(0, 0), float2(1, 1));
				float4 audioLinkMask = 1.0;
				float2 aluv = uv;
				if (float(0) == 1)
				{
					float2 uvdir = uv * 2 - 1;
					aluv.x = frac(atan2(uvdir.y, uvdir.x) * UNITY_INV_TWO_PI);
					aluv.y = length(uvdir);
				}
				float maskY = aluv.y;
				if (float(0) == 1)
				{
					maskY = remap(maskY, float4(0,1,0,1).x, float4(0,1,0,1).y, 0, 1);
				}
				float maskX = aluv.x;
				if (float(0) == 1)
				{
					maskX = remap(maskX, float4(0,1,0,1).z, float4(0,1,0,1).w, 0, 1);
				}
				float maskVolume = _ALDecalVolumeStep != 0.0 ? floor(maskY * _ALDecalVolumeStep) / _ALDecalVolumeStep : maskY;
				float maskBand = float(0) != 0.0 ? floor(maskX * float(0)) / float(0) : maskX;
				audioLinkMask.r = maskVolume;
				audioLinkMask.g = maskBand;
				audioLinkMask.b = maskVolume < float(0) || maskVolume > float(1) ? 0.0 : audioLinkMask.b;
				audioLinkMask.b = maskBand < float(0) || maskBand > float(1) ? 0.0 : audioLinkMask.b;
				if (float(0))
				{
					float volumeth = float(0.419);
					if (_ALDecalVolumeStep != 0.0) audioLinkMask.b = frac(maskY * _ALDecalVolumeStep) > volumeth ? 0.0 : audioLinkMask.b;
					float bandwidth = float(0) == 1 ? float(1) / aluv.y : float(1);
					float bandth = 1.0 - bandwidth;
					if (float(0) != 0.0) audioLinkMask.b = frac(maskX * float(0) + bandth * 0.5) < bandth ? 0.0 : audioLinkMask.b;
				}
				float2 audioLinkUV = float2(frac(audioLinkMask.g * 2.0), 4.5 / 4.0 + floor(audioLinkMask.g * 2.0) / 4.0);
				audioLinkUV.y *= 0.0625;
				float4 audioTexture = _AudioTexture.Sample(sampler_linear_clamp, audioLinkUV);
				float audioVal = audioTexture.b * float(0.2) * lerp(float(5), float(1), audioLinkMask.g);
				float audioLinkValue = float(0.239) < 1.0 ? abs(audioVal - audioLinkMask.r) < float(0.239) : audioVal > audioLinkMask.r * 2.0;
				audioLinkValue = saturate(audioLinkValue) * audioLinkMask.b;
				audioLinkValue *= colorAndMask.a;
				if (!poiMods.audioLinkAvailable)
				{
					audioLinkValue = 0;
				}
				float3 alColorChord = _AudioTexture.Sample(sampler_linear_clamp, float2(maskX, 24.5 / 64.0)).rgb;
				float volumeColorSrc = audioLinkMask.g;
				if (float(0) == 1) volumeColorSrc = audioLinkMask.r;
				if (float(0) == 2) volumeColorSrc = audioVal;
				float3 volumeColor = lerp(float4(0.2319224,0,0.05863854,1).rgb, float4(0,0.06823184,0.2603273,1).rgb, saturate(volumeColorSrc * 2));
				volumeColor = lerp(volumeColor, float4(0,1,1,1).rgb, saturate(volumeColorSrc * 2 - 1));
				float3 emissionColor = lerp(float4(0.2319224,0,0.05863854,1).rgb * float(5.02), float4(0,0.06823184,0.2603273,1).rgb * float(5.2), saturate(volumeColorSrc * 2));
				emissionColor = lerp(emissionColor, float4(0,1,1,1).rgb * float(5.08), saturate(volumeColorSrc * 2 - 1));
				#if defined(POI_PASS_BASE) || defined(POI_PASS_ADD)
				poiFragData.emission += emissionColor * audioLinkValue;
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor, customBlend(poiFragData.baseColor, volumeColor * colorAndMask.rgb, float(11)), saturate(float(1) * audioLinkValue));
				#endif
				poiFragData.alpha = lerp(poiFragData.alpha, poiFragData.alpha * audioLinkValue, float(0));
			}
			#endif
			#endif
			float4 frag(v2f i, uint facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				PoiVertexLights poiVertexLights;
				PoiInitStruct(PoiVertexLights, poiVertexLights);
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				poiMods.globalEmission = 1;
				PoiFragData poiFragData;
				poiFragData.emission = 0;
				poiFragData.baseColor = float3(0, 0, 0);
				poiFragData.finalColor = float3(0, 0, 0);
				poiFragData.alpha = 1;
				#ifdef POI_UDIMDISCARD
				applyUDIMDiscard(i);
				#endif
				poiMesh.objectPosition = i.objectPos;
				poiMesh.objNormal = i.objNormal;
				poiMesh.normals[0] = i.normal;
				poiMesh.tangent = i.tangent;
				poiMesh.binormal = i.binormal;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.localPos = i.localPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				poiMesh.isFrontFace = facing;
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent *= -1;
					poiMesh.binormal *= -1;
				}
				#endif
				poiCam.viewDir = !IsOrthographicCamera() ? normalize(_WorldSpaceCameraPos - i.worldPos.xyz) : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				float3 tanToWorld0 = float3(i.tangent.x, i.binormal.x, i.normal.x);
				float3 tanToWorld1 = float3(i.tangent.y, i.binormal.y, i.normal.y);
				float3 tanToWorld2 = float3(i.tangent.z, i.binormal.z, i.normal.z);
				float3 ase_tanViewDir = tanToWorld0 * poiCam.viewDir.x + tanToWorld1 * poiCam.viewDir.y + tanToWorld2 * poiCam.viewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0];
				poiMesh.uv[1] = i.uv[1];
				poiMesh.uv[2] = i.uv[2];
				poiMesh.uv[3] = i.uv[3];
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.worldPos.xz;
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				float2 mainUV = poiMesh.uv[float(1)].xy;
				if (float(0))
				{
					mainUV = sharpSample(_MainTex_TexelSize, mainUV);
				}
				float4 mainTexture = UNITY_SAMPLE_TEX2D(_MainTex, poiUV(mainUV, _MainTex_ST) + _Time.x * float4(0,0,0,0));
				float3 mainNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_BumpMap, _MainTex, poiUV(poiMesh.uv[float(1)], float4(1,1,0,0)), float4(0,0,0,0)), float(0));
				poiMesh.tangentSpaceNormal = mainNormal;
				//ifex float(1)==0
				#if defined(FINALPASS) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				ApplyDetailNormal(poiMods, poiMesh);
				#endif
				//ifex float(1)==0
				#if defined(GEOM_TYPE_MESH) && defined(VIGNETTE) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				calculateRGBNormals(poiMesh);
				#endif
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent.xyz +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				float3 fancyNormal = UnpackNormal(float4(0.5, 0.5, 1, 1));
				poiMesh.normals[0] = normalize(
				fancyNormal.x * poiMesh.tangent.xyz +
				fancyNormal.y * poiMesh.binormal +
				fancyNormal.z * poiMesh.normals[0]
				);
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = _WorldSpaceCameraPos;
				poiCam.reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				poiCam.vertexReflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[0]);
				poiCam.distanceToVert = distance(poiMesh.worldPos, poiCam.worldPos);
				poiCam.grabPos = i.grabPos;
				poiCam.screenUV = calcScreenUVs(i.grabPos);
				poiCam.vDotN = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.clipPos = i.pos;
				poiCam.worldDirection = i.worldDirection;
				//ifex float(1)==0
				#ifdef POI_AUDIOLINK
				SetupAudioLink(poiFragData, poiMods, poiMesh);
				#endif
				poiFragData.baseColor = mainTexture.rgb * poiThemeColor(poiMods, float4(1,1,1,1).rgb, float(0));
				poiFragData.alpha = mainTexture.a * float4(1,1,1,1).a;
				//ifex float(1)==0
				#ifdef COLOR_GRADING_HDR
				#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 hueShiftAlpha = POI2D_SAMPLER_PAN(_MainColorAdjustTexture, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0));
				#else
				float4 hueShiftAlpha = 1;
				#endif
				if (float(1))
				{
					float shift = _MainHueShift;
					#ifdef POI_AUDIOLINK
					if (poiMods.audioLinkAvailable && float(0))
					{
						shift += AudioLinkGetChronoTime(float(0), float(0)) * float(1);
					}
					#endif
					if (float(0))
					{
						poiFragData.baseColor = lerp(poiFragData.baseColor, hueShift(poiFragData.baseColor, shift + float(0) * _Time.x), hueShiftAlpha.r);
					}
					else
					{
						poiFragData.baseColor = hueShift(poiFragData.baseColor, frac((shift - (1 - hueShiftAlpha.r) + float(0) * _Time.x)));
					}
				}
				poiFragData.baseColor = lerp(poiFragData.baseColor, dot(poiFragData.baseColor, float3(0.3, 0.59, 0.11)), -_Saturation * hueShiftAlpha.b);
				poiFragData.baseColor = saturate(poiFragData.baseColor + _MainBrightness * hueShiftAlpha.g);
				#endif
				#if defined(PROP_CLIPPINGMASK) || !defined(OPTIMIZER_ENABLED)
				float alphaMask = POI2D_SAMPLER_PAN(_ClippingMask, _MainTex, poiUV(poiMesh.uv[float(0)], float4(1,1,0,0)), float4(0,0,0,0)).r;
				if (float(0))
				{
					alphaMask = 1 - alphaMask;
				}
				#else
				float alphaMask = 1;
				#endif
				poiFragData.alpha *= alphaMask;
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				//ifex float(1)==0
				#ifdef POI_AUDIOLINK
				#ifdef POI_AL_DECAL
				ApplyAudioLinkDecal(poiMesh, poiFragData, poiMods);
				#endif
				#endif
				poiFragData.finalColor = poiFragData.baseColor;
				if (float(0) == 0)
				{
					UNITY_APPLY_FOG(i.fogCoord, poiFragData.finalColor);
				}
				poiFragData.alpha = float(0) ? 1 : poiFragData.alpha;
				if (float(0) == POI_MODE_OPAQUE)
				{
					poiFragData.alpha = 1;
				}
				clip(poiFragData.alpha - float(0.5));
				return float4(poiFragData.finalColor, poiFragData.alpha) + POI_SAFE_RGB0;
			}
			ENDCG
		}
	}
	CustomEditor "Thry.ShaderEditor"
}
