.class Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoRenderer"
.end annotation


# instance fields
.field alphaRenderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

.field animationStartFrame:Lcom/android/gallery3d/photoeditor/Photo;

.field flippedHorizontalDegrees:F

.field flippedVerticalDegrees:F

.field frameIndex:I

.field isRunning:Z

.field isShowSourcePhoto:Z

.field photo:Lcom/android/gallery3d/photoeditor/Photo;

.field final photoBounds:Landroid/graphics/RectF;

.field final queue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field renderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

.field rotatedDegrees:F

.field sourcePhoto:Lcom/android/gallery3d/photoeditor/Photo;

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoView;

.field viewHeight:I

.field viewWidth:I


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->this$0:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    .line 162
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isRunning:Z

    .line 163
    iput v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->frameIndex:I

    .line 165
    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->animationStartFrame:Lcom/android/gallery3d/photoeditor/Photo;

    .line 166
    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->sourcePhoto:Lcom/android/gallery3d/photoeditor/Photo;

    .line 167
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isShowSourcePhoto:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;)V

    return-void
.end method


# virtual methods
.method flipPhoto(FF)V
    .locals 7
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->setRenderToFlip(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIIIFF)V

    .line 219
    iput p1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flippedHorizontalDegrees:F

    .line 220
    iput p2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flippedVerticalDegrees:F

    .line 222
    :cond_0
    return-void
.end method

.method public hideSourcePhoto()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isShowSourcePhoto:Z

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->this$0:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->requestRender()V

    .line 253
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isRunning:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/4 v7, 0x0

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, r:Ljava/lang/Runnable;
    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isShowSourcePhoto:Z

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->sourcePhoto:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v5, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/photoeditor/RendererUtils;->renderTexture(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;III)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    monitor-enter v3

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 266
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    if-eqz v1, :cond_3

    .line 268
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 270
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 271
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->this$0:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->requestRender()V

    .line 273
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/photoeditor/RendererUtils;->renderBackground()V

    .line 274
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    if-eqz v2, :cond_0

    .line 275
    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isRunning:Z

    if-eqz v2, :cond_8

    .line 276
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->animationStartFrame:Lcom/android/gallery3d/photoeditor/Photo;

    if-eqz v2, :cond_5

    .line 277
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->animationStartFrame:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v5, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/photoeditor/RendererUtils;->renderTexture(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;III)V

    .line 279
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->alphaRenderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->frameIndex:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v6, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->renderTexture(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IFII)V

    .line 280
    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->frameIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->frameIndex:I

    .line 281
    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->frameIndex:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    .line 282
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->this$0:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->requestRender()V

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 284
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->animationStartFrame:Lcom/android/gallery3d/photoeditor/Photo;

    if-eqz v2, :cond_7

    .line 285
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->animationStartFrame:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/Photo;->clear()V

    .line 286
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->animationStartFrame:Lcom/android/gallery3d/photoeditor/Photo;

    .line 288
    :cond_7
    iput-boolean v7, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isRunning:Z

    .line 289
    iput v7, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->frameIndex:I

    goto/16 :goto_0

    .line 293
    :cond_8
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v5, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/photoeditor/RendererUtils;->renderTexture(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;III)V

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 300
    iput p2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    .line 301
    iput p3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->updateSurface(ZZ)V

    .line 303
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 307
    const-string v0, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n"

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    .line 308
    const-string v0, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler;\nuniform float alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n  gl_FragColor.a = alpha;\n}\n"

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->alphaRenderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    .line 309
    return-void
.end method

.method rotatePhoto(F)V
    .locals 6
    .parameter "degrees"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/RendererUtils;->setRenderToRotate(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIIIF)V

    .line 211
    iput p1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    .line 213
    :cond_0
    return-void
.end method

.method setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V
    .locals 9
    .parameter "photo"
    .parameter "clearTransform"

    .prologue
    const/4 v3, 0x0

    .line 170
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v2

    .line 171
    .local v2, width:I
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v1

    .line 173
    .local v1, height:I
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    monitor-enter v4

    .line 174
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v6, v1

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 175
    .local v0, changed:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 176
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v2

    int-to-float v8, v1

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    .line 180
    invoke-virtual {p0, p2, v0}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->updateSurface(ZZ)V

    .line 181
    return-void

    .end local v0           #changed:Z
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_2
    move v2, v3

    .line 170
    goto :goto_0

    .restart local v2       #width:I
    :cond_3
    move v1, v3

    .line 171
    goto :goto_1

    .restart local v1       #height:I
    :cond_4
    move v0, v3

    .line 174
    goto :goto_2

    .line 178
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setSourcePhoto(Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->sourcePhoto:Lcom/android/gallery3d/photoeditor/Photo;

    .line 243
    return-void
.end method

.method public showSourcePhoto()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isShowSourcePhoto:Z

    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->this$0:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->requestRender()V

    .line 248
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isRunning:Z

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->animationStartFrame:Lcom/android/gallery3d/photoeditor/Photo;

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/Photo;->save()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    .local v0, animationBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/Photo;->create(Landroid/graphics/Bitmap;)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->animationStartFrame:Lcom/android/gallery3d/photoeditor/Photo;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    .end local v0           #animationBitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method updateSurface(ZZ)V
    .locals 8
    .parameter "clearTransform"
    .parameter "sizeChanged"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 184
    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flippedHorizontalDegrees:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flippedVerticalDegrees:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_5

    :cond_0
    move v0, v3

    .line 185
    .local v0, flipped:Z
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    if-eqz v0, :cond_6

    :cond_1
    move v1, v3

    .line 186
    .local v1, transformed:Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_3

    :cond_2
    if-eqz p2, :cond_7

    if-nez v1, :cond_7

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    if-eqz v2, :cond_4

    .line 189
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v6, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->setRenderToFit(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIII)V

    .line 191
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->alphaRenderContext:Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v6, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/RendererUtils;->setRenderToFit(Lcom/android/gallery3d/photoeditor/RendererUtils$RenderContext;IIII)V

    .line 193
    iput v7, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    .line 194
    iput v7, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flippedHorizontalDegrees:F

    .line 195
    iput v7, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flippedVerticalDegrees:F

    .line 205
    :cond_4
    :goto_2
    return-void

    .end local v0           #flipped:Z
    .end local v1           #transformed:Z
    :cond_5
    move v0, v2

    .line 184
    goto :goto_0

    .restart local v0       #flipped:Z
    :cond_6
    move v1, v2

    .line 185
    goto :goto_1

    .line 199
    .restart local v1       #transformed:Z
    :cond_7
    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_8

    .line 200
    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->rotatePhoto(F)V

    goto :goto_2

    .line 201
    :cond_8
    if-eqz v0, :cond_4

    .line 202
    iget v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flippedHorizontalDegrees:F

    iget v3, p0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flippedVerticalDegrees:F

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flipPhoto(FF)V

    goto :goto_2
.end method
