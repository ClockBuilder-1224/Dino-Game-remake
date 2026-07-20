shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;
uniform float shake : hint_range(0.0, 1.0) = 0.1;

float rand(vec2 co) {
    return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
}

void fragment() {
    vec2 uv = SCREEN_UV;

    float r = texture(SCREEN_TEXTURE, uv).r;
    float g = texture(SCREEN_TEXTURE, uv).g;
    float b = texture(SCREEN_TEXTURE, uv).b;
    
    float scanline =0.0;
	
	float newR = (r - scanline)*0.30;
	float newB = (g - scanline)*0.59;
	float newG = (b - scanline) *0.11;
	
	float grayscale = newR + newB + newG;
	
    COLOR = vec4(grayscale, grayscale, grayscale, 1);
	
}
//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
