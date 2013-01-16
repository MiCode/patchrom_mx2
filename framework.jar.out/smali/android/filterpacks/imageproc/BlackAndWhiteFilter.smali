.class public Landroid/filterpacks/imageproc/BlackAndWhiteFilter;
.super Landroid/filterfw/core/Filter;
.source "BlackAndWhiteFilter.java"


# instance fields
.field private final mBlackAndWhiteShader:Ljava/lang/String;

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

    .line 55
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 22
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mTileSize:I

    .line 30
    iput v1, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mWidth:I

    .line 31
    iput v1, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mHeight:I

    .line 32
    iput v1, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mTarget:I

    .line 34
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nvarying vec2 v_texcoord;\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tfloat grayValue = dot(color.rgb, vec3(0.299, 0.587, 0.114));\n\tvec4 grayColor = vec4(grayValue, grayValue, grayValue,1.0);\n\tvec4 contrastColor = calBrightnessContract(grayColor, 0.0, 100.0, 128.0);\n\tfloat alpha = 0.66;\n\tcolor = vec4(grayColor.r * (1.0 - alpha) + contrastColor.r * alpha, grayColor.g * (1.0 - alpha) + contrastColor.g * alpha, grayColor.b * (1.0 - alpha) + contrastColor.b * alpha, 1.0);\n\tvec4 vignetteColor = calNewVignette(v_texcoord, color, textureWidth, textureHeight, 0.8);\n\tcolor = (vignetteColor + color) * 0.5;\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mBlackAndWhiteShader:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private initParameters()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "textureWidth"

    iget v2, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mWidth:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "textureHeight"

    iget v2, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mHeight:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 67
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 71
    packed-switch p2, :pswitch_data_0

    .line 87
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

    .line 73
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 76
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 77
    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 91
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mTarget:I

    .line 92
    return-void

    .line 79
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nvarying vec2 v_texcoord;\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tfloat grayValue = dot(color.rgb, vec3(0.299, 0.587, 0.114));\n\tvec4 grayColor = vec4(grayValue, grayValue, grayValue,1.0);\n\tvec4 contrastColor = calBrightnessContract(grayColor, 0.0, 100.0, 128.0);\n\tfloat alpha = 0.66;\n\tcolor = vec4(grayColor.r * (1.0 - alpha) + contrastColor.r * alpha, grayColor.g * (1.0 - alpha) + contrastColor.g * alpha, grayColor.b * (1.0 - alpha) + contrastColor.b * alpha, 1.0);\n\tvec4 vignetteColor = calNewVignette(v_texcoord, color, textureWidth, textureHeight, 0.8);\n\tcolor = (vignetteColor + color) * 0.5;\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 81
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 82
    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 71
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
    .line 102
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 103
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 106
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 107
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 111
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 113
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mWidth:I

    .line 114
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mHeight:I

    .line 115
    invoke-direct {p0}, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->initParameters()V

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 122
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 125
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 128
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 129
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 62
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BlackAndWhiteFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
