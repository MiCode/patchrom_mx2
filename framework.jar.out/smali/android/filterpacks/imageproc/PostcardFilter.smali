.class public Landroid/filterpacks/imageproc/PostcardFilter;
.super Landroid/filterfw/core/Filter;
.source "PostcardFilter.java"


# instance fields
.field private mHeight:I

.field private final mPostcardShader:Ljava/lang/String;

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

    .line 63
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 22
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mTileSize:I

    .line 30
    iput v1, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mWidth:I

    .line 31
    iput v1, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mHeight:I

    .line 32
    iput v1, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mTarget:I

    .line 34
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor.r = calChannelColorLevel(color.r,  32.0 / 255.0, 232.0 / 255.0, 0.75, 34.0 / 255.0, 233.0 / 255.0);\n\tcolor.g = calChannelColorLevel(color.g, 59.0 / 255.0, 216.0 / 255.0, 1.37, 20.0 / 255.0, 227.0 / 255.0);\n\tcolor.b = calChannelColorLevel(color.b, 34.0 / 255.0, 210.0 / 255.0, 0.68, 25.0 / 255.0, 216.0 / 255.0);\n\tcolor = calColorLevel(color, 37.0 / 255.0, 215.0 /255.0, 1.3, 19.0 / 255.0, 230.0 / 255.0);\n\tfloat len = length(v_texcoord - vec2(0.5,0.5));\n\tfloat radius = length(vec2(0.5,0.5));\n\tvec4 color1 = vec4(1.0, 1.0, 1.0, 0.0);\n\tvec4 color2 = vec4(0.0, 0.0, 0.0, 1.0);\n\tfloat alpha = 0.01;\n\tfloat diff = 0.4;\n\tlen = len - diff;\n\tlen = len > 0.0 ? len : 0.0;\n\tfloat dist = len / (radius - diff);\n\tcolor1 = vec4(color1.rgb,color1.a * (1.0 - dist) + color2.a * dist);\n\tcolor1 = vec4(color.r * (1.0 - color1.a) + color1.r * color1.a, color.g * (1.0 - color1.a) + color1.g * color1.a,color.b * (1.0 - color1.a) + color1.b * color1.a,color.a);\n\tcolor = vec4(color.r * (1.0 - alpha) + color1.r * alpha,color.g * (1.0 - alpha) + color1.g * alpha, color.b * (1.0 - alpha) + color1.b * alpha,color.a);\n\tcolor = calBrightnessContract(color, 0.0, -30.0, 128.0);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mPostcardShader:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private initParameters()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 75
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 79
    packed-switch p2, :pswitch_data_0

    .line 95
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

    .line 81
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 84
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 85
    iput-object v0, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 99
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mTarget:I

    .line 100
    return-void

    .line 87
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor.r = calChannelColorLevel(color.r,  32.0 / 255.0, 232.0 / 255.0, 0.75, 34.0 / 255.0, 233.0 / 255.0);\n\tcolor.g = calChannelColorLevel(color.g, 59.0 / 255.0, 216.0 / 255.0, 1.37, 20.0 / 255.0, 227.0 / 255.0);\n\tcolor.b = calChannelColorLevel(color.b, 34.0 / 255.0, 210.0 / 255.0, 0.68, 25.0 / 255.0, 216.0 / 255.0);\n\tcolor = calColorLevel(color, 37.0 / 255.0, 215.0 /255.0, 1.3, 19.0 / 255.0, 230.0 / 255.0);\n\tfloat len = length(v_texcoord - vec2(0.5,0.5));\n\tfloat radius = length(vec2(0.5,0.5));\n\tvec4 color1 = vec4(1.0, 1.0, 1.0, 0.0);\n\tvec4 color2 = vec4(0.0, 0.0, 0.0, 1.0);\n\tfloat alpha = 0.01;\n\tfloat diff = 0.4;\n\tlen = len - diff;\n\tlen = len > 0.0 ? len : 0.0;\n\tfloat dist = len / (radius - diff);\n\tcolor1 = vec4(color1.rgb,color1.a * (1.0 - dist) + color2.a * dist);\n\tcolor1 = vec4(color.r * (1.0 - color1.a) + color1.r * color1.a, color.g * (1.0 - color1.a) + color1.g * color1.a,color.b * (1.0 - color1.a) + color1.b * color1.a,color.a);\n\tcolor = vec4(color.r * (1.0 - alpha) + color1.r * alpha,color.g * (1.0 - alpha) + color1.g * alpha, color.b * (1.0 - alpha) + color1.b * alpha,color.a);\n\tcolor = calBrightnessContract(color, 0.0, -30.0, 128.0);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 89
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 90
    iput-object v0, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 108
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/PostcardFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 109
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 112
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 113
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/PostcardFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 117
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 119
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mWidth:I

    .line 120
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mHeight:I

    .line 121
    invoke-direct {p0}, Landroid/filterpacks/imageproc/PostcardFilter;->initParameters()V

    .line 125
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 128
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/PostcardFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 131
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/PostcardFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 134
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 135
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/PostcardFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 70
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/PostcardFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
