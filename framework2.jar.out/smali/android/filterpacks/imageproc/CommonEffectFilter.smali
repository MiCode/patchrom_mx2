.class public Landroid/filterpacks/imageproc/CommonEffectFilter;
.super Landroid/filterfw/core/Filter;
.source "CommonEffectFilter.java"


# instance fields
.field private mBrightness:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "brightnessValue"
    .end annotation
.end field

.field private mColorTemperature:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "colorTemperatureValue"
    .end annotation
.end field

.field private final mCommonEffectShader:Ljava/lang/String;

.field private mContrast:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "contrastValue"
    .end annotation
.end field

.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSaturation:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "saturationValue"
    .end annotation
.end field

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

    .line 64
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 20
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mTileSize:I

    .line 40
    iput v1, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mWidth:I

    .line 41
    iput v1, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mHeight:I

    .line 42
    iput v1, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mTarget:I

    .line 44
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float brightnessValue;\nuniform float contrastValue;\nuniform float colorTemperature;\nuniform float saturation;\nvarying vec2 v_texcoord;\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calColorTemperature(vec4 color, float scale) {\n\tvec3 new_color = color.rgb;\n\tnew_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n\tnew_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n\tif (scale > 0.0) { \n\t\tnew_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n\t}\n\tfloat max_value = max(new_color.r, max(new_color.g, new_color.b));\n\tif (max_value > 1.0) { \n\t\tnew_color /= max_value;\n\t} \n\treturn vec4(new_color.rgb, color.a);\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calBrightnessContract(color, brightnessValue, contrastValue, 128.0);\n\tcolor = calColorTemperature(color, colorTemperature);\n\tcolor = calNewSaturation(color, saturation);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mCommonEffectShader:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private initParameters()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method private updateParameters()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "brightnessValue"

    iget v2, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mBrightness:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "contrastValue"

    iget v2, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mContrast:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "colorTemperature"

    iget v2, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mColorTemperature:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "saturation"

    iget v2, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mSaturation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 76
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 80
    packed-switch p2, :pswitch_data_0

    .line 96
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

    .line 82
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 85
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 86
    iput-object v0, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 100
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mTarget:I

    .line 101
    return-void

    .line 88
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float brightnessValue;\nuniform float contrastValue;\nuniform float colorTemperature;\nuniform float saturation;\nvarying vec2 v_texcoord;\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calColorTemperature(vec4 color, float scale) {\n\tvec3 new_color = color.rgb;\n\tnew_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n\tnew_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n\tif (scale > 0.0) { \n\t\tnew_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n\t}\n\tfloat max_value = max(new_color.r, max(new_color.g, new_color.b));\n\tif (max_value > 1.0) { \n\t\tnew_color /= max_value;\n\t} \n\treturn vec4(new_color.rgb, color.a);\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tcolor = calBrightnessContract(color, brightnessValue, contrastValue, 128.0);\n\tcolor = calColorTemperature(color, colorTemperature);\n\tcolor = calNewSaturation(color, saturation);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 90
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 91
    iput-object v0, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 116
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/CommonEffectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 117
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 120
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 121
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/CommonEffectFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 125
    :cond_1
    iget-object v3, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_2

    .line 126
    invoke-direct {p0}, Landroid/filterpacks/imageproc/CommonEffectFilter;->updateParameters()V

    .line 130
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mWidth:I

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mHeight:I

    if-eq v3, v4, :cond_4

    .line 132
    :cond_3
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mWidth:I

    .line 133
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mHeight:I

    .line 134
    invoke-direct {p0}, Landroid/filterpacks/imageproc/CommonEffectFilter;->initParameters()V

    .line 138
    :cond_4
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 141
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/CommonEffectFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 144
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/CommonEffectFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 147
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 148
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CommonEffectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 71
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CommonEffectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
