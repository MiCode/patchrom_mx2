.class public Lcom/android/gallery3d/photoeditor/RendererUtils;
.super Ljava/lang/Object;
.source "RendererUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;
    }
.end annotation


# static fields
.field private static final POS_VERTICES:[F

.field private static final TEX_VERTICES:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 45
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/photoeditor/RendererUtils;->TEX_VERTICES:[F

    .line 49
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/photoeditor/RendererUtils;->POS_VERTICES:[F

    return-void

    .line 45
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 405
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 406
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_0
    return-void
.end method

.method public static clearTexture(I)V
    .locals 3
    .parameter "texture"

    .prologue
    const/4 v2, 0x0

    .line 132
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 133
    .local v0, textures:[I
    aput p0, v0, v2

    .line 134
    array-length v1, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 135
    const-string v1, "glDeleteTextures"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;
    .locals 9
    .parameter "vertexShaderStr"
    .parameter "fragmentShaderStr"

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 334
    const v6, 0x8b31

    invoke-static {v6, p0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->loadShader(ILjava/lang/String;)I

    move-result v5

    .line 335
    .local v5, vertexShader:I
    if-nez v5, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    const v6, 0x8b30

    invoke-static {v6, p1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 339
    .local v3, pixelShader:I
    if-eqz v3, :cond_0

    .line 343
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    .line 344
    .local v4, program:I
    if-eqz v4, :cond_2

    .line 345
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 346
    const-string v6, "glAttachShader"

    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 347
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 348
    const-string v6, "glAttachShader"

    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 349
    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 350
    new-array v2, v8, [I

    .line 351
    .local v2, linkStatus:[I
    const v6, 0x8b82

    invoke-static {v4, v6, v2, v7}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 352
    aget v6, v2, v7

    if-eq v6, v8, :cond_2

    .line 353
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, info:Ljava/lang/String;
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 355
    const/4 v4, 0x0

    .line 356
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not link program: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 361
    .end local v1           #info:Ljava/lang/String;
    .end local v2           #linkStatus:[I
    :cond_2
    new-instance v0, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;-><init>()V

    .line 362
    .local v0, context:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;
    const-string v6, "tex_sampler"

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texSamplerHandle:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$502(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;I)I

    .line 363
    const-string v6, "precision mediump float;\nuniform sampler2D tex_sampler;\nuniform float alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n  gl_FragColor.a = alpha;\n}\n"

    if-ne p1, v6, :cond_3

    .line 364
    const-string v6, "alpha"

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->alphaHandle:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$602(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;I)I

    .line 366
    :cond_3
    const-string v6, "a_texcoord"

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$202(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;I)I

    .line 367
    const-string v6, "a_position"

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$402(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;I)I

    .line 368
    sget-object v6, Lcom/android/gallery3d/photoeditor/RendererUtils;->TEX_VERTICES:[F

    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texVertices:Ljava/nio/FloatBuffer;
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$302(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 369
    sget-object v6, Lcom/android/gallery3d/photoeditor/RendererUtils;->POS_VERTICES:[F

    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {v0, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$002(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 371
    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->shaderProgram:I
    invoke-static {v0, v4}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$102(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;I)I

    goto/16 :goto_0
.end method

.method public static createTexture()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 85
    .local v0, textures:[I
    array-length v1, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 86
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 87
    aget v1, v0, v2

    return v1
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)I
    .locals 5
    .parameter "bitmap"

    .prologue
    const v4, 0x812f

    const/16 v3, 0x2601

    const/4 v1, 0x0

    const/16 v2, 0xde1

    .line 91
    invoke-static {}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createTexture()I

    move-result v0

    .line 93
    .local v0, texture:I
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 94
    invoke-static {v2, v1, p0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 95
    const/16 v1, 0x2800

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 97
    const/16 v1, 0x2801

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 99
    const/16 v1, 0x2802

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 101
    const/16 v1, 0x2803

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 103
    const-string v1, "texImage2D"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 105
    return v0
.end method

.method private static createVerticesBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "vertices"

    .prologue
    .line 393
    array-length v1, p0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 394
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Number of vertices should be four."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 399
    .local v0, buffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 400
    return-object v0
.end method

.method private static getFitVertices(IIII)[F
    .locals 7
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "dstWidth"
    .parameter "dstHeight"

    .prologue
    const/4 v6, 0x0

    .line 140
    int-to-float v4, p0

    int-to-float v5, p1

    div-float v2, v4, v5

    .line 141
    .local v2, srcAspectRatio:F
    int-to-float v4, p2

    int-to-float v5, p3

    div-float v0, v4, v5

    .line 142
    .local v0, dstAspectRatio:F
    div-float v1, v0, v2

    .line 144
    .local v1, relativeAspectRatio:F
    const/16 v4, 0x8

    new-array v3, v4, [F

    .line 145
    .local v3, vertices:[F
    sget-object v4, Lcom/android/gallery3d/photoeditor/RendererUtils;->POS_VERTICES:[F

    array-length v5, v3

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    const/high16 v4, 0x3f80

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 148
    aget v4, v3, v6

    div-float/2addr v4, v1

    aput v4, v3, v6

    .line 149
    const/4 v4, 0x2

    aget v5, v3, v4

    div-float/2addr v5, v1

    aput v5, v3, v4

    .line 150
    const/4 v4, 0x4

    aget v5, v3, v4

    div-float/2addr v5, v1

    aput v5, v3, v4

    .line 151
    const/4 v4, 0x6

    aget v5, v3, v4

    div-float/2addr v5, v1

    aput v5, v3, v4

    .line 158
    :goto_0
    return-object v3

    .line 153
    :cond_0
    const/4 v4, 0x1

    aget v5, v3, v4

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 154
    const/4 v4, 0x3

    aget v5, v3, v4

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 155
    const/4 v4, 0x5

    aget v5, v3, v4

    mul-float/2addr v5, v1

    aput v5, v3, v4

    .line 156
    const/4 v4, 0x7

    aget v5, v3, v4

    mul-float/2addr v5, v1

    aput v5, v3, v4

    goto :goto_0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 6
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v4, 0x0

    .line 376
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 377
    .local v2, shader:I
    if-eqz v2, :cond_0

    .line 378
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 379
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 380
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 381
    .local v0, compiled:[I
    const v3, 0x8b81

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 382
    aget v3, v0, v4

    if-nez v3, :cond_0

    .line 383
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, info:Ljava/lang/String;
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 385
    const/4 v2, 0x0

    .line 386
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    .end local v0           #compiled:[I
    .end local v1           #info:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static renderBackground()V
    .locals 2

    .prologue
    const v1, 0x3df8f8f9

    .line 259
    const/high16 v0, 0x3f80

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 260
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 261
    return-void
.end method

.method public static renderTexture(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IFII)V
    .locals 7
    .parameter "context"
    .parameter "texture"
    .parameter "alpha"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/16 v2, 0x1406

    const/16 v6, 0xbe2

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 299
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->shaderProgram:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$100(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 300
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 303
    invoke-static {v3, v3, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 304
    const-string v0, "glViewport"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 306
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 307
    const/16 v0, 0x302

    const/16 v4, 0x303

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 310
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$200(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$300(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 312
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$200(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 313
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$400(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$000(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 315
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$400(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 316
    const-string v0, "vertex attribute setup"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 319
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 320
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 321
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 322
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 323
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texSamplerHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$500(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 324
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->alphaHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$600(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 327
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 330
    invoke-static {v6}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 331
    return-void
.end method

.method public static renderTexture(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;III)V
    .locals 6
    .parameter "context"
    .parameter "texture"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 266
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->shaderProgram:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$100(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 267
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 270
    invoke-static {v3, v3, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 271
    const-string v0, "glViewport"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 274
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 277
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$200(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$300(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 279
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$200(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 280
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$400(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$000(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 282
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$400(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 283
    const-string v0, "vertex attribute setup"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 286
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 287
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 288
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 289
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 290
    #getter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->texSamplerHandle:I
    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$500(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 293
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 294
    return-void
.end method

.method public static saveTexture(III)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "texture"
    .parameter "width"
    .parameter "height"

    .prologue
    const v10, 0x8d40

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 109
    new-array v8, v9, [I

    .line 110
    .local v8, frame:[I
    invoke-static {v9, v8, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 111
    const-string v1, "glGenFramebuffers"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 112
    aget v1, v8, v0

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 113
    const-string v1, "glBindFramebuffer"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 114
    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v10, v1, v2, p0, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 116
    const-string v1, "glFramebufferTexture2D"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 118
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 119
    .local v6, buffer:Ljava/nio/ByteBuffer;
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 120
    const-string v1, "glReadPixels"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 121
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 122
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 124
    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 125
    const-string v1, "glBindFramebuffer"

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 126
    invoke-static {v9, v8, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 127
    const-string v0, "glDeleteFramebuffer"

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->checkGlError(Ljava/lang/String;)V

    .line 128
    return-object v7
.end method

.method public static setRenderToFit(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIII)V
    .locals 1
    .parameter "context"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "dstWidth"
    .parameter "dstHeight"

    .prologue
    .line 163
    invoke-static {p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/RendererUtils;->getFitVertices(IIII)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0, v0}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$002(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 165
    return-void
.end method

.method public static setRenderToFlip(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIIIFF)V
    .locals 13
    .parameter "context"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"

    .prologue
    .line 201
    invoke-static/range {p1 .. p4}, Lcom/android/gallery3d/photoeditor/RendererUtils;->getFitVertices(IIII)[F

    move-result-object v1

    .line 202
    .local v1, base:[F
    move/from16 v0, p5

    float-to-int v10, v0

    div-int/lit16 v3, v10, 0xb4

    .line 203
    .local v3, horizontalRounds:I
    rem-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_0

    .line 204
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v1, v11

    neg-float v11, v11

    aput v11, v1, v10

    .line 205
    const/4 v10, 0x4

    const/4 v11, 0x0

    aget v11, v1, v11

    aput v11, v1, v10

    .line 206
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v1, v11

    neg-float v11, v11

    aput v11, v1, v10

    .line 207
    const/4 v10, 0x6

    const/4 v11, 0x2

    aget v11, v1, v11

    aput v11, v1, v10

    .line 209
    :cond_0
    move/from16 v0, p6

    float-to-int v10, v0

    div-int/lit16 v8, v10, 0xb4

    .line 210
    .local v8, verticalRounds:I
    rem-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_1

    .line 211
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v1, v11

    neg-float v11, v11

    aput v11, v1, v10

    .line 212
    const/4 v10, 0x3

    const/4 v11, 0x1

    aget v11, v1, v11

    aput v11, v1, v10

    .line 213
    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v1, v11

    neg-float v11, v11

    aput v11, v1, v10

    .line 214
    const/4 v10, 0x7

    const/4 v11, 0x5

    aget v11, v1, v11

    aput v11, v1, v10

    .line 217
    :cond_1
    const/high16 v4, 0x40a0

    .line 218
    .local v4, length:F
    const/16 v10, 0x8

    new-array v9, v10, [F

    .line 219
    .local v9, vertices:[F
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v9

    invoke-static {v1, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    const/high16 v10, 0x4334

    rem-float v10, p5, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    .line 221
    mul-int/lit16 v10, v3, 0xb4

    int-to-float v10, v10

    sub-float v10, p5, v10

    const v11, 0x3c8efa35

    mul-float v5, v10, v11

    .line 222
    .local v5, radian:F
    invoke-static {v5}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 223
    .local v2, cosTheta:F
    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v7

    .line 225
    .local v7, sinTheta:F
    const/4 v10, 0x0

    aget v10, v1, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v4

    div-float v6, v4, v10

    .line 226
    .local v6, scale:F
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v1, v11

    mul-float/2addr v11, v2

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 227
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 228
    const/4 v10, 0x4

    const/4 v11, 0x0

    aget v11, v9, v11

    aput v11, v9, v10

    .line 229
    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 231
    const/4 v10, 0x2

    aget v10, v1, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v4

    div-float v6, v4, v10

    .line 232
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v1, v11

    mul-float/2addr v11, v2

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 233
    const/4 v10, 0x3

    const/4 v11, 0x3

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 234
    const/4 v10, 0x6

    const/4 v11, 0x2

    aget v11, v9, v11

    aput v11, v9, v10

    .line 235
    const/4 v10, 0x7

    const/4 v11, 0x7

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 238
    .end local v2           #cosTheta:F
    .end local v5           #radian:F
    .end local v6           #scale:F
    .end local v7           #sinTheta:F
    :cond_2
    const/high16 v10, 0x4334

    rem-float v10, p6, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_3

    .line 239
    mul-int/lit16 v10, v8, 0xb4

    int-to-float v10, v10

    sub-float v10, p6, v10

    const v11, 0x3c8efa35

    mul-float v5, v10, v11

    .line 240
    .restart local v5       #radian:F
    invoke-static {v5}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 241
    .restart local v2       #cosTheta:F
    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v7

    .line 243
    .restart local v7       #sinTheta:F
    const/4 v10, 0x1

    aget v10, v1, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v4

    div-float v6, v4, v10

    .line 244
    .restart local v6       #scale:F
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 245
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v1, v11

    mul-float/2addr v11, v2

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 246
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 247
    const/4 v10, 0x3

    const/4 v11, 0x1

    aget v11, v9, v11

    aput v11, v9, v10

    .line 249
    const/4 v10, 0x5

    aget v10, v1, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v4

    div-float v6, v4, v10

    .line 250
    const/4 v10, 0x4

    const/4 v11, 0x4

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 251
    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v1, v11

    mul-float/2addr v11, v2

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 252
    const/4 v10, 0x6

    const/4 v11, 0x6

    aget v11, v1, v11

    mul-float/2addr v11, v6

    aput v11, v9, v10

    .line 253
    const/4 v10, 0x7

    const/4 v11, 0x5

    aget v11, v9, v11

    aput v11, v9, v10

    .line 255
    .end local v2           #cosTheta:F
    .end local v5           #radian:F
    .end local v6           #scale:F
    .end local v7           #sinTheta:F
    :cond_3
    invoke-static {v9}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {p0, v10}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$002(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 256
    return-void
.end method

.method public static setRenderToRotate(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIIIF)V
    .locals 16
    .parameter "context"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "degrees"

    .prologue
    .line 169
    move/from16 v0, p5

    neg-float v13, v0

    const v14, 0x3c8efa35

    mul-float v7, v13, v14

    .line 170
    .local v7, radian:F
    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 171
    .local v2, cosTheta:F
    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v10

    .line 172
    .local v10, sinTheta:F
    move/from16 v0, p1

    int-to-float v13, v0

    mul-float v3, v2, v13

    .line 173
    .local v3, cosWidth:F
    move/from16 v0, p1

    int-to-float v13, v0

    mul-float v11, v10, v13

    .line 174
    .local v11, sinWidth:F
    move/from16 v0, p2

    int-to-float v13, v0

    mul-float v1, v2, v13

    .line 175
    .local v1, cosHeight:F
    move/from16 v0, p2

    int-to-float v13, v0

    mul-float v9, v10, v13

    .line 177
    .local v9, sinHeight:F
    const/16 v13, 0x8

    new-array v12, v13, [F

    .line 178
    .local v12, vertices:[F
    const/4 v13, 0x0

    neg-float v14, v3

    add-float/2addr v14, v9

    aput v14, v12, v13

    .line 179
    const/4 v13, 0x1

    neg-float v14, v11

    sub-float/2addr v14, v1

    aput v14, v12, v13

    .line 180
    const/4 v13, 0x2

    add-float v14, v3, v9

    aput v14, v12, v13

    .line 181
    const/4 v13, 0x3

    sub-float v14, v11, v1

    aput v14, v12, v13

    .line 182
    const/4 v13, 0x4

    const/4 v14, 0x2

    aget v14, v12, v14

    neg-float v14, v14

    aput v14, v12, v13

    .line 183
    const/4 v13, 0x5

    const/4 v14, 0x3

    aget v14, v12, v14

    neg-float v14, v14

    aput v14, v12, v13

    .line 184
    const/4 v13, 0x6

    const/4 v14, 0x0

    aget v14, v12, v14

    neg-float v14, v14

    aput v14, v12, v13

    .line 185
    const/4 v13, 0x7

    const/4 v14, 0x1

    aget v14, v12, v14

    neg-float v14, v14

    aput v14, v12, v13

    .line 187
    const/4 v13, 0x0

    aget v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v14, 0x2

    aget v14, v12, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 188
    .local v6, maxWidth:F
    const/4 v13, 0x1

    aget v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v14, 0x3

    aget v14, v12, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 189
    .local v5, maxHeight:F
    move/from16 v0, p3

    int-to-float v13, v0

    div-float/2addr v13, v6

    move/from16 v0, p4

    int-to-float v14, v0

    div-float/2addr v14, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 191
    .local v8, scale:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/16 v13, 0x8

    if-ge v4, v13, :cond_0

    .line 192
    aget v13, v12, v4

    move/from16 v0, p3

    int-to-float v14, v0

    div-float v14, v8, v14

    mul-float/2addr v13, v14

    aput v13, v12, v4

    .line 193
    add-int/lit8 v13, v4, 0x1

    aget v14, v12, v13

    move/from16 v0, p4

    int-to-float v15, v0

    div-float v15, v8, v15

    mul-float/2addr v14, v15

    aput v14, v12, v13

    .line 191
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {v12}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createVerticesBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v13

    move-object/from16 v0, p0

    #setter for: Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;
    invoke-static {v0, v13}, Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;->access$002(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 196
    return-void
.end method
