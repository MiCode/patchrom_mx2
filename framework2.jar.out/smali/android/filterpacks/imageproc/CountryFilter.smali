.class public Landroid/filterpacks/imageproc/CountryFilter;
.super Landroid/filterfw/core/Filter;
.source "CountryFilter.java"


# instance fields
.field private final mCountryShader:Ljava/lang/String;

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

    .line 68
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 19
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/CountryFilter;->mTileSize:I

    .line 27
    iput v1, p0, Landroid/filterpacks/imageproc/CountryFilter;->mWidth:I

    .line 28
    iput v1, p0, Landroid/filterpacks/imageproc/CountryFilter;->mHeight:I

    .line 29
    iput v1, p0, Landroid/filterpacks/imageproc/CountryFilter;->mTarget:I

    .line 31
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightness(vec4 color,float brightness) {\n\treturn vec4(color.rgb + brightness / 255.0 ,color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calBrightness(color, -18.0);\n\tcolor = calNewSaturation(color,-75.0);\n\tcolor = calPhotoFilter(color,vec3(92.0 / 255.0,68.0 / 255.0, 35.0 / 255.0),50.0);\n\tcolor.r = calChannelColorLevel(color.r,  13.0 / 255.0, 255.0 / 255.0, 0.83, 0.0 / 255.0, 225.0 / 255.0);\n\tcolor.g = calChannelColorLevel(color.g, 36.0 / 255.0, 244.0 / 255.0, 1.28, 0.0 / 255.0, 227.0 / 255.0);\n\tcolor.b = calChannelColorLevel(color.b, 17.0 / 255.0, 255.0 / 255.0, 0.86, 22.0 / 255.0, 255.0 / 255.0);\n\tcolor = calColorLevel(color, 5.0 / 255.0, 244.0 /255.0, 1.31, 14.0 / 255.0, 232.0 / 255.0);\n\tcolor = calBrightness(color, 18.0);\n\tcolor = calBrightnessContract(color,18.0, -13.0, 128.0);\n\tcolor = calPhotoFilter(color,vec3(119.0 / 255.0, 84.0 / 255.0, 23.0 / 255.0),50.0);\n\tvec2 coord = v_texcoord;\n\tfloat len = length(coord - vec2(0.5,0.5));\n\tfloat radius = length(vec2(0.5,0.5));\n\tvec4 color1 = vec4(1.0,1.0,1.0,1.0);\n\tvec4 color2 = vec4(0.0,0.0,0.0,0.0);\n\tfloat alpha = 0.2;\n\tfloat dist = len / radius;\n\tcolor1 = vec4(color1.rgb,color1.a * (1.0 - dist) + color2.a * dist);\n\tcolor1 = vec4(color.r * (1.0 - color1.a) + color1.r * color1.a, color.g * (1.0 - color1.a) + color1.g * color1.a,color.b * (1.0 - color1.a) + color1.b * color1.a,color.a);\n\tcolor = vec4(color.r * (1.0 - alpha) + color1.r * alpha,color.g * (1.0 - alpha) + color1.g * alpha, color.b * (1.0 - alpha) + color1.b * alpha,color.a);\n\tcolor = calBrightnessContract(color, 30.0, 100.0, 128.0);\n\tcolor = calBrightnessContract(color, 0.0, 55.0, 128.0);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/CountryFilter;->mCountryShader:Ljava/lang/String;

    .line 69
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
    iget-object v1, p0, Landroid/filterpacks/imageproc/CountryFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/CountryFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 89
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/CountryFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 90
    iput-object v0, p0, Landroid/filterpacks/imageproc/CountryFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 104
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/CountryFilter;->mTarget:I

    .line 105
    return-void

    .line 92
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightness(vec4 color,float brightness) {\n\treturn vec4(color.rgb + brightness / 255.0 ,color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calBrightness(color, -18.0);\n\tcolor = calNewSaturation(color,-75.0);\n\tcolor = calPhotoFilter(color,vec3(92.0 / 255.0,68.0 / 255.0, 35.0 / 255.0),50.0);\n\tcolor.r = calChannelColorLevel(color.r,  13.0 / 255.0, 255.0 / 255.0, 0.83, 0.0 / 255.0, 225.0 / 255.0);\n\tcolor.g = calChannelColorLevel(color.g, 36.0 / 255.0, 244.0 / 255.0, 1.28, 0.0 / 255.0, 227.0 / 255.0);\n\tcolor.b = calChannelColorLevel(color.b, 17.0 / 255.0, 255.0 / 255.0, 0.86, 22.0 / 255.0, 255.0 / 255.0);\n\tcolor = calColorLevel(color, 5.0 / 255.0, 244.0 /255.0, 1.31, 14.0 / 255.0, 232.0 / 255.0);\n\tcolor = calBrightness(color, 18.0);\n\tcolor = calBrightnessContract(color,18.0, -13.0, 128.0);\n\tcolor = calPhotoFilter(color,vec3(119.0 / 255.0, 84.0 / 255.0, 23.0 / 255.0),50.0);\n\tvec2 coord = v_texcoord;\n\tfloat len = length(coord - vec2(0.5,0.5));\n\tfloat radius = length(vec2(0.5,0.5));\n\tvec4 color1 = vec4(1.0,1.0,1.0,1.0);\n\tvec4 color2 = vec4(0.0,0.0,0.0,0.0);\n\tfloat alpha = 0.2;\n\tfloat dist = len / radius;\n\tcolor1 = vec4(color1.rgb,color1.a * (1.0 - dist) + color2.a * dist);\n\tcolor1 = vec4(color.r * (1.0 - color1.a) + color1.r * color1.a, color.g * (1.0 - color1.a) + color1.g * color1.a,color.b * (1.0 - color1.a) + color1.b * color1.a,color.a);\n\tcolor = vec4(color.r * (1.0 - alpha) + color1.r * alpha,color.g * (1.0 - alpha) + color1.g * alpha, color.b * (1.0 - alpha) + color1.b * alpha,color.a);\n\tcolor = calBrightnessContract(color, 30.0, 100.0, 128.0);\n\tcolor = calBrightnessContract(color, 0.0, 55.0, 128.0);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 94
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/CountryFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 95
    iput-object v0, p0, Landroid/filterpacks/imageproc/CountryFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 113
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/CountryFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 114
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 117
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/CountryFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/CountryFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 118
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/CountryFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 122
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/CountryFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/CountryFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 124
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/CountryFilter;->mWidth:I

    .line 125
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/CountryFilter;->mHeight:I

    .line 126
    invoke-direct {p0}, Landroid/filterpacks/imageproc/CountryFilter;->initParameters()V

    .line 130
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 133
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/CountryFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 136
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/CountryFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 139
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 140
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

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CountryFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 75
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CountryFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
