.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$Listener;
    }
.end annotation


# instance fields
.field private mAnimState:I

.field private mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field private mFirstFrameArrived:Z

.field private mListener:Lcom/android/camera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraScreenNail$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;-><init>()V

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 56
    new-instance v0, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v0}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    .line 57
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    .line 76
    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 194
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v5

    .line 195
    .local v5, width:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v6

    .line 196
    .local v6, height:I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 199
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 200
    const/high16 v0, -0x4080

    invoke-interface {p1, v2, v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 202
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 204
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 205
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 82
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 83
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateCapture(I)V
    .locals 2
    .parameter "animOrientation"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCamera()V
    .locals 3

    .prologue
    .line 103
    const-string v0, "CameraScreenNail"

    const-string v1, "animateSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 108
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 110
    :cond_0
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyTexture()V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 122
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 123
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 15
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 127
    iget-object v14, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 128
    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v13

    .line 130
    .local v13, surfaceTexture:Landroid/graphics/SurfaceTexture;
    if-eqz v13, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_2

    :cond_1
    monitor-exit v14

    .line 191
    :goto_0
    return-void

    .line 132
    :cond_2
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v4, :cond_3

    .line 133
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 134
    monitor-exit v14

    goto :goto_0

    .line 190
    .end local v13           #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v4

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 137
    .restart local v13       #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :cond_3
    :try_start_1
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    packed-switch v4, :pswitch_data_0

    .line 167
    :goto_1
    :pswitch_0
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 169
    :cond_4
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 170
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v5, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, p0, v5}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .line 177
    .local v12, drawn:Z
    :goto_2
    if-eqz v12, :cond_7

    .line 178
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 190
    .end local v12           #drawn:Z
    :cond_5
    :goto_3
    monitor-exit v14

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 140
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 141
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 142
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 150
    :pswitch_2
    invoke-virtual {v13}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 153
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v10, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/SwitchAnimManager;->drawDarkPreviewWithoutScale(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    .line 155
    monitor-exit v14

    goto :goto_0

    .line 157
    :pswitch_3
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v4}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 158
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 161
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 162
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    .line 163
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 174
    :cond_6
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v11, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v10, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/SwitchAnimManager;->drawAnimationWithoutScale(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .restart local v12       #drawn:Z
    goto :goto_2

    .line 183
    :cond_7
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_8

    .line 184
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onSwichAnimationEnd()V

    .line 186
    :cond_8
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 187
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public noDraw()V
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 225
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_1

    .line 226
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 227
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 233
    :cond_1
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
