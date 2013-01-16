.class public Landroid/filterpacks/imageproc/MatchaFilter;
.super Landroid/filterfw/core/Filter;
.source "MatchaFilter.java"


# instance fields
.field private mHeight:I

.field private final mMatchaShader:Ljava/lang/String;

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

    iput v0, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mTileSize:I

    .line 30
    iput v1, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mWidth:I

    .line 31
    iput v1, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mHeight:I

    .line 32
    iput v1, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mTarget:I

    .line 34
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float stepSizeX;\nuniform float stepSizeY;\nvarying vec2 v_texcoord;\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calBlurFilter(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\tif (lumen < 1.0) {\n\t\tfloat radius = 3.0;\n\t\tfloat stepSizeX = 1.0 / texture_width;\n\t\tfloat stepSizeY = 1.0 / texture_height;\n\t\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\t\tfor (float i = - radius; i <= radius; i++) {\n\t\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t\t}\n\t\t}\n\t\tcolor = vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n\t}\n\treturn color;\n}\nvec4 calNewBlurFilter(vec2 coord, vec4 color,float texture_width,float texture_height, float radius) {\n\tfloat stepSizeX = 1.0 / texture_width;\n\tfloat stepSizeY = 1.0 / texture_height;\n\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t}\n\t}\n\treturn vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n}\nvec4 calGaussBlur(vec2 texcoord, vec4 color, float stepSizeX, float stepSizeY, float radius) {\n\tfloat sigma = 5.0;\n\tfloat pi = 3.14159;\n\tfloat sigma22 = 2.0 * sigma * sigma;\n\tfloat sigma22Pi = pi * sigma22;\n\tfloat kernalData = 0.0;\n\tfloat sumData = 0.0;\n\tvec4 sum = vec4(0.0,0.0,0.0,0.0);\n\tvec2 coord;\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = - radius; j <= radius; j++) {\n\t\t\tcoord.x = texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = texcoord.y + i * stepSizeY;\n\t\t\tkernalData = exp(-1.0 * (i * i + j * j) / sigma22) / sigma22Pi;\n\t\t\tsumData += kernalData;\n\t\t\tsum += texture2D(tex_sampler_0,coord) * kernalData;\n\t\t}\n\t}\n\treturn vec4(sum.rgb / sumData,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tfloat scale = v_texcoord.y - 0.5;\n\tfloat yOffset = 0.2;\n\tscale = scale < 0.0 ? - scale : scale;\n\tscale = scale - yOffset;\n\tscale = scale < 0.0 ? 0.0 : scale;\n\tscale = scale / (0.5 - yOffset);\n\tcolor = calGaussBlur(v_texcoord, color, stepSizeX, stepSizeY, 5.0 * scale);\n\tvec4 color1 = vec4(250.0 / 255.0, 171.0 / 255.0, 171.0 / 255.0, 1.0);\n\tvec4 color2 = vec4(14.0 / 255.0, 229.0 / 255.0, 30.0 / 255.0, 1.0);\n\tvec2 coord = v_texcoord;\n\tfloat diff =  coord.y;\n\tcolor1 = vec4(color1.r * (1.0 - diff) + color2.r * diff, color1.g * (1.0 - diff) + color2.g * diff, color1.b * (1.0 - diff) + color2.b * diff,color1.a);\n\tfloat alpha = 0.15;\n\tcolor = vec4(color.r * (1.0 -  alpha) + color1.r * alpha,color.g * (1.0 - alpha) + color1.g * alpha,color.b * (1.0 - alpha) + color1.b * alpha,color.a);\n\tcolor = calBrightnessContract(color, 0.0, 65.0, 128.0);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mMatchaShader:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private initParameters()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 103
    iget-object v0, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "stepSizeX"

    iget v2, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mWidth:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "stepSizeY"

    iget v2, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mHeight:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
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
    iget-object v1, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 84
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 85
    iput-object v0, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 99
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mTarget:I

    .line 100
    return-void

    .line 87
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float stepSizeX;\nuniform float stepSizeY;\nvarying vec2 v_texcoord;\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calBlurFilter(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\tif (lumen < 1.0) {\n\t\tfloat radius = 3.0;\n\t\tfloat stepSizeX = 1.0 / texture_width;\n\t\tfloat stepSizeY = 1.0 / texture_height;\n\t\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\t\tfor (float i = - radius; i <= radius; i++) {\n\t\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t\t}\n\t\t}\n\t\tcolor = vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n\t}\n\treturn color;\n}\nvec4 calNewBlurFilter(vec2 coord, vec4 color,float texture_width,float texture_height, float radius) {\n\tfloat stepSizeX = 1.0 / texture_width;\n\tfloat stepSizeY = 1.0 / texture_height;\n\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t}\n\t}\n\treturn vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n}\nvec4 calGaussBlur(vec2 texcoord, vec4 color, float stepSizeX, float stepSizeY, float radius) {\n\tfloat sigma = 5.0;\n\tfloat pi = 3.14159;\n\tfloat sigma22 = 2.0 * sigma * sigma;\n\tfloat sigma22Pi = pi * sigma22;\n\tfloat kernalData = 0.0;\n\tfloat sumData = 0.0;\n\tvec4 sum = vec4(0.0,0.0,0.0,0.0);\n\tvec2 coord;\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = - radius; j <= radius; j++) {\n\t\t\tcoord.x = texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = texcoord.y + i * stepSizeY;\n\t\t\tkernalData = exp(-1.0 * (i * i + j * j) / sigma22) / sigma22Pi;\n\t\t\tsumData += kernalData;\n\t\t\tsum += texture2D(tex_sampler_0,coord) * kernalData;\n\t\t}\n\t}\n\treturn vec4(sum.rgb / sumData,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tfloat scale = v_texcoord.y - 0.5;\n\tfloat yOffset = 0.2;\n\tscale = scale < 0.0 ? - scale : scale;\n\tscale = scale - yOffset;\n\tscale = scale < 0.0 ? 0.0 : scale;\n\tscale = scale / (0.5 - yOffset);\n\tcolor = calGaussBlur(v_texcoord, color, stepSizeX, stepSizeY, 5.0 * scale);\n\tvec4 color1 = vec4(250.0 / 255.0, 171.0 / 255.0, 171.0 / 255.0, 1.0);\n\tvec4 color2 = vec4(14.0 / 255.0, 229.0 / 255.0, 30.0 / 255.0, 1.0);\n\tvec2 coord = v_texcoord;\n\tfloat diff =  coord.y;\n\tcolor1 = vec4(color1.r * (1.0 - diff) + color2.r * diff, color1.g * (1.0 - diff) + color2.g * diff, color1.b * (1.0 - diff) + color2.b * diff,color1.a);\n\tfloat alpha = 0.15;\n\tcolor = vec4(color.r * (1.0 -  alpha) + color1.r * alpha,color.g * (1.0 - alpha) + color1.g * alpha,color.b * (1.0 - alpha) + color1.b * alpha,color.a);\n\tcolor = calBrightnessContract(color, 0.0, 65.0, 128.0);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 89
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 90
    iput-object v0, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mProgram:Landroid/filterfw/core/Program;

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
    .line 110
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/MatchaFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 111
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 114
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 115
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/MatchaFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 119
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 121
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mWidth:I

    .line 122
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mHeight:I

    .line 123
    invoke-direct {p0}, Landroid/filterpacks/imageproc/MatchaFilter;->initParameters()V

    .line 127
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 130
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/MatchaFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 133
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/MatchaFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 136
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 137
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

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/MatchaFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 70
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/MatchaFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
