.class public Landroid/filterpacks/imageproc/GrassFilter;
.super Landroid/filterfw/core/Filter;
.source "GrassFilter.java"


# instance fields
.field private final mGrassShader:Ljava/lang/String;

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

    .line 65
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 19
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/GrassFilter;->mTileSize:I

    .line 27
    iput v1, p0, Landroid/filterpacks/imageproc/GrassFilter;->mWidth:I

    .line 28
    iput v1, p0, Landroid/filterpacks/imageproc/GrassFilter;->mHeight:I

    .line 29
    iput v1, p0, Landroid/filterpacks/imageproc/GrassFilter;->mTarget:I

    .line 31
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nvec4 calColorTemperature(vec4 color, float scale) {\n\tvec3 new_color = color.rgb;\n\tnew_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n\tnew_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n\tif (scale > 0.0) { \n\t\tnew_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n\t}\n\tfloat max_value = max(new_color.r, max(new_color.g, new_color.b));\n\tif (max_value > 1.0) { \n\t\tnew_color /= max_value;\n\t} \n\treturn vec4(new_color.rgb, color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = multiply(color,vec4(242.0 / 255.0, 250.0 / 255.0, 187.0 / 255.0,1.0),0);\n\tcolor = calPhotoFilter(color, vec3(178.0 / 255.0, 252.0 / 255.0, 142.0 / 255.0), 15.0);\n\tcolor = calBrightnessContract(color, 55.0, 40.0, 128.0);\n\tvec4 color1 = vec4(0.0 / 255.0, 0.0 / 255.0, 0.0 / 255.0, 1.0);\n\tvec4 color2 = vec4(255.0 / 255.0,  255.0 / 255.0, 255.0 / 255.0, 0.0);\n\tvec2 coord = v_texcoord;\n\tfloat diff = 0.3;\n\tif (coord.y <= diff) {\n\t\tfloat dist = (diff - coord.y) / diff;\n\t\tcolor1 = vec4(color1.r * dist + color2.r * (1.0 - dist), color1.g * dist + color2.g * (1.0 - dist),color1.b * dist + color2.b * (1.0 - dist),color1.a);\n\t} else if (coord.y >= 1.0 - diff){\n\t\tfloat dist = (coord.y - 1.0 + diff) / diff;\n\t\tcolor1 = vec4(color2.r * (1.0 - dist) + color1.r * dist, color2.g * (1.0 - dist) + color1.g * dist,color2.b * (1.0 - dist) + color1.b * dist,color1.a);\n\t} else {\n\t\tcolor1 = color2;\n\t}\n\tcolor = multiply(color,vec4(color1.rgb, 0.5),1);\n\tcolor = calBrightnessContract(color, -70.0, 0.0, 128.0);\n\tcolor = calColorTemperature(color, -0.5);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrassFilter;->mGrassShader:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private initParameters()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 77
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 81
    packed-switch p2, :pswitch_data_0

    .line 97
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

    .line 83
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/GrassFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/GrassFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 86
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/GrassFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 87
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrassFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 101
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/GrassFilter;->mTarget:I

    .line 102
    return-void

    .line 89
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nvec4 calColorTemperature(vec4 color, float scale) {\n\tvec3 new_color = color.rgb;\n\tnew_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n\tnew_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n\tif (scale > 0.0) { \n\t\tnew_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n\t}\n\tfloat max_value = max(new_color.r, max(new_color.g, new_color.b));\n\tif (max_value > 1.0) { \n\t\tnew_color /= max_value;\n\t} \n\treturn vec4(new_color.rgb, color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = multiply(color,vec4(242.0 / 255.0, 250.0 / 255.0, 187.0 / 255.0,1.0),0);\n\tcolor = calPhotoFilter(color, vec3(178.0 / 255.0, 252.0 / 255.0, 142.0 / 255.0), 15.0);\n\tcolor = calBrightnessContract(color, 55.0, 40.0, 128.0);\n\tvec4 color1 = vec4(0.0 / 255.0, 0.0 / 255.0, 0.0 / 255.0, 1.0);\n\tvec4 color2 = vec4(255.0 / 255.0,  255.0 / 255.0, 255.0 / 255.0, 0.0);\n\tvec2 coord = v_texcoord;\n\tfloat diff = 0.3;\n\tif (coord.y <= diff) {\n\t\tfloat dist = (diff - coord.y) / diff;\n\t\tcolor1 = vec4(color1.r * dist + color2.r * (1.0 - dist), color1.g * dist + color2.g * (1.0 - dist),color1.b * dist + color2.b * (1.0 - dist),color1.a);\n\t} else if (coord.y >= 1.0 - diff){\n\t\tfloat dist = (coord.y - 1.0 + diff) / diff;\n\t\tcolor1 = vec4(color2.r * (1.0 - dist) + color1.r * dist, color2.g * (1.0 - dist) + color1.g * dist,color2.b * (1.0 - dist) + color1.b * dist,color1.a);\n\t} else {\n\t\tcolor1 = color2;\n\t}\n\tcolor = multiply(color,vec4(color1.rgb, 0.5),1);\n\tcolor = calBrightnessContract(color, -70.0, 0.0, 128.0);\n\tcolor = calColorTemperature(color, -0.5);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 91
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/GrassFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 92
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrassFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 110
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/GrassFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 111
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 114
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/GrassFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/GrassFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 115
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/GrassFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 119
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/GrassFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/GrassFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 121
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/GrassFilter;->mWidth:I

    .line 122
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/GrassFilter;->mHeight:I

    .line 123
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrassFilter;->initParameters()V

    .line 127
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 130
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/GrassFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 133
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/GrassFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 136
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 137
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrassFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 72
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrassFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
