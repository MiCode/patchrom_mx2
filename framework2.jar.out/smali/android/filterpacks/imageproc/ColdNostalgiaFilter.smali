.class public Landroid/filterpacks/imageproc/ColdNostalgiaFilter;
.super Landroid/filterfw/core/Filter;
.source "ColdNostalgiaFilter.java"


# instance fields
.field private final mColdNostalgiaShader:Ljava/lang/String;

.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mShaderCode:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "ShaderCode"
    .end annotation
.end field

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 20
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mTileSize:I

    .line 28
    iput v1, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mWidth:I

    .line 29
    iput v1, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mHeight:I

    .line 30
    iput v1, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mTarget:I

    .line 32
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calSaturation(vec4 color,float saturation) {\n\tsaturation = saturation / 255.0;\n\tfloat maxValue = max(color.r,max(color.g,color.b));\n\tfloat minValue = min(color.r,min(color.g,color.b));\n\tfloat delta = maxValue - minValue;\n\tif (delta == 0.0) {\n\t\treturn color;\n\t}\n\tfloat value = maxValue + minValue;\n\tfloat s = 0.0;\n\tfloat l = value / 2.0;\n\tif (l < 0.5) {\n\t\ts = delta / value;\n\t} else {\n\t\ts = delta / (2.0 - value);\n\t}\n\tif (saturation > 0.0) {\n\t\tsaturation = saturation + s >= 1.0 ? s : 1.0 - saturation;\n\t\tsaturation = 1.0 / saturation - 1.0;\n\t}\n\tcolor.r = color.r + (color.r - l) * saturation;\n\tcolor.g = color.g + (color.g - l) * saturation;\n\tcolor.b = color.b + (color.b - l) * saturation;\n\treturn color;\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightness(vec4 color,float brightness) {\n\treturn vec4(color.rgb + brightness / 255.0 ,color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nfloat calRChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordR = vec2(color,0.0);\n\tvec4 rColor = texture2D(curvemask,coordR);\n\treturn rColor.r;\n}\nfloat calGChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordG = vec2(color,0.0);\n\tvec4 gColor = texture2D(curvemask,coordG);\n\treturn gColor.g;\n}\nfloat calBChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordB = vec2(color,0.0);\n\tvec4 bColor = texture2D(curvemask,coordB);\n\treturn bColor.b;\n}\nvec4 calRGBChannelCurve(vec4 color,sampler2D curvemask) {\n\tvec2 coord = vec2( color.r, 0.0);\n\tvec4 newColor = texture2D(curvemask,coord);\n\tcolor.r = newColor.a;\n\tcoord = vec2(color.g, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.g = newColor.a;\n\tcoord = vec2(color.b, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.b = newColor.a;\n\treturn color;\n}\nvec4 calColorBalance(vec4 color,float rOffset,float gOffset,float bOffset) {\n\treturn vec4(color.r + rOffset / 255.0, color.g + gOffset / 255.0, color.b + bOffset / 255.0,  color.a);\n}\nvec4 calHSVAdjust(vec4 color,float hOffset,float sOffset,float vOffset) {\n\tfloat maxValue = max(max(color.r,color.g),color.b);\n\tfloat minValue = min(min(color.r,color.g),color.b);\n\tfloat v = maxValue;\n\tfloat s =0.0;\n\tif ( maxValue != 0.0) {\n\t\ts = (maxValue - minValue) * maxValue ;\n\t}\n\tfloat h=0.0;\n\tif (maxValue != minValue) {\n\t\tif (maxValue == color.r) {\n\t\t\tif (color.g >= color.b) {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue);\n\t\t\t} else {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue) +360.0;\n\t\t\t}\n\t\t} else if (maxValue == color.g) {\n\t\t\th = 60.0 * (color.b - color.r) / (maxValue - minValue) +120.0;\n\t\t} else if (maxValue == color.b) {\n\t\t\th = 60.0 * (color.r - color.g) / (maxValue - minValue) + 240.0;\n\t\t}\n\t}\n\th += hOffset;\n\ts  += sOffset;\n\tv  += vOffset;\n\tif (h < 0.0) {\n\t\th = h + 360.0;\n\t} else if (h >= 360.0){\n\t\th = h - 360.0;\n\t}\n\tif (s > 1.0) {\n\t\ts =1.0;\n\t} else if (s < 0.0){\n\t\ts = 0.0;\n\t}\n\tif (v > 1.0) {\n\t\tv = 1.0;\n\t} else if (v < 0.0) {\n\t\tv = 0.0;\n\t}\n\tvec4 newColor = color;\n\tfloat hi = mod(floor(h / 60.0),6.0);\n\tfloat f = h /60.0 - hi;\n\tfloat p = (v * (1.0 - s));\n\tfloat q = (v * (1.0 - f * s));\n\tfloat t = (v * (1.0 - (1.0 - f) * s));\n\tif (hi == 0.0 ) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = t;\n\t\tnewColor.b = p;\n\t} else if ( hi == 1.0) {\n\t\tnewColor.r = q;\n\t\tnewColor.g = v;\n\t\tnewColor.b =p;\n\t} else if (hi == 2.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = v;\n\t\tnewColor.b = t;\n\t} else if (hi == 3.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = q;\n\t\tnewColor.b = v;\n\t} else if (hi == 4.0) {\n\t\tnewColor.r = t;\n\t\tnewColor.g = p;\n\t\tnewColor.b = v;\n\t} else if (hi == 5.0) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = p;\n\t\tnewColor.b =q;\n\t}\n\treturn newColor;\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nfloat rand(vec2 loc) {\n\tfloat theta1 = dot(loc, vec2(0.9898, 0.233));\n\tfloat theta2 = dot(loc, vec2(12.0, 78.0));\n\tfloat value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n\tfloat temp = mod(197.0 * value, 1.0) + value;\n\tfloat part1 = mod(220.0 * temp, 1.0) + temp;\n\tfloat part2 = value * 0.5453;\n\tfloat part3 = cos(theta1 + theta2) * 0.43758;\n\treturn fract(part1 + part2 + part3);\n}\nvec4 addNoise(vec4 color,vec2 coord) {\n\tfloat noise = rand(coord) * 0.05 - 0.05;\n\treturn vec4(color.r + noise,color.g + noise,color.b + noise,color.a);\n}\nvec4 calColorTemperature(vec4 color, float scale) {\n\tvec3 new_color = color.rgb;\n\tnew_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n\tnew_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n\tif (scale > 0.0) { \n\t\tnew_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n\t}\n\tfloat max_value = max(new_color.r, max(new_color.g, new_color.b));\n\tif (max_value > 1.0) { \n\t\tnew_color /= max_value;\n\t} \n\treturn vec4(new_color.rgb, color.a);\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calBrightnessContract(color, - 20.0 * 255.0 / 100.0, - 40.0 * 255.0 / 100.0, 128.0);\n\tcolor = calSaturation(color, -10.0 * 255.0 / 100.0);\n\tcolor = multiply(color,vec4(223.0 / 255.0, 148.0 / 255.0,45.0 / 255.0,0.4),1);\n\tcolor.r = calChannelColorLevel(color.r,13.0 / 255.0, 255.0 / 255.0, 0.83, 0.0 / 255.0, 255.0 / 255.0);\n\tcolor.g = calChannelColorLevel(color.g, 36.0 / 255.0, 244.0 / 255.0, 1.28, 0.0 / 255.0, 227.0 / 255.0);\n\tcolor.b = calChannelColorLevel(color.b,17.0 / 255.0,255.0 / 255.0, 0.86, 22.0 / 255.0, 255.0 /255.0);\n\tcolor = calColorLevel(color, 9.0 / 255.0, 226.0 / 255.0, 1.25, 15.0 / 255.0,224.0 / 255.0);\n\tcolor = calBrightnessContract(color, 15.0 * 255.0 / 100.0, 28.0 * 255.0 / 100.0, 128.0);\n\tcolor = multiply(color,vec4(223.0 / 255.0, 148.0 / 255.0,45.0 / 255.0,0.1),1);\n\tvec2 coord = v_texcoord;\n\tfloat diff = 0.08;\n\tfloat alpha =0.9;\n\tfloat dist = 0.0;\n\tvec4 newColor = vec4(165.0 / 255.0, 93.0 / 255.0, 53.0 / 255.0,1.0);\n\tvec4 gradientColor=vec4(1.0,1.0,1.0,1.0);\n\tif (coord.x < diff && coord.y < diff) {\n\t\tdist = (coord.x * coord.y) / (diff * diff);\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x > 1.0 - diff && coord.y < diff) {\n\t\tdist = ((1.0 - coord.x) * coord.y) / (diff * diff);\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x < diff && coord.y > 1.0 - diff ) {\n\t\tdist = (coord.x * (1.0 - coord.y)) / (diff * diff);\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x > 1.0 - diff && coord.y > 1.0 -diff) {\n\t\tdist = ((1.0 - coord.x)*(1.0 - coord.y)) / (diff * diff);\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x < diff) {\n\t\tdist = coord.x / diff;\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x > 1.0 - diff) {\n\t\tdist = (1.0 - coord.x) / diff;\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.y < diff) {\n\t\tdist = coord.y / diff;\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.y > 1.0 - diff) {\n\t\tdist = (1.0 - coord.y) / diff;\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n \t} else {\n\t\tnewColor = vec4(gradientColor.rgb,alpha);\n\t}\n\tnewColor = multiply(color,newColor,1);\n\tnewColor = (color + newColor) * 0.5;\n\talpha = 0.5;\n\tcolor = vec4(color.r * (1.0 - alpha) + newColor.r * alpha, color.g * (1.0 - alpha) + newColor.g * alpha, color.b * (1.0 - alpha) + newColor.b * alpha,color.a);\n\tcolor = calColorTemperature(color, -0.4);\n\tfloat len = length(coord - vec2(0.5,0.5));\n\tfloat radius = length(vec2(0.5,0.5));\n\tvec4 vignetteColor = calNewVignette(v_texcoord,color,textureWidth,textureHeight, 0.6);\n\talpha = length(v_texcoord - vec2(0.5,0.5)) / length(vec2(0.5,0.5));\n\tcolor = vec4(color.r * (1.0 - alpha) + vignetteColor.r * alpha,color.g * (1.0 - alpha) + vignetteColor.g * alpha,color.b * (1.0 - alpha) + vignetteColor.b * alpha,color.a);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mColdNostalgiaShader:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private initParameters()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "textureWidth"

    iget v2, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mWidth:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "textureHeight"

    iget v2, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mHeight:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 121
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 125
    packed-switch p2, :pswitch_data_0

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 130
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 131
    iput-object v0, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 145
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mTarget:I

    .line 146
    return-void

    .line 133
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calSaturation(vec4 color,float saturation) {\n\tsaturation = saturation / 255.0;\n\tfloat maxValue = max(color.r,max(color.g,color.b));\n\tfloat minValue = min(color.r,min(color.g,color.b));\n\tfloat delta = maxValue - minValue;\n\tif (delta == 0.0) {\n\t\treturn color;\n\t}\n\tfloat value = maxValue + minValue;\n\tfloat s = 0.0;\n\tfloat l = value / 2.0;\n\tif (l < 0.5) {\n\t\ts = delta / value;\n\t} else {\n\t\ts = delta / (2.0 - value);\n\t}\n\tif (saturation > 0.0) {\n\t\tsaturation = saturation + s >= 1.0 ? s : 1.0 - saturation;\n\t\tsaturation = 1.0 / saturation - 1.0;\n\t}\n\tcolor.r = color.r + (color.r - l) * saturation;\n\tcolor.g = color.g + (color.g - l) * saturation;\n\tcolor.b = color.b + (color.b - l) * saturation;\n\treturn color;\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightness(vec4 color,float brightness) {\n\treturn vec4(color.rgb + brightness / 255.0 ,color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nfloat calRChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordR = vec2(color,0.0);\n\tvec4 rColor = texture2D(curvemask,coordR);\n\treturn rColor.r;\n}\nfloat calGChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordG = vec2(color,0.0);\n\tvec4 gColor = texture2D(curvemask,coordG);\n\treturn gColor.g;\n}\nfloat calBChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordB = vec2(color,0.0);\n\tvec4 bColor = texture2D(curvemask,coordB);\n\treturn bColor.b;\n}\nvec4 calRGBChannelCurve(vec4 color,sampler2D curvemask) {\n\tvec2 coord = vec2( color.r, 0.0);\n\tvec4 newColor = texture2D(curvemask,coord);\n\tcolor.r = newColor.a;\n\tcoord = vec2(color.g, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.g = newColor.a;\n\tcoord = vec2(color.b, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.b = newColor.a;\n\treturn color;\n}\nvec4 calColorBalance(vec4 color,float rOffset,float gOffset,float bOffset) {\n\treturn vec4(color.r + rOffset / 255.0, color.g + gOffset / 255.0, color.b + bOffset / 255.0,  color.a);\n}\nvec4 calHSVAdjust(vec4 color,float hOffset,float sOffset,float vOffset) {\n\tfloat maxValue = max(max(color.r,color.g),color.b);\n\tfloat minValue = min(min(color.r,color.g),color.b);\n\tfloat v = maxValue;\n\tfloat s =0.0;\n\tif ( maxValue != 0.0) {\n\t\ts = (maxValue - minValue) * maxValue ;\n\t}\n\tfloat h=0.0;\n\tif (maxValue != minValue) {\n\t\tif (maxValue == color.r) {\n\t\t\tif (color.g >= color.b) {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue);\n\t\t\t} else {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue) +360.0;\n\t\t\t}\n\t\t} else if (maxValue == color.g) {\n\t\t\th = 60.0 * (color.b - color.r) / (maxValue - minValue) +120.0;\n\t\t} else if (maxValue == color.b) {\n\t\t\th = 60.0 * (color.r - color.g) / (maxValue - minValue) + 240.0;\n\t\t}\n\t}\n\th += hOffset;\n\ts  += sOffset;\n\tv  += vOffset;\n\tif (h < 0.0) {\n\t\th = h + 360.0;\n\t} else if (h >= 360.0){\n\t\th = h - 360.0;\n\t}\n\tif (s > 1.0) {\n\t\ts =1.0;\n\t} else if (s < 0.0){\n\t\ts = 0.0;\n\t}\n\tif (v > 1.0) {\n\t\tv = 1.0;\n\t} else if (v < 0.0) {\n\t\tv = 0.0;\n\t}\n\tvec4 newColor = color;\n\tfloat hi = mod(floor(h / 60.0),6.0);\n\tfloat f = h /60.0 - hi;\n\tfloat p = (v * (1.0 - s));\n\tfloat q = (v * (1.0 - f * s));\n\tfloat t = (v * (1.0 - (1.0 - f) * s));\n\tif (hi == 0.0 ) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = t;\n\t\tnewColor.b = p;\n\t} else if ( hi == 1.0) {\n\t\tnewColor.r = q;\n\t\tnewColor.g = v;\n\t\tnewColor.b =p;\n\t} else if (hi == 2.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = v;\n\t\tnewColor.b = t;\n\t} else if (hi == 3.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = q;\n\t\tnewColor.b = v;\n\t} else if (hi == 4.0) {\n\t\tnewColor.r = t;\n\t\tnewColor.g = p;\n\t\tnewColor.b = v;\n\t} else if (hi == 5.0) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = p;\n\t\tnewColor.b =q;\n\t}\n\treturn newColor;\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nfloat rand(vec2 loc) {\n\tfloat theta1 = dot(loc, vec2(0.9898, 0.233));\n\tfloat theta2 = dot(loc, vec2(12.0, 78.0));\n\tfloat value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n\tfloat temp = mod(197.0 * value, 1.0) + value;\n\tfloat part1 = mod(220.0 * temp, 1.0) + temp;\n\tfloat part2 = value * 0.5453;\n\tfloat part3 = cos(theta1 + theta2) * 0.43758;\n\treturn fract(part1 + part2 + part3);\n}\nvec4 addNoise(vec4 color,vec2 coord) {\n\tfloat noise = rand(coord) * 0.05 - 0.05;\n\treturn vec4(color.r + noise,color.g + noise,color.b + noise,color.a);\n}\nvec4 calColorTemperature(vec4 color, float scale) {\n\tvec3 new_color = color.rgb;\n\tnew_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n\tnew_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n\tif (scale > 0.0) { \n\t\tnew_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n\t}\n\tfloat max_value = max(new_color.r, max(new_color.g, new_color.b));\n\tif (max_value > 1.0) { \n\t\tnew_color /= max_value;\n\t} \n\treturn vec4(new_color.rgb, color.a);\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calBrightnessContract(color, - 20.0 * 255.0 / 100.0, - 40.0 * 255.0 / 100.0, 128.0);\n\tcolor = calSaturation(color, -10.0 * 255.0 / 100.0);\n\tcolor = multiply(color,vec4(223.0 / 255.0, 148.0 / 255.0,45.0 / 255.0,0.4),1);\n\tcolor.r = calChannelColorLevel(color.r,13.0 / 255.0, 255.0 / 255.0, 0.83, 0.0 / 255.0, 255.0 / 255.0);\n\tcolor.g = calChannelColorLevel(color.g, 36.0 / 255.0, 244.0 / 255.0, 1.28, 0.0 / 255.0, 227.0 / 255.0);\n\tcolor.b = calChannelColorLevel(color.b,17.0 / 255.0,255.0 / 255.0, 0.86, 22.0 / 255.0, 255.0 /255.0);\n\tcolor = calColorLevel(color, 9.0 / 255.0, 226.0 / 255.0, 1.25, 15.0 / 255.0,224.0 / 255.0);\n\tcolor = calBrightnessContract(color, 15.0 * 255.0 / 100.0, 28.0 * 255.0 / 100.0, 128.0);\n\tcolor = multiply(color,vec4(223.0 / 255.0, 148.0 / 255.0,45.0 / 255.0,0.1),1);\n\tvec2 coord = v_texcoord;\n\tfloat diff = 0.08;\n\tfloat alpha =0.9;\n\tfloat dist = 0.0;\n\tvec4 newColor = vec4(165.0 / 255.0, 93.0 / 255.0, 53.0 / 255.0,1.0);\n\tvec4 gradientColor=vec4(1.0,1.0,1.0,1.0);\n\tif (coord.x < diff && coord.y < diff) {\n\t\tdist = (coord.x * coord.y) / (diff * diff);\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x > 1.0 - diff && coord.y < diff) {\n\t\tdist = ((1.0 - coord.x) * coord.y) / (diff * diff);\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x < diff && coord.y > 1.0 - diff ) {\n\t\tdist = (coord.x * (1.0 - coord.y)) / (diff * diff);\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x > 1.0 - diff && coord.y > 1.0 -diff) {\n\t\tdist = ((1.0 - coord.x)*(1.0 - coord.y)) / (diff * diff);\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x < diff) {\n\t\tdist = coord.x / diff;\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.x > 1.0 - diff) {\n\t\tdist = (1.0 - coord.x) / diff;\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.y < diff) {\n\t\tdist = coord.y / diff;\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n\t} else if (coord.y > 1.0 - diff) {\n\t\tdist = (1.0 - coord.y) / diff;\n\t\tnewColor = vec4(gradientColor.r * dist + newColor.r * (1.0 - dist), gradientColor.g * dist + newColor.g * (1.0 - dist), gradientColor.b * dist + newColor.b * (1.0 - dist),alpha);\n \t} else {\n\t\tnewColor = vec4(gradientColor.rgb,alpha);\n\t}\n\tnewColor = multiply(color,newColor,1);\n\tnewColor = (color + newColor) * 0.5;\n\talpha = 0.5;\n\tcolor = vec4(color.r * (1.0 - alpha) + newColor.r * alpha, color.g * (1.0 - alpha) + newColor.g * alpha, color.b * (1.0 - alpha) + newColor.b * alpha,color.a);\n\tcolor = calColorTemperature(color, -0.4);\n\tfloat len = length(coord - vec2(0.5,0.5));\n\tfloat radius = length(vec2(0.5,0.5));\n\tvec4 vignetteColor = calNewVignette(v_texcoord,color,textureWidth,textureHeight, 0.6);\n\talpha = length(v_texcoord - vec2(0.5,0.5)) / length(vec2(0.5,0.5));\n\tcolor = vec4(color.r * (1.0 - alpha) + vignetteColor.r * alpha,color.g * (1.0 - alpha) + vignetteColor.g * alpha,color.b * (1.0 - alpha) + vignetteColor.b * alpha,color.a);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 135
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 136
    iput-object v0, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 156
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 157
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 160
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 161
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 165
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 167
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mWidth:I

    .line 168
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mHeight:I

    .line 169
    invoke-direct {p0}, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->initParameters()V

    .line 173
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 176
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 179
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 182
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 183
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 116
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ColdNostalgiaFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method
