.class public Landroid/filterpacks/imageproc/MoonlightFilter;
.super Landroid/filterfw/core/Filter;
.source "MoonlightFilter.java"


# instance fields
.field private mHeight:I

.field private final mMoonlightShader:Ljava/lang/String;

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

    iput v0, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mTileSize:I

    .line 27
    iput v1, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mWidth:I

    .line 28
    iput v1, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mHeight:I

    .line 29
    iput v1, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mTarget:I

    .line 31
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nvarying vec2 v_texcoord;\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calBlurFilter(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\tif (lumen < 1.0) {\n\t\tfloat radius = 3.0;\n\t\tfloat stepSizeX = 1.0 / texture_width;\n\t\tfloat stepSizeY = 1.0 / texture_height;\n\t\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\t\tfor (float i = - radius; i <= radius; i++) {\n\t\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t\t}\n\t\t}\n\t\tcolor = vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n\t}\n\treturn color;\n}\nvec4 calNewBlurFilter(vec2 coord, vec4 color,float texture_width,float texture_height, float radius) {\n\tfloat stepSizeX = 1.0 / texture_width;\n\tfloat stepSizeY = 1.0 / texture_height;\n\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t}\n\t}\n\treturn vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n}\nvec4 calGaussBlur(vec2 texcoord, vec4 color, float stepSizeX, float stepSizeY, float radius) {\n\tfloat sigma = 5.0;\n\tfloat pi = 3.14159;\n\tfloat sigma22 = 2.0 * sigma * sigma;\n\tfloat sigma22Pi = pi * sigma22;\n\tfloat kernalData = 0.0;\n\tfloat sumData = 0.0;\n\tvec4 sum = vec4(0.0,0.0,0.0,0.0);\n\tvec2 coord;\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = - radius; j <= radius; j++) {\n\t\t\tcoord.x = texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = texcoord.y + i * stepSizeY;\n\t\t\tkernalData = exp(-1.0 * (i * i + j * j) / sigma22) / sigma22Pi;\n\t\t\tsumData += kernalData;\n\t\t\tsum += texture2D(tex_sampler_0,coord) * kernalData;\n\t\t}\n\t}\n\treturn vec4(sum.rgb / sumData,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tvec2 coord = v_texcoord;\n\tfloat alpha = 0.3;\n\tvec4 blurColor = calBlurFilter(coord, color, textureWidth, textureHeight, 0.8);\n\tblurColor = (blurColor + color) * 0.5;\n\tcolor = vec4(color.rgb * (1.0 - alpha) + blurColor.rgb * alpha, color.a);\n\tcolor = calPhotoFilter(color,vec3(251.0 / 255.0, 152.0 / 255.0, 93.0 / 255.0),0.68);\n\tcolor = calBrightnessContract(color, 43.0, 0.0, 128.0);\n\tvec4 color1 = vec4(252.0 / 255.0, 241.0 / 255.0, 211.0 / 255.0, 1.0);\n\tvec4 color2 = vec4(0.0, 0.0, 0.0, 1.0);\n\tfloat dist = length(coord - vec2(0.5,0.5));\n\tdist = dist / 0.5;\n\tcolor1 = vec4(color1.r * (1.0 - dist) + color2.r * dist,color1.g * (1.0 - dist) + color2.g * dist,color1.b * (1.0 - dist) + color2.b * dist,color1.a);\n\talpha = 0.05;\n\tcolor = vec4(color.r * (1.0 - alpha) + color1.r * alpha, color.g * (1.0 - alpha) + color1.g * alpha,color.b * (1.0 - alpha) + color1.b * alpha,color.a);\n\tvec4 vignetteColor = calVignette(v_texcoord,color,textureWidth,textureHeight);\n\talpha = length(v_texcoord - vec2(0.5,0.5)) / length(vec2(0.5,0.5));\n\tcolor = vec4(color.r * (1.0 - alpha) + vignetteColor.r * alpha,color.g * (1.0 - alpha) + vignetteColor.g * alpha,color.b * (1.0 - alpha) + vignetteColor.b * alpha,color.a);\n\tcolor = calNewSaturation(color, - 20.0);\n\tcolor = calBrightnessContract(color, -46.0, 100.0, 128.0);\n\tgl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mMoonlightShader:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private initParameters()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "textureWidth"

    iget v2, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mWidth:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "textureHeight"

    iget v2, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mHeight:I

    int-to-float v2, v2

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
    iget-object v1, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mShaderCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mShaderCode:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 90
    .local v0, shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 91
    iput-object v0, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 105
    :goto_0
    iput p2, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mTarget:I

    .line 106
    return-void

    .line 93
    .end local v0           #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float textureWidth;\nuniform float textureHeight;\nvarying vec2 v_texcoord;\nvec4 calNewSaturation(vec4 color,float saturation) {\n\tfloat gray = dot(color.rgb, vec3(0.299,0.587,0.114));\n\treturn vec4(gray + (saturation / 100.0 + 1.0) * (color.r - gray), gray + (saturation / 100.0 + 1.0) * (color.g - gray), gray + (saturation / 100.0 + 1.0) * (color.b - gray), color.a);\n}\nvec4 calPhotoFilter(vec4 color,vec3 alphaColor,float percent) {\n\treturn vec4(color.r * (1.0 - percent / 100.0) + color.r *alphaColor.r * percent / 100.0, color.g * (1.0 - percent / 100.0) + color.g * alphaColor.g * percent / 100.0,  color.b * (1.0 - percent / 100.0) + color.b * alphaColor.b * percent / 100.0, color.a);\n}\nvec4 calBrightnessContract(vec4 color,float brightness, float contrast,float threshold) {\n\tfloat cv = contrast <= -255.0 ? -1.0 : contrast / 255.0;\n\tif (contrast > 0.0 && contrast < 255.0) {\n\t\tcv = 1.0 / (1.0 - cv) - 1.0;\n\t}\n\tfloat r  = color.r + brightness / 255.0;\n\tfloat g = color.g + brightness / 255.0;\n\tfloat b = color.b + brightness / 255.0;\n\tif (contrast >= 255.0) {\n\t\tr = r >= threshold / 255.0 ? 1.0 : 0.0;\n\t\tg = g >= threshold / 255.0 ? 1.0 : 0.0;\n \t\tb = b >= threshold / 255.0 ? 1.0 : 0.0;\n\t} else {\n\t\tr =  r + (r - threshold / 255.0) * cv;\n\t\tg = g + (g - threshold / 255.0) * cv;\n\t\tb = b + (b - threshold / 255.0) * cv;\n\t}\n\tcolor.r = r;\n\tcolor.g = g;\n\tcolor.b = b;\n\treturn color;\n}\nvec4 calVignette(vec2 coord,vec4 color,float texture_width,float texture_height) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(0.8) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calNewVignette(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\treturn vec4(color.rgb * lumen,color.a);\n}\nvec4 calBlurFilter(vec2 coord,vec4 color,float texture_width,float texture_height,float value) {\n\tfloat shade = 0.85;\n\tfloat slope = 20.0;\n\tfloat range = 1.30 - sqrt(value) * 0.7;\n\tvec2 scale;\n\tif(texture_width > texture_height) {\n\t\tscale.x = 1.0;\n\t\tscale.y = texture_height / texture_width;\n\t} else {\n\t\tscale.x = texture_width / texture_height;\n\t\tscale.y = 1.0;\n\t}\n\tfloat inv_max_dist = 2.0 / length(scale);\n\tfloat dist = length((coord - vec2(0.5, 0.5)) * scale);\n\tfloat lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n\tif (lumen < 1.0) {\n\t\tfloat radius = 3.0;\n\t\tfloat stepSizeX = 1.0 / texture_width;\n\t\tfloat stepSizeY = 1.0 / texture_height;\n\t\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\t\tfor (float i = - radius; i <= radius; i++) {\n\t\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t\t}\n\t\t}\n\t\tcolor = vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n\t}\n\treturn color;\n}\nvec4 calNewBlurFilter(vec2 coord, vec4 color,float texture_width,float texture_height, float radius) {\n\tfloat stepSizeX = 1.0 / texture_width;\n\tfloat stepSizeY = 1.0 / texture_height;\n\tvec4 sum = vec4(0.0, 0.0, 0.0, 0.0);\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = -radius; j <= radius; j++) {\n\t\t\tcoord.x = v_texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = v_texcoord.y + i * stepSizeY;\n\t\t\tsum += texture2D(tex_sampler_0, coord);\n\t\t}\n\t}\n\treturn vec4(sum.rgb / ((2.0 * radius + 1.0) * (2.0 * radius + 1.0)), color.a);\n}\nvec4 calGaussBlur(vec2 texcoord, vec4 color, float stepSizeX, float stepSizeY, float radius) {\n\tfloat sigma = 5.0;\n\tfloat pi = 3.14159;\n\tfloat sigma22 = 2.0 * sigma * sigma;\n\tfloat sigma22Pi = pi * sigma22;\n\tfloat kernalData = 0.0;\n\tfloat sumData = 0.0;\n\tvec4 sum = vec4(0.0,0.0,0.0,0.0);\n\tvec2 coord;\n\tfor (float i = - radius; i <= radius; i++) {\n\t\tfor (float j = - radius; j <= radius; j++) {\n\t\t\tcoord.x = texcoord.x + j * stepSizeX;\n\t\t\tcoord.y = texcoord.y + i * stepSizeY;\n\t\t\tkernalData = exp(-1.0 * (i * i + j * j) / sigma22) / sigma22Pi;\n\t\t\tsumData += kernalData;\n\t\t\tsum += texture2D(tex_sampler_0,coord) * kernalData;\n\t\t}\n\t}\n\treturn vec4(sum.rgb / sumData,color.a);\n}\nvoid main() {\n\tvec4 color = texture2D(tex_sampler_0,v_texcoord);\n\tvec2 coord = v_texcoord;\n\tfloat alpha = 0.3;\n\tvec4 blurColor = calBlurFilter(coord, color, textureWidth, textureHeight, 0.8);\n\tblurColor = (blurColor + color) * 0.5;\n\tcolor = vec4(color.rgb * (1.0 - alpha) + blurColor.rgb * alpha, color.a);\n\tcolor = calPhotoFilter(color,vec3(251.0 / 255.0, 152.0 / 255.0, 93.0 / 255.0),0.68);\n\tcolor = calBrightnessContract(color, 43.0, 0.0, 128.0);\n\tvec4 color1 = vec4(252.0 / 255.0, 241.0 / 255.0, 211.0 / 255.0, 1.0);\n\tvec4 color2 = vec4(0.0, 0.0, 0.0, 1.0);\n\tfloat dist = length(coord - vec2(0.5,0.5));\n\tdist = dist / 0.5;\n\tcolor1 = vec4(color1.r * (1.0 - dist) + color2.r * dist,color1.g * (1.0 - dist) + color2.g * dist,color1.b * (1.0 - dist) + color2.b * dist,color1.a);\n\talpha = 0.05;\n\tcolor = vec4(color.r * (1.0 - alpha) + color1.r * alpha, color.g * (1.0 - alpha) + color1.g * alpha,color.b * (1.0 - alpha) + color1.b * alpha,color.a);\n\tvec4 vignetteColor = calVignette(v_texcoord,color,textureWidth,textureHeight);\n\talpha = length(v_texcoord - vec2(0.5,0.5)) / length(vec2(0.5,0.5));\n\tcolor = vec4(color.r * (1.0 - alpha) + vignetteColor.r * alpha,color.g * (1.0 - alpha) + vignetteColor.g * alpha,color.b * (1.0 - alpha) + vignetteColor.b * alpha,color.a);\n\tcolor = calNewSaturation(color, - 20.0);\n\tcolor = calBrightnessContract(color, -46.0, 100.0, 128.0);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 95
    .restart local v0       #shaderProgram:Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 96
    iput-object v0, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mProgram:Landroid/filterfw/core/Program;

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
    .line 116
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/MoonlightFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 117
    .local v0, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 120
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 121
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/MoonlightFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 125
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 127
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mWidth:I

    .line 128
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mHeight:I

    .line 129
    invoke-direct {p0}, Landroid/filterpacks/imageproc/MoonlightFilter;->initParameters()V

    .line 133
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 136
    .local v2, output:Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/MoonlightFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 139
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/MoonlightFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 142
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 143
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

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/MoonlightFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 76
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/MoonlightFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
