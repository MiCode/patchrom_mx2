.class public Landroid/filterpacks/imageproc/LightColorFilter;
.super Landroid/filterfw/core/Filter;
.source "LightColorFilter.java"


# instance fields
.field private mHeight:I

.field private final mLightColorShader:Ljava/lang/String;

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

    .line 69
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 19
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mTileSize:I

    .line 27
    iput v1, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mWidth:I

    .line 28
    iput v1, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mHeight:I

    .line 29
    iput v1, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mTarget:I

    .line 31
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvec4 calBrightness(vec4 color,float brightness) {\n\treturn vec4(color.rgb + brightness / 255.0 ,color.a);\n}\nvec4 contrast(vec4 color,float value) {\n\tfloat contrastValue = value;\n\tcontrastValue = (100.0 + contrastValue) / 100.0;\n\treturn vec4((color.rgb - 0.5) * contrastValue + 0.5 , color.a);\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calColorTemperature(vec4 color, float scale) {\n\tvec3 new_color = color.rgb;\n\tnew_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n\tnew_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n\tif (scale > 0.0) { \n\t\tnew_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n\t}\n\tfloat max_value = max(new_color.r, max(new_color.g, new_color.b));\n\tif (max_value > 1.0) { \n\t\tnew_color /= max_value;\n\t} \n\treturn vec4(new_color.rgb, color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = contrast(color, -60.0);\n\tcolor = calBrightness(color, -50.0);\n\tcolor = calNewSaturation(color, -50.0);\n\tvec2 startPos = vec2(0.0, 0.0);\n\tvec2 endPos = vec2(1.0, 1.0);\n\tvec4 color1 = vec4(215.0 / 255.0, 114.0 / 255.0, 185.0 / 255.0, 0.35);\n\tvec4 color2 = vec4(0.0, 0.0, 0.0, 0.0);\n\tfloat radius = length(startPos - endPos);\n\tvec2 coord = v_texcoord;\n\tfloat dist = length(coord - startPos);\n\tvec4 newColor = vec4(color1.r * (1.0 - dist) + color2.r * dist, color1.g * (1.0 - dist) + color2.g * dist, color1.b * (1.0 - dist) + color2.b, color1.a * (1.0 - dist) + color2.a * dist);\n\tcolor = vec4(color.r * (1.0 - newColor.a)+ newColor.r * newColor.a, color.g * (1.0 - newColor.a) + newColor.g * newColor.a, color.b * (1.0 - newColor.a) + newColor.b * newColor.a, color.a);\n\tcolor = vec4(calChannelColorLevel(color.r, 26.0 / 255.0, 235.0 / 255.0, 1.27, 0.0, 1.0),calChannelColorLevel(color.g,11.0 / 255.0, 204.0 / 255.0, 1.13, 0.0, 1.0),calChannelColorLevel(color.b, 5.0 / 255.0, 1.0, 1.08, 0.0, 1.0),color.a);\n\tcolor = calNewSaturation(color, -40.0);\n\tcolor.g = calChannelColorLevel(color.g, 0.0, 249.0 / 255.0, 0.96, 0.0, 1.0);\n\tcolor.b = calChannelColorLevel(color.b, 0.0, 249.0 / 255.0, 1.16, 0.0, 1.0);\n\tcolor = calColorLevel(color, 31.0 / 255.0, 164.0 / 255.0, 1.11, 0.0, 1.0);\n\tcolor = calNewSaturation(color, 20.0);\n\tcolor = calColorTemperature(color, 0.7);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mLightColorShader:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private initParameters()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 81
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 85
    packed-switch p2, :pswitch_data_0

    .line 101
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

    .line 87
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 90
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 91
    iput-object v0, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 105
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mTarget:I

    .line 106
    return-void

    .line 93
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvec4 calBrightness(vec4 color,float brightness) {\n\treturn vec4(color.rgb + brightness / 255.0 ,color.a);\n}\nvec4 contrast(vec4 color,float value) {\n\tfloat contrastValue = value;\n\tcontrastValue = (100.0 + contrastValue) / 100.0;\n\treturn vec4((color.rgb - 0.5) * contrastValue + 0.5 , color.a);\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nfloat calChannelColorLevel(float color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n   if (color > maxValue) {\n       color = outputMaxValue;\n   } else if (color < minValue) {\n       color = outputMinValue;\n   } else {\n       color = pow((color - minValue) / (maxValue - minValue),1.0 / gamma);\n\t\tcolor = color * (outputMaxValue - outputMinValue) + outputMinValue;\n   }\n\treturn color;\n}\nvec4 calColorLevel(vec4 color,float minValue,float maxValue,float gamma,float outputMinValue,float outputMaxValue) {\n\tcolor.r = calChannelColorLevel(color.r,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.g = calChannelColorLevel(color.g,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n\tcolor.b = calChannelColorLevel(color.b,minValue, maxValue, gamma, outputMinValue, outputMaxValue);\n   return color;\n}\nvec4 calColorTemperature(vec4 color, float scale) {\n\tvec3 new_color = color.rgb;\n\tnew_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n\tnew_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n\tif (scale > 0.0) { \n\t\tnew_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n\t}\n\tfloat max_value = max(new_color.r, max(new_color.g, new_color.b));\n\tif (max_value > 1.0) { \n\t\tnew_color /= max_value;\n\t} \n\treturn vec4(new_color.rgb, color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = contrast(color, -60.0);\n\tcolor = calBrightness(color, -50.0);\n\tcolor = calNewSaturation(color, -50.0);\n\tvec2 startPos = vec2(0.0, 0.0);\n\tvec2 endPos = vec2(1.0, 1.0);\n\tvec4 color1 = vec4(215.0 / 255.0, 114.0 / 255.0, 185.0 / 255.0, 0.35);\n\tvec4 color2 = vec4(0.0, 0.0, 0.0, 0.0);\n\tfloat radius = length(startPos - endPos);\n\tvec2 coord = v_texcoord;\n\tfloat dist = length(coord - startPos);\n\tvec4 newColor = vec4(color1.r * (1.0 - dist) + color2.r * dist, color1.g * (1.0 - dist) + color2.g * dist, color1.b * (1.0 - dist) + color2.b, color1.a * (1.0 - dist) + color2.a * dist);\n\tcolor = vec4(color.r * (1.0 - newColor.a)+ newColor.r * newColor.a, color.g * (1.0 - newColor.a) + newColor.g * newColor.a, color.b * (1.0 - newColor.a) + newColor.b * newColor.a, color.a);\n\tcolor = vec4(calChannelColorLevel(color.r, 26.0 / 255.0, 235.0 / 255.0, 1.27, 0.0, 1.0),calChannelColorLevel(color.g,11.0 / 255.0, 204.0 / 255.0, 1.13, 0.0, 1.0),calChannelColorLevel(color.b, 5.0 / 255.0, 1.0, 1.08, 0.0, 1.0),color.a);\n\tcolor = calNewSaturation(color, -40.0);\n\tcolor.g = calChannelColorLevel(color.g, 0.0, 249.0 / 255.0, 0.96, 0.0, 1.0);\n\tcolor.b = calChannelColorLevel(color.b, 0.0, 249.0 / 255.0, 1.16, 0.0, 1.0);\n\tcolor = calColorLevel(color, 31.0 / 255.0, 164.0 / 255.0, 1.11, 0.0, 1.0);\n\tcolor = calNewSaturation(color, 20.0);\n\tcolor = calColorTemperature(color, 0.7);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 95
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 96
    iput-object v0, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 85
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
    .line 114
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/LightColorFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 115
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 118
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 119
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/LightColorFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 123
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 125
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mWidth:I

    .line 126
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mHeight:I

    .line 127
    invoke-direct {p0}, Landroid/filterpacks/imageproc/LightColorFilter;->initParameters()V

    .line 131
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 134
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/LightColorFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 137
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/LightColorFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 140
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 141
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/LightColorFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 76
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/LightColorFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
