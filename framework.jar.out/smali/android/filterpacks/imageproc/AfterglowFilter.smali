.class public Landroid/filterpacks/imageproc/AfterglowFilter;
.super Landroid/filterfw/core/Filter;
.source "AfterglowFilter.java"


# instance fields
.field private final mAfterglowShader:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "texture"
    .end annotation
.end field

.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mShaderCode:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "ShaderCode"
    .end annotation
.end field

.field private mTarget:I

.field private mTextureFrame:Landroid/filterfw/core/Frame;

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

    .line 68
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 20
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mTileSize:I

    .line 33
    iput v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mWidth:I

    .line 34
    iput v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mHeight:I

    .line 35
    iput v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mTarget:I

    .line 37
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calSaturation(vec4 color,float saturation) {\n\tsaturation = saturation / 255.0;\n\tfloat maxValue = max(color.r,max(color.g,color.b));\n\tfloat minValue = min(color.r,min(color.g,color.b));\n\tfloat delta = maxValue - minValue;\n\tif (delta == 0.0) {\n\t\treturn color;\n\t}\n\tfloat value = maxValue + minValue;\n\tfloat s = 0.0;\n\tfloat l = value / 2.0;\n\tif (l < 0.5) {\n\t\ts = delta / value;\n\t} else {\n\t\ts = delta / (2.0 - value);\n\t}\n\tif (saturation > 0.0) {\n\t\tsaturation = saturation + s >= 1.0 ? s : 1.0 - saturation;\n\t\tsaturation = 1.0 / saturation - 1.0;\n\t}\n\tcolor.r = color.r + (color.r - l) * saturation;\n\tcolor.g = color.g + (color.g - l) * saturation;\n\tcolor.b = color.b + (color.b - l) * saturation;\n\treturn color;\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightness(vec4 color,float brightness) {\n\treturn vec4(color.rgb + brightness / 255.0 ,color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nfloat calRChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordR = vec2(color,0.0);\n\tvec4 rColor = texture2D(curvemask,coordR);\n\treturn rColor.r;\n}\nfloat calGChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordG = vec2(color,0.0);\n\tvec4 gColor = texture2D(curvemask,coordG);\n\treturn gColor.g;\n}\nfloat calBChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordB = vec2(color,0.0);\n\tvec4 bColor = texture2D(curvemask,coordB);\n\treturn bColor.b;\n}\nvec4 calRGBChannelCurve(vec4 color,sampler2D curvemask) {\n\tvec2 coord = vec2( color.r, 0.0);\n\tvec4 newColor = texture2D(curvemask,coord);\n\tcolor.r = newColor.a;\n\tcoord = vec2(color.g, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.g = newColor.a;\n\tcoord = vec2(color.b, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.b = newColor.a;\n\treturn color;\n}\nvec4 calColorBalance(vec4 color,float rOffset,float gOffset,float bOffset) {\n\treturn vec4(color.r + rOffset / 255.0, color.g + gOffset / 255.0, color.b + bOffset / 255.0,  color.a);\n}\nvec4 calHSVAdjust(vec4 color,float hOffset,float sOffset,float vOffset) {\n\tfloat maxValue = max(max(color.r,color.g),color.b);\n\tfloat minValue = min(min(color.r,color.g),color.b);\n\tfloat v = maxValue;\n\tfloat s =0.0;\n\tif ( maxValue != 0.0) {\n\t\ts = (maxValue - minValue) * maxValue ;\n\t}\n\tfloat h=0.0;\n\tif (maxValue != minValue) {\n\t\tif (maxValue == color.r) {\n\t\t\tif (color.g >= color.b) {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue);\n\t\t\t} else {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue) +360.0;\n\t\t\t}\n\t\t} else if (maxValue == color.g) {\n\t\t\th = 60.0 * (color.b - color.r) / (maxValue - minValue) +120.0;\n\t\t} else if (maxValue == color.b) {\n\t\t\th = 60.0 * (color.r - color.g) / (maxValue - minValue) + 240.0;\n\t\t}\n\t}\n\th += hOffset;\n\ts  += sOffset;\n\tv  += vOffset;\n\tif (h < 0.0) {\n\t\th = h + 360.0;\n\t} else if (h >= 360.0){\n\t\th = h - 360.0;\n\t}\n\tif (s > 1.0) {\n\t\ts =1.0;\n\t} else if (s < 0.0){\n\t\ts = 0.0;\n\t}\n\tif (v > 1.0) {\n\t\tv = 1.0;\n\t} else if (v < 0.0) {\n\t\tv = 0.0;\n\t}\n\tvec4 newColor = color;\n\tfloat hi = mod(floor(h / 60.0),6.0);\n\tfloat f = h /60.0 - hi;\n\tfloat p = (v * (1.0 - s));\n\tfloat q = (v * (1.0 - f * s));\n\tfloat t = (v * (1.0 - (1.0 - f) * s));\n\tif (hi == 0.0 ) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = t;\n\t\tnewColor.b = p;\n\t} else if ( hi == 1.0) {\n\t\tnewColor.r = q;\n\t\tnewColor.g = v;\n\t\tnewColor.b =p;\n\t} else if (hi == 2.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = v;\n\t\tnewColor.b = t;\n\t} else if (hi == 3.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = q;\n\t\tnewColor.b = v;\n\t} else if (hi == 4.0) {\n\t\tnewColor.r = t;\n\t\tnewColor.g = p;\n\t\tnewColor.b = v;\n\t} else if (hi == 5.0) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = p;\n\t\tnewColor.b =q;\n\t}\n\treturn newColor;\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nfloat rand(vec2 loc) {\n\tfloat theta1 = dot(loc, vec2(0.9898, 0.233));\n\tfloat theta2 = dot(loc, vec2(12.0, 78.0));\n\tfloat value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n\tfloat temp = mod(197.0 * value, 1.0) + value;\n\tfloat part1 = mod(220.0 * temp, 1.0) + temp;\n\tfloat part2 = value * 0.5453;\n\tfloat part3 = cos(theta1 + theta2) * 0.43758;\n\treturn fract(part1 + part2 + part3);\n}\nvec4 addNoise(vec4 color,vec2 coord) {\n\tfloat noise = rand(coord) * 0.05 - 0.05;\n\treturn vec4(color.r + noise,color.g + noise,color.b + noise,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calBrightness(color,10.0 * 255.0 / 100.0);\n\tcolor = calBrightnessContract(color, -15.0 * 255.0 / 100.0, 0.0 * 255.0 / 100.0,128.0);\n\tcolor.g = calChannelColorLevel(color.g, 48.0 / 255.0, 230.0 / 255.0, 1.00, 25.0 / 255.0, 240.0 / 255.0);\n\tcolor.b = calChannelColorLevel(color.b, 22.0 / 255.0, 241.0 / 255.0, 0.69, 28.0 / 255.0, 219.0 / 255.0);\n\tcolor = calColorLevel(color, 39.0 / 255.0, 243.0 / 255.0, 1.18, 6.0 / 255.0, 227.0 / 255.0);\n\tcolor = calPhotoFilter(color,vec3(1.0,1.0,0.0),5.0);\n\tvec4 color1 = texture2D(tex_sampler_1,v_texcoord);\n\tvec4 color2 = multiply(color,color1,0);\n\tcolor = calPhotoFilter(color,color2.rgb,90.0);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mAfterglowShader:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private createTextureFrameFromBitmap(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    .line 149
    iget v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mHeight:I

    invoke-static {v1, v2, v3, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 151
    .local v0, format:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mTextureFrame:Landroid/filterfw/core/Frame;

    .line 152
    iget-object v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mTextureFrame:Landroid/filterfw/core/Frame;

    iget-object v2, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mWidth:I

    iget v4, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mHeight:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    return-void
.end method

.method private initParameters()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 80
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 84
    packed-switch p2, :pswitch_data_0

    .line 100
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

    .line 86
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 89
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 90
    iput-object v0, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 104
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mTarget:I

    .line 105
    return-void

    .line 92
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calSaturation(vec4 color,float saturation) {\n\tsaturation = saturation / 255.0;\n\tfloat maxValue = max(color.r,max(color.g,color.b));\n\tfloat minValue = min(color.r,min(color.g,color.b));\n\tfloat delta = maxValue - minValue;\n\tif (delta == 0.0) {\n\t\treturn color;\n\t}\n\tfloat value = maxValue + minValue;\n\tfloat s = 0.0;\n\tfloat l = value / 2.0;\n\tif (l < 0.5) {\n\t\ts = delta / value;\n\t} else {\n\t\ts = delta / (2.0 - value);\n\t}\n\tif (saturation > 0.0) {\n\t\tsaturation = saturation + s >= 1.0 ? s : 1.0 - saturation;\n\t\tsaturation = 1.0 / saturation - 1.0;\n\t}\n\tcolor.r = color.r + (color.r - l) * saturation;\n\tcolor.g = color.g + (color.g - l) * saturation;\n\tcolor.b = color.b + (color.b - l) * saturation;\n\treturn color;\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightness(vec4 color,float brightness) {\n\treturn vec4(color.rgb + brightness / 255.0 ,color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nfloat calRChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordR = vec2(color,0.0);\n\tvec4 rColor = texture2D(curvemask,coordR);\n\treturn rColor.r;\n}\nfloat calGChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordG = vec2(color,0.0);\n\tvec4 gColor = texture2D(curvemask,coordG);\n\treturn gColor.g;\n}\nfloat calBChannelCurve(float color,sampler2D curvemask) {\n\tvec2 coordB = vec2(color,0.0);\n\tvec4 bColor = texture2D(curvemask,coordB);\n\treturn bColor.b;\n}\nvec4 calRGBChannelCurve(vec4 color,sampler2D curvemask) {\n\tvec2 coord = vec2( color.r, 0.0);\n\tvec4 newColor = texture2D(curvemask,coord);\n\tcolor.r = newColor.a;\n\tcoord = vec2(color.g, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.g = newColor.a;\n\tcoord = vec2(color.b, 0.0);\n\tnewColor = texture2D(curvemask,coord);\n\tcolor.b = newColor.a;\n\treturn color;\n}\nvec4 calColorBalance(vec4 color,float rOffset,float gOffset,float bOffset) {\n\treturn vec4(color.r + rOffset / 255.0, color.g + gOffset / 255.0, color.b + bOffset / 255.0,  color.a);\n}\nvec4 calHSVAdjust(vec4 color,float hOffset,float sOffset,float vOffset) {\n\tfloat maxValue = max(max(color.r,color.g),color.b);\n\tfloat minValue = min(min(color.r,color.g),color.b);\n\tfloat v = maxValue;\n\tfloat s =0.0;\n\tif ( maxValue != 0.0) {\n\t\ts = (maxValue - minValue) * maxValue ;\n\t}\n\tfloat h=0.0;\n\tif (maxValue != minValue) {\n\t\tif (maxValue == color.r) {\n\t\t\tif (color.g >= color.b) {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue);\n\t\t\t} else {\n\t\t\t\th = 60.0 * (color.g - color.b) / (maxValue - minValue) +360.0;\n\t\t\t}\n\t\t} else if (maxValue == color.g) {\n\t\t\th = 60.0 * (color.b - color.r) / (maxValue - minValue) +120.0;\n\t\t} else if (maxValue == color.b) {\n\t\t\th = 60.0 * (color.r - color.g) / (maxValue - minValue) + 240.0;\n\t\t}\n\t}\n\th += hOffset;\n\ts  += sOffset;\n\tv  += vOffset;\n\tif (h < 0.0) {\n\t\th = h + 360.0;\n\t} else if (h >= 360.0){\n\t\th = h - 360.0;\n\t}\n\tif (s > 1.0) {\n\t\ts =1.0;\n\t} else if (s < 0.0){\n\t\ts = 0.0;\n\t}\n\tif (v > 1.0) {\n\t\tv = 1.0;\n\t} else if (v < 0.0) {\n\t\tv = 0.0;\n\t}\n\tvec4 newColor = color;\n\tfloat hi = mod(floor(h / 60.0),6.0);\n\tfloat f = h /60.0 - hi;\n\tfloat p = (v * (1.0 - s));\n\tfloat q = (v * (1.0 - f * s));\n\tfloat t = (v * (1.0 - (1.0 - f) * s));\n\tif (hi == 0.0 ) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = t;\n\t\tnewColor.b = p;\n\t} else if ( hi == 1.0) {\n\t\tnewColor.r = q;\n\t\tnewColor.g = v;\n\t\tnewColor.b =p;\n\t} else if (hi == 2.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = v;\n\t\tnewColor.b = t;\n\t} else if (hi == 3.0) {\n\t\tnewColor.r = p;\n\t\tnewColor.g = q;\n\t\tnewColor.b = v;\n\t} else if (hi == 4.0) {\n\t\tnewColor.r = t;\n\t\tnewColor.g = p;\n\t\tnewColor.b = v;\n\t} else if (hi == 5.0) {\n\t\tnewColor.r = v;\n\t\tnewColor.g = p;\n\t\tnewColor.b =q;\n\t}\n\treturn newColor;\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nfloat rand(vec2 loc) {\n\tfloat theta1 = dot(loc, vec2(0.9898, 0.233));\n\tfloat theta2 = dot(loc, vec2(12.0, 78.0));\n\tfloat value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n\tfloat temp = mod(197.0 * value, 1.0) + value;\n\tfloat part1 = mod(220.0 * temp, 1.0) + temp;\n\tfloat part2 = value * 0.5453;\n\tfloat part3 = cos(theta1 + theta2) * 0.43758;\n\treturn fract(part1 + part2 + part3);\n}\nvec4 addNoise(vec4 color,vec2 coord) {\n\tfloat noise = rand(coord) * 0.05 - 0.05;\n\treturn vec4(color.r + noise,color.g + noise,color.b + noise,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calBrightness(color,10.0 * 255.0 / 100.0);\n\tcolor = calBrightnessContract(color, -15.0 * 255.0 / 100.0, 0.0 * 255.0 / 100.0,128.0);\n\tcolor.g = calChannelColorLevel(color.g, 48.0 / 255.0, 230.0 / 255.0, 1.00, 25.0 / 255.0, 240.0 / 255.0);\n\tcolor.b = calChannelColorLevel(color.b, 22.0 / 255.0, 241.0 / 255.0, 0.69, 28.0 / 255.0, 219.0 / 255.0);\n\tcolor = calColorLevel(color, 39.0 / 255.0, 243.0 / 255.0, 1.18, 6.0 / 255.0, 227.0 / 255.0);\n\tcolor = calPhotoFilter(color,vec3(1.0,1.0,0.0),5.0);\n\tvec4 color1 = texture2D(tex_sampler_1,v_texcoord);\n\tvec4 color2 = multiply(color,color1,0);\n\tcolor = calPhotoFilter(color,color2.rgb,90.0);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 94
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 95
    iput-object v0, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 113
    const-string v4, "image"

    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/AfterglowFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 114
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 117
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v4, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mTarget:I

    if-eq v4, v5, :cond_1

    .line 118
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/AfterglowFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 122
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mWidth:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mHeight:I

    if-eq v4, v5, :cond_3

    .line 124
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mWidth:I

    .line 125
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mHeight:I

    .line 126
    invoke-direct {p0}, Landroid/filterpacks/imageproc/AfterglowFilter;->initParameters()V

    .line 127
    invoke-direct {p0, p1}, Landroid/filterpacks/imageproc/AfterglowFilter;->createTextureFrameFromBitmap(Landroid/filterfw/core/FilterContext;)V

    .line 131
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 135
    .local v3, output:Landroid/filterfw/core/Frame;
    const/4 v4, 0x2

    new-array v2, v4, [Landroid/filterfw/core/Frame;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mTextureFrame:Landroid/filterfw/core/Frame;

    aput-object v5, v2, v4

    .line 138
    .local v2, inputs:[Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/AfterglowFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v2, v3}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 141
    const-string v4, "image"

    invoke-virtual {p0, v4, v3}, Landroid/filterpacks/imageproc/AfterglowFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 144
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 145
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/AfterglowFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 75
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/AfterglowFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
