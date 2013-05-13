.class public Landroid/filterpacks/imageproc/TimeFilter;
.super Landroid/filterfw/core/Filter;
.source "TimeFilter.java"


# instance fields
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

.field private final mTimeShader:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 22
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/TimeFilter;->mTileSize:I

    .line 30
    iput v1, p0, Landroid/filterpacks/imageproc/TimeFilter;->mWidth:I

    .line 31
    iput v1, p0, Landroid/filterpacks/imageproc/TimeFilter;->mHeight:I

    .line 32
    iput v1, p0, Landroid/filterpacks/imageproc/TimeFilter;->mTarget:I

    .line 34
    const-string v0, "precision mediump float;\nvarying vec2 v_texcoord;\nuniform sampler2D tex_sampler_0;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calColorBalance(vec4 color,float rOffset,float gOffset,float bOffset) {\n\treturn vec4(color.r + rOffset / 255.0, color.g + gOffset / 255.0, color.b + bOffset / 255.0,  color.a);\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nfloat rand(vec2 loc) {\n\tfloat theta1 = dot(loc, vec2(0.9898, 0.233));\n\tfloat theta2 = dot(loc, vec2(12.0, 78.0));\n\tfloat value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n\tfloat temp = mod(197.0 * value, 1.0) + value;\n\tfloat part1 = mod(220.0 * temp, 1.0) + temp;\n\tfloat part2 = value * 0.5453;\n\tfloat part3 = cos(theta1 + theta2) * 0.43758;\n\treturn fract(part1 + part2 + part3);\n}\nvec4 addNoise(vec4 color,vec2 coord) {\n\tfloat noise = rand(coord) * 0.05 - 0.05;\n\treturn vec4(color.r + noise,color.g + noise,color.b + noise,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calColorBalance(color, 0.0, - 10.0, 29.0);\n\tcolor = calBrightnessContract(color, -5.0 * 255.0 / 100.0, - 20.0 * 255.0 / 100.0 , 128.0);\n\tcolor = calColorLevel(color, 14.0 / 255.0, 195.0 /255.0, 1.52, 0.0 / 255.0, 229.0 / 255.0);\n\tcolor = calPhotoFilter(color,vec3(169.0 / 255.0,151.0 / 255.0, 117.0 / 255.0),0.2);\n\tcolor  = addNoise(color,v_texcoord);\n\tcolor = calNewSaturation(color, -30.0 * 255.0 / 100.0);\n\tcolor = multiply(color,vec4(157.0 / 255.0,115.0 / 255.0, 41.0 / 255.0,0.40),1);\n\tcolor = calBrightnessContract(color, 0.0 * 255.0 / 100.0, 30.0 * 255.0 / 100.0 , 128.0);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/TimeFilter;->mTimeShader:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private initParameters()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 71
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 75
    packed-switch p2, :pswitch_data_0

    .line 91
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

    .line 77
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/TimeFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 78
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/TimeFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 80
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/TimeFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 81
    iput-object v0, p0, Landroid/filterpacks/imageproc/TimeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 95
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/TimeFilter;->mTarget:I

    .line 96
    return-void

    .line 83
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nvarying vec2 v_texcoord;\nuniform sampler2D tex_sampler_0;\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calColorBalance(vec4 color,float rOffset,float gOffset,float bOffset) {\n\treturn vec4(color.r + rOffset / 255.0, color.g + gOffset / 255.0, color.b + bOffset / 255.0,  color.a);\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nfloat rand(vec2 loc) {\n\tfloat theta1 = dot(loc, vec2(0.9898, 0.233));\n\tfloat theta2 = dot(loc, vec2(12.0, 78.0));\n\tfloat value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n\tfloat temp = mod(197.0 * value, 1.0) + value;\n\tfloat part1 = mod(220.0 * temp, 1.0) + temp;\n\tfloat part2 = value * 0.5453;\n\tfloat part3 = cos(theta1 + theta2) * 0.43758;\n\treturn fract(part1 + part2 + part3);\n}\nvec4 addNoise(vec4 color,vec2 coord) {\n\tfloat noise = rand(coord) * 0.05 - 0.05;\n\treturn vec4(color.r + noise,color.g + noise,color.b + noise,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calColorBalance(color, 0.0, - 10.0, 29.0);\n\tcolor = calBrightnessContract(color, -5.0 * 255.0 / 100.0, - 20.0 * 255.0 / 100.0 , 128.0);\n\tcolor = calColorLevel(color, 14.0 / 255.0, 195.0 /255.0, 1.52, 0.0 / 255.0, 229.0 / 255.0);\n\tcolor = calPhotoFilter(color,vec3(169.0 / 255.0,151.0 / 255.0, 117.0 / 255.0),0.2);\n\tcolor  = addNoise(color,v_texcoord);\n\tcolor = calNewSaturation(color, -30.0 * 255.0 / 100.0);\n\tcolor = multiply(color,vec4(157.0 / 255.0,115.0 / 255.0, 41.0 / 255.0,0.40),1);\n\tcolor = calBrightnessContract(color, 0.0 * 255.0 / 100.0, 30.0 * 255.0 / 100.0 , 128.0);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 85
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/TimeFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 86
    iput-object v0, p0, Landroid/filterpacks/imageproc/TimeFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 104
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/TimeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 105
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 108
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/TimeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/TimeFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 109
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/TimeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 113
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/TimeFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/TimeFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 115
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/TimeFilter;->mWidth:I

    .line 116
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/TimeFilter;->mHeight:I

    .line 117
    invoke-direct {p0}, Landroid/filterpacks/imageproc/TimeFilter;->initParameters()V

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 124
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/TimeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 127
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/TimeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 130
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 131
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/TimeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 66
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/TimeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
