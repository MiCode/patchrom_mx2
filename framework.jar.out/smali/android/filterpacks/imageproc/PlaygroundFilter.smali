.class public Landroid/filterpacks/imageproc/PlaygroundFilter;
.super Landroid/filterfw/core/Filter;
.source "PlaygroundFilter.java"


# instance fields
.field private mHeight:I

.field private final mPlaygroundShader:Ljava/lang/String;

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

    .line 71
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 22
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mTileSize:I

    .line 30
    iput v1, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mWidth:I

    .line 31
    iput v1, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mHeight:I

    .line 32
    iput v1, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mTarget:I

    .line 34
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nvarying vec2 v_texcoord;\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calBlurFilter(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\tif (lumen < 1.0) {\n\t\tfloat radius = 3.0;\n\t\tfloat stepSizeX = 1.0 / texture_width;\n\t\tfloat stepSizeY = 1.0 / texture_height;\n\t\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\t\tfor (float i = - radius; i <= radius; i++) {\n\t\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t\t}\n\t\t}\n\t\tcolor = vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n\t}\n\treturn color;\n}\nvec4 calNewBlurFilter(vec2 coord, vec4 color,float texture_width,float texture_height, float radius) {\n\tfloat stepSizeX = 1.0 / texture_width;\n\tfloat stepSizeY = 1.0 / texture_height;\n\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t}\n\t}\n\treturn vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n}\nvec4 calGaussBlur(vec2 texcoord, vec4 color, float stepSizeX, float stepSizeY, float radius) {\n\tfloat sigma = 5.0;\n\tfloat pi = 3.14159;\n\tfloat sigma22 = 2.0 * sigma * sigma;\n\tfloat sigma22Pi = pi * sigma22;\n\tfloat kernalData = 0.0;\n\tfloat sumData = 0.0;\n\tvec4 sum = vec4(0.0,0.0,0.0,0.0);\n\tvec2 coord;\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = - radius; j <= radius; j++) {\n\t\t\tcoord.x = texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = texcoord.y + i * stepSizeY;\n\t\t\tkernalData = exp(-1.0 * (i * i + j * j) / sigma22) / sigma22Pi;\n\t\t\tsumData += kernalData;\n\t\t\tsum += texture2D(tex_sampler_0,coord) * kernalData;\n\t\t}\n\t}\n\treturn vec4(sum.rgb / sumData,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tvec2 coord = v_texcoord;\n\tfloat alpha = 0.9;\n\tvec4 blurColor = calBlurFilter(coord, color, textureWidth, textureHeight, 0.8);\n\tblurColor = (blurColor + color) * 0.5;\n\tcolor = vec4(color.rgb * (1.0 - alpha) + blurColor.rgb * alpha, color.a);\n\tvec4 color1 = vec4(255.0 / 255.0,     0.0 / 255.0, 0.0 / 255.0, 1.0);\n\tvec4 color2 = vec4(255.0 / 255.0, 255.0 / 255.0, 0.0 / 255.0, 1.0);\n\tfloat diff = 0.4;\n\tif (coord.x <= diff) {\n\t\tfloat dist = (diff - coord.x) / diff;\n\t\tcolor1 = vec4(color1.r * dist + color2.r * (1.0 - dist), color1.g * dist + color2.g * (1.0 - dist),color1.b * dist + color2.b * (1.0 - dist),color1.a);\n\t} else if (coord.x >= 1.0 - diff){\n\t\tfloat dist = (coord.x - 1.0 + diff) / diff;\n\t\tcolor1 = vec4(color2.r * (1.0 - dist) + color1.r * dist, color2.g * (1.0 - dist) + color1.g * dist,color2.b * (1.0 - dist) + color1.b * dist,color1.a);\n\t} else {\n\t\tcolor1 = color2;\n\t}\n\tcolor = multiply(color,vec4(color1.rgb,0.28),1);\n\tvec4 vignetteColor = calNewVignette(v_texcoord,color,textureWidth,textureHeight, 1.0);\n\talpha = length(v_texcoord - vec2(0.5,0.5)) / length(vec2(0.5,0.5));\n\tcolor = vec4(color.r * (1.0 - alpha) + vignetteColor.r * alpha,color.g * (1.0 - alpha) + vignetteColor.g * alpha,color.b * (1.0 - alpha) + vignetteColor.b * alpha,color.a);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mPlaygroundShader:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private initParameters()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "textureWidth"

    iget v2, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mWidth:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "textureHeight"

    iget v2, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mHeight:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 83
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 87
    packed-switch p2, :pswitch_data_0

    .line 103
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

    .line 89
    :pswitch_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 92
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 93
    iput-object v0, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 107
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mTarget:I

    .line 108
    return-void

    .line 95
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nvarying vec2 v_texcoord;\nvec4 multiply(vec4 color1,vec4 color2,int option) {\n\tif (option == 0) {\n\t\treturn vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color1.a);\n\t} else if (option == 1) {\n\t\tvec4 color = vec4(color1.r * color2.r,color1.g * color2.g,color1.b * color2.b,color2.a);\n\t\treturn vec4(color.r * color.a + color1.r * (1.0 - color.a),color.g * color.a + color1.g * (1.0 - color.a),color.b * color.a + color1.b * (1.0 - color.a),color1.a);\n\t}\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calBlurFilter(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\tif (lumen < 1.0) {\n\t\tfloat radius = 3.0;\n\t\tfloat stepSizeX = 1.0 / texture_width;\n\t\tfloat stepSizeY = 1.0 / texture_height;\n\t\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\t\tfor (float i = - radius; i <= radius; i++) {\n\t\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t\t}\n\t\t}\n\t\tcolor = vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n\t}\n\treturn color;\n}\nvec4 calNewBlurFilter(vec2 coord, vec4 color,float texture_width,float texture_height, float radius) {\n\tfloat stepSizeX = 1.0 / texture_width;\n\tfloat stepSizeY = 1.0 / texture_height;\n\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t}\n\t}\n\treturn vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n}\nvec4 calGaussBlur(vec2 texcoord, vec4 color, float stepSizeX, float stepSizeY, float radius) {\n\tfloat sigma = 5.0;\n\tfloat pi = 3.14159;\n\tfloat sigma22 = 2.0 * sigma * sigma;\n\tfloat sigma22Pi = pi * sigma22;\n\tfloat kernalData = 0.0;\n\tfloat sumData = 0.0;\n\tvec4 sum = vec4(0.0,0.0,0.0,0.0);\n\tvec2 coord;\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = - radius; j <= radius; j++) {\n\t\t\tcoord.x = texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = texcoord.y + i * stepSizeY;\n\t\t\tkernalData = exp(-1.0 * (i * i + j * j) / sigma22) / sigma22Pi;\n\t\t\tsumData += kernalData;\n\t\t\tsum += texture2D(tex_sampler_0,coord) * kernalData;\n\t\t}\n\t}\n\treturn vec4(sum.rgb / sumData,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tvec2 coord = v_texcoord;\n\tfloat alpha = 0.9;\n\tvec4 blurColor = calBlurFilter(coord, color, textureWidth, textureHeight, 0.8);\n\tblurColor = (blurColor + color) * 0.5;\n\tcolor = vec4(color.rgb * (1.0 - alpha) + blurColor.rgb * alpha, color.a);\n\tvec4 color1 = vec4(255.0 / 255.0,     0.0 / 255.0, 0.0 / 255.0, 1.0);\n\tvec4 color2 = vec4(255.0 / 255.0, 255.0 / 255.0, 0.0 / 255.0, 1.0);\n\tfloat diff = 0.4;\n\tif (coord.x <= diff) {\n\t\tfloat dist = (diff - coord.x) / diff;\n\t\tcolor1 = vec4(color1.r * dist + color2.r * (1.0 - dist), color1.g * dist + color2.g * (1.0 - dist),color1.b * dist + color2.b * (1.0 - dist),color1.a);\n\t} else if (coord.x >= 1.0 - diff){\n\t\tfloat dist = (coord.x - 1.0 + diff) / diff;\n\t\tcolor1 = vec4(color2.r * (1.0 - dist) + color1.r * dist, color2.g * (1.0 - dist) + color1.g * dist,color2.b * (1.0 - dist) + color1.b * dist,color1.a);\n\t} else {\n\t\tcolor1 = color2;\n\t}\n\tcolor = multiply(color,vec4(color1.rgb,0.28),1);\n\tvec4 vignetteColor = calNewVignette(v_texcoord,color,textureWidth,textureHeight, 1.0);\n\talpha = length(v_texcoord - vec2(0.5,0.5)) / length(vec2(0.5,0.5));\n\tcolor = vec4(color.r * (1.0 - alpha) + vignetteColor.r * alpha,color.g * (1.0 - alpha) + vignetteColor.g * alpha,color.b * (1.0 - alpha) + vignetteColor.b * alpha,color.a);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 97
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 98
    iput-object v0, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 87
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
    .line 118
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/PlaygroundFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 119
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 122
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/PlaygroundFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 127
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 129
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mWidth:I

    .line 130
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mHeight:I

    .line 131
    invoke-direct {p0}, Landroid/filterpacks/imageproc/PlaygroundFilter;->initParameters()V

    .line 135
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 138
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/PlaygroundFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 141
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/PlaygroundFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 144
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 145
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/PlaygroundFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 78
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/PlaygroundFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
