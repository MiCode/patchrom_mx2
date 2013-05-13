.class public Lcom/android/gallery3d/photoeditor/PhotoView;
.super Landroid/opengl/GLSurfaceView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/PhotoView$1;,
        Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;
    }
.end annotation


# instance fields
.field private mIsMarkedMode:Z

.field private final renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/PhotoView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->setEGLContextClientVersion(I)V

    .line 47
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/photoeditor/PhotoView;->setEGLConfigChooser(IIIIII)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 49
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/photoeditor/PhotoView;->setRenderMode(I)V

    .line 51
    iput-boolean v4, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->mIsMarkedMode:Z

    .line 52
    return-void
.end method


# virtual methods
.method public flipPhoto(FF)V
    .locals 1
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flipPhoto(FF)V

    .line 104
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 83
    return-void
.end method

.method public getPhotoBounds()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v2, v1, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    monitor-enter v2

    .line 57
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 58
    .local v0, photoBounds:Landroid/graphics/RectF;
    monitor-exit v2

    .line 59
    return-object v0

    .line 58
    .end local v0           #photoBounds:Landroid/graphics/RectF;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hideSourcePhoto()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->hideSourcePhoto()V

    .line 124
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->isAnimationRunning()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 134
    sget v2, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 138
    :goto_0
    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->mIsMarkedMode:Z

    if-eqz v2, :cond_1

    .line 139
    sget v2, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ACTION_BAR_HEIGHT:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 143
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 144
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/gallery3d/photoeditor/PhotoEditor;->STATUS_BAR_HEIGHT:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    return-void

    .line 136
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 141
    :cond_1
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public queue(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoView;->requestRender()V

    .line 69
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public rotatePhoto(F)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->rotatePhoto(F)V

    .line 97
    return-void
.end method

.method public setIsMarkedMode(Z)V
    .locals 0
    .parameter "isMarkedMode"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->mIsMarkedMode:Z

    .line 128
    return-void
.end method

.method public setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V
    .locals 1
    .parameter "photo"
    .parameter "clearTransform"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V

    .line 90
    return-void
.end method

.method public setSourcePhoto(Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->setSourcePhoto(Lcom/android/gallery3d/photoeditor/Photo;)V

    .line 116
    return-void
.end method

.method public showSourcePhoto()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->showSourcePhoto()V

    .line 120
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->startAnimation()V

    .line 108
    return-void
.end method
