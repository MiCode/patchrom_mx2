.class public Landroid/filterpacks/imageproc/LomoFilter;
.super Landroid/filterfw/core/Filter;
.source "LomoFilter.java"


# instance fields
.field private mBOffset:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "BOffset"
    .end annotation
.end field

.field private mGOffset:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "GOffset"
    .end annotation
.end field

.field private mHeight:I

.field private final mLomoShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mROffset:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "ROffset"
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

.field private mVignetteScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "VignetteScale"
    .end annotation
.end field

.field private mWidth:I

.field private mYOffset:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = "YOffset"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 19
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mTileSize:I

    .line 42
    iput v1, p0, Landroid/filterpacks/imageproc/LomoFilter;->mWidth:I

    .line 43
    iput v1, p0, Landroid/filterpacks/imageproc/LomoFilter;->mHeight:I

    .line 44
    iput v1, p0, Landroid/filterpacks/imageproc/LomoFilter;->mTarget:I

    .line 46
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nuniform float yOffset;\nuniform float rOffset;\nuniform float gOffset;\nuniform float bOffset;\nuniform float vignetteScale;\nuniform float stepSizeX;\nuniform float stepSizeY;\nvarying vec2 v_texcoord;\nvec4 calCrossProcess(vec4 color) {\n\tvec3 ncolor = vec3(0.0, 0.0, 0.0);\n\tfloat value;\n\tif (color.r < 0.5) {\n\t\tvalue = color.r;\n\t} else {\n\t\tvalue = 1.0 - color.r;\n\t}\n\tfloat red = 4.0 * value * value * value;\n\tif (color.r < 0.5) {\n\t\tncolor.r = red;\n\t} else {\n\t\tncolor.r = 1.0 - red;\n\t}\n\tif (color.g < 0.5) {\n\t\tvalue = color.g;\n\t} else {\n\t\tvalue = 1.0 - color.g;\n\t}\n\tfloat green = 2.0 * value * value;\n\tif (color.g < 0.5) {\n\t\tncolor.g = green;\n\t} else {\n\t\tncolor.g = 1.0 - green;\n\t}\n\tncolor.b = color.b * 0.5 + 0.25;\n\treturn vec4(ncolor.rgb, color.a);\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calBlurFilter(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\tif (lumen < 1.0) {\n\t\tfloat radius = 3.0;\n\t\tfloat stepSizeX = 1.0 / texture_width;\n\t\tfloat stepSizeY = 1.0 / texture_height;\n\t\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\t\tfor (float i = - radius; i <= radius; i++) {\n\t\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t\t}\n\t\t}\n\t\tcolor = vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n\t}\n\treturn color;\n}\nvec4 calNewBlurFilter(vec2 coord, vec4 color,float texture_width,float texture_height, float radius) {\n\tfloat stepSizeX = 1.0 / texture_width;\n\tfloat stepSizeY = 1.0 / texture_height;\n\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t}\n\t}\n\treturn vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n}\nvec4 calGaussBlur(vec2 texcoord, vec4 color, float stepSizeX, float stepSizeY, float radius) {\n\tfloat sigma = 5.0;\n\tfloat pi = 3.14159;\n\tfloat sigma22 = 2.0 * sigma * sigma;\n\tfloat sigma22Pi = pi * sigma22;\n\tfloat kernalData = 0.0;\n\tfloat sumData = 0.0;\n\tvec4 sum = vec4(0.0,0.0,0.0,0.0);\n\tvec2 coord;\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = - radius; j <= radius; j++) {\n\t\t\tcoord.x = texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = texcoord.y + i * stepSizeY;\n\t\t\tkernalData = exp(-1.0 * (i * i + j * j) / sigma22) / sigma22Pi;\n\t\t\tsumData += kernalData;\n\t\t\tsum += texture2D(tex_sampler_0,coord) * kernalData;\n\t\t}\n\t}\n\treturn vec4(sum.rgb / sumData,color.a);\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tfloat scale = v_texcoord.y - 0.5;\n\tscale = scale < 0.0 ? - scale : scale;\n\tscale = scale - yOffset;\n\tscale = scale < 0.0 ? 0.0 : scale;\n\tscale = scale / (0.5 - yOffset);\n\tcolor = calGaussBlur(v_texcoord, color, stepSizeX, stepSizeY, 5.0 * scale);\n\tcolor = calCrossProcess(color);\n\tcolor = calNewSaturation(color, - 50.0);\n\tcolor = multiply(color, vec4(rOffset, gOffset, bOffset, 0.15), 1);\n\tvec4 vignetteColor = calNewVignette(v_texcoord, color, textureWidth, textureHeight, vignetteScale);\n\tcolor = (vignetteColor + color) * 0.5;\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mLomoShader:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private initParameters()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 121
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "textureWidth"

    iget v2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mWidth:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "textureHeight"

    iget v2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mHeight:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "yOffset"

    iget v2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mYOffset:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "rOffset"

    iget v2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mROffset:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "gOffset"

    iget v2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mGOffset:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "bOffset"

    iget v2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mBOffset:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "vignetteScale"

    iget v2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mVignetteScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "stepSizeX"

    iget v2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mWidth:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v1, "stepSizeY"

    iget v2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mHeight:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 93
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 97
    packed-switch p2, :pswitch_data_0

    .line 113
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

    .line 99
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/LomoFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/LomoFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 102
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/LomoFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 103
    iput-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 117
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/LomoFilter;->mTarget:I

    .line 118
    return-void

    .line 105
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nuniform float yOffset;\nuniform float rOffset;\nuniform float gOffset;\nuniform float bOffset;\nuniform float vignetteScale;\nuniform float stepSizeX;\nuniform float stepSizeY;\nvarying vec2 v_texcoord;\nvec4 calCrossProcess(vec4 color) {\n\tvec3 ncolor = vec3(0.0, 0.0, 0.0);\n\tfloat value;\n\tif (color.r < 0.5) {\n\t\tvalue = color.r;\n\t} else {\n\t\tvalue = 1.0 - color.r;\n\t}\n\tfloat red = 4.0 * value * value * value;\n\tif (color.r < 0.5) {\n\t\tncolor.r = red;\n\t} else {\n\t\tncolor.r = 1.0 - red;\n\t}\n\tif (color.g < 0.5) {\n\t\tvalue = color.g;\n\t} else {\n\t\tvalue = 1.0 - color.g;\n\t}\n\tfloat green = 2.0 * value * value;\n\tif (color.g < 0.5) {\n\t\tncolor.g = green;\n\t} else {\n\t\tncolor.g = 1.0 - green;\n\t}\n\tncolor.b = color.b * 0.5 + 0.25;\n\treturn vec4(ncolor.rgb, color.a);\n}\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calBlurFilter(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\tif (lumen < 1.0) {\n\t\tfloat radius = 3.0;\n\t\tfloat stepSizeX = 1.0 / texture_width;\n\t\tfloat stepSizeY = 1.0 / texture_height;\n\t\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\t\tfor (float i = - radius; i <= radius; i++) {\n\t\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t\t}\n\t\t}\n\t\tcolor = vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n\t}\n\treturn color;\n}\nvec4 calNewBlurFilter(vec2 coord, vec4 color,float texture_width,float texture_height, float radius) {\n\tfloat stepSizeX = 1.0 / texture_width;\n\tfloat stepSizeY = 1.0 / texture_height;\n\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t}\n\t}\n\treturn vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n}\nvec4 calGaussBlur(vec2 texcoord, vec4 color, float stepSizeX, float stepSizeY, float radius) {\n\tfloat sigma = 5.0;\n\tfloat pi = 3.14159;\n\tfloat sigma22 = 2.0 * sigma * sigma;\n\tfloat sigma22Pi = pi * sigma22;\n\tfloat kernalData = 0.0;\n\tfloat sumData = 0.0;\n\tvec4 sum = vec4(0.0,0.0,0.0,0.0);\n\tvec2 coord;\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = - radius; j <= radius; j++) {\n\t\t\tcoord.x = texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = texcoord.y + i * stepSizeY;\n\t\t\tkernalData = exp(-1.0 * (i * i + j * j) / sigma22) / sigma22Pi;\n\t\t\tsumData += kernalData;\n\t\t\tsum += texture2D(tex_sampler_0,coord) * kernalData;\n\t\t}\n\t}\n\treturn vec4(sum.rgb / sumData,color.a);\n}\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tfloat scale = v_texcoord.y - 0.5;\n\tscale = scale < 0.0 ? - scale : scale;\n\tscale = scale - yOffset;\n\tscale = scale < 0.0 ? 0.0 : scale;\n\tscale = scale / (0.5 - yOffset);\n\tcolor = calGaussBlur(v_texcoord, color, stepSizeX, stepSizeY, 5.0 * scale);\n\tcolor = calCrossProcess(color);\n\tcolor = calNewSaturation(color, - 50.0);\n\tcolor = multiply(color, vec4(rOffset, gOffset, bOffset, 0.15), 1);\n\tvec4 vignetteColor = calNewVignette(v_texcoord, color, textureWidth, textureHeight, vignetteScale);\n\tcolor = (vignetteColor + color) * 0.5;\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 107
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/LomoFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 108
    iput-object v0, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 135
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/LomoFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 136
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 139
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/LomoFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 140
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/LomoFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 144
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/LomoFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/LomoFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 146
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/LomoFilter;->mWidth:I

    .line 147
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/LomoFilter;->mHeight:I

    .line 148
    invoke-direct {p0}, Landroid/filterpacks/imageproc/LomoFilter;->initParameters()V

    .line 152
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 155
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/LomoFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 158
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/LomoFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 161
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 162
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/LomoFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 88
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/LomoFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
