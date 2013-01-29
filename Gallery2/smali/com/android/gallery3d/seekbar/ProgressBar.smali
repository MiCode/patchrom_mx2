.class public Lcom/android/gallery3d/seekbar/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/seekbar/ProgressBar$1;,
        Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;,
        Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;,
        Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# instance fields
.field private mAccessibilityEventSender:Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAnimationResolution:I

.field private mBehavior:I

.field private mBreakPointLevel:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastDrawTime:J

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/seekbar/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 236
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/seekbar/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/seekbar/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "styleRes"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 223
    iput v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mBreakPointLevel:I

    .line 248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mUiThreadId:J

    .line 249
    invoke-direct {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->initProgressBar()V

    .line 251
    sget-object v5, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 254
    .local v0, a:Landroid/content/res/TypedArray;
    iput-boolean v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mNoInvalidate:Z

    .line 256
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 257
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/seekbar/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/seekbar/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_0
    const/16 v5, 0x9

    iget v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mDuration:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mDuration:I

    .line 267
    const/16 v5, 0xb

    iget v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinWidth:I

    .line 268
    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxWidth:I

    .line 269
    const/16 v5, 0xc

    iget v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinHeight:I

    .line 270
    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxHeight:I

    .line 272
    const/16 v5, 0xa

    iget v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mBehavior:I

    .line 274
    const/16 v5, 0xd

    const v6, 0x10a000b

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 277
    .local v2, resID:I
    if-lez v2, :cond_1

    .line 278
    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/seekbar/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 281
    :cond_1
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/seekbar/ProgressBar;->setMax(I)V

    .line 283
    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/seekbar/ProgressBar;->setProgress(I)V

    .line 285
    const/4 v5, 0x4

    iget v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/seekbar/ProgressBar;->setSecondaryProgress(I)V

    .line 288
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_2

    .line 290
    invoke-direct {p0, v1}, Lcom/android/gallery3d/seekbar/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/seekbar/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_2
    const/4 v5, 0x6

    iget-boolean v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mOnlyIndeterminate:Z

    .line 297
    iput-boolean v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mNoInvalidate:Z

    .line 299
    iget-boolean v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v5, :cond_3

    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/seekbar/ProgressBar;->setIndeterminate(Z)V

    .line 302
    const/16 v3, 0xe

    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimationResolution:I

    .line 305
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/seekbar/ProgressBar;IIZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/seekbar/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/gallery3d/seekbar/ProgressBar;Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;)Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mRefreshProgressRunnable:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"
    .parameter "callBackToApp"

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 595
    .local v4, scale:F
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 596
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 597
    const/4 v3, 0x0

    .line 599
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 600
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 603
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 604
    .local v2, level:I
    if-eqz v3, :cond_3

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 609
    .end local v2           #level:I
    :goto_2
    if-eqz p4, :cond_1

    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 610
    invoke-virtual {p0, v4, p3}, Lcom/android/gallery3d/seekbar/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :cond_1
    monitor-exit p0

    return-void

    .line 594
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_3
    move-object v3, v1

    .line 604
    goto :goto_1

    .line 606
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 594
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 402
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    .line 403
    iput v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    .line 404
    iput v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mSecondaryProgress:I

    .line 405
    iput-boolean v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    .line 406
    iput-boolean v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mOnlyIndeterminate:Z

    .line 407
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mDuration:I

    .line 408
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mBehavior:I

    .line 409
    iput v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinWidth:I

    .line 410
    iput v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxWidth:I

    .line 411
    iput v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinHeight:I

    .line 412
    iput v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxHeight:I

    .line 413
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 622
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/gallery3d/seekbar/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mRefreshProgressRunnable:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 627
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mRefreshProgressRunnable:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;

    .line 629
    .local v0, r:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mRefreshProgressRunnable:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;

    .line 630
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 635
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/seekbar/ProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    .end local v0           #r:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 633
    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;-><init>(Lcom/android/gallery3d/seekbar/ProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #r:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAccessibilityEventSender:Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1139
    new-instance v0, Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;-><init>(Lcom/android/gallery3d/seekbar/ProgressBar;Lcom/android/gallery3d/seekbar/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAccessibilityEventSender:Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;

    .line 1143
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAccessibilityEventSender:Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/seekbar/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1144
    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAccessibilityEventSender:Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/seekbar/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 17
    .parameter "drawable"
    .parameter "clip"

    .prologue
    .line 314
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_3

    move-object/from16 v3, p1

    .line 315
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 316
    .local v3, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 317
    .local v2, N:I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    .line 319
    .local v11, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 320
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 321
    .local v6, id:I
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v14, 0x102000d

    if-eq v6, v14, :cond_0

    const v14, 0x102000f

    if-ne v6, v14, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/gallery3d/seekbar/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v11, v5

    .line 319
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 325
    .end local v6           #id:I
    :cond_2
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 327
    .local v8, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_5

    .line 328
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v14

    invoke-virtual {v8, v5, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 327
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 333
    .end local v2           #N:I
    .end local v3           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v5           #i:I
    .end local v8           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v14, :cond_6

    move-object/from16 v7, p1

    .line 334
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    .line 335
    .local v7, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 336
    .local v10, out:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v9

    .line 337
    .local v9, numStates:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 338
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v14

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v15, v1}, Lcom/android/gallery3d/seekbar/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 337
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move-object v8, v10

    .line 358
    .end local v5           #i:I
    .end local v7           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v9           #numStates:I
    .end local v10           #out:Landroid/graphics/drawable/StateListDrawable;
    .end local p1
    :cond_5
    :goto_4
    return-object v8

    .line 342
    .restart local p1
    :cond_6
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_9

    .line 343
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 344
    .local v13, tileBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/seekbar/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v14, :cond_7

    .line 345
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/gallery3d/seekbar/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 348
    :cond_7
    new-instance v12, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 350
    .local v12, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v13, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 352
    .local v4, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v12}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 354
    if-eqz p2, :cond_8

    new-instance v14, Landroid/graphics/drawable/ClipDrawable;

    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v12, v15, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v12, v14

    .end local v12           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_8
    move-object v8, v12

    goto :goto_4

    .end local v4           #bitmapShader:Landroid/graphics/BitmapShader;
    .end local v13           #tileBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_9
    move-object/from16 v8, p1

    .line 358
    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "drawable"

    .prologue
    const/16 v7, 0x2710

    .line 372
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 373
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 374
    .local v1, background:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 375
    .local v0, N:I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 376
    .local v4, newBg:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 378
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 379
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/seekbar/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 380
    .local v2, frame:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 381
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    .end local v2           #frame:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 384
    move-object p1, v4

    .line 386
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/AnimationDrawable;
    .end local v3           #i:I
    .end local v4           #newBg:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 5
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x0

    .line 935
    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int v1, v2, v3

    .line 936
    .local v1, right:I
    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int v0, v2, v3

    .line 938
    .local v0, bottom:I
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 939
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 942
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 943
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 945
    :cond_1
    return-void
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1030
    .local v0, state:[I
    iget-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1037
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1023
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1024
    invoke-direct {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->updateDrawableState()V

    .line 1025
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 363
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 362
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .parameter "who"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getResolvedLayoutDirection()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "dr"

    .prologue
    .line 905
    iget-boolean v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 906
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/seekbar/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 907
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 908
    .local v0, dirty:Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mScrollX:I

    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 909
    .local v1, scrollX:I
    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mScrollY:I

    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .line 911
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/gallery3d/seekbar/ProgressBar;->invalidate(IIII)V

    .line 917
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 554
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 555
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 557
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1101
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1102
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->startAnimation()V

    .line 1105
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->stopAnimation()V

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mRefreshProgressRunnable:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mRefreshProgressRunnable:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/seekbar/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAccessibilityEventSender:Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAccessibilityEventSender:Lcom/android/gallery3d/seekbar/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/seekbar/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1120
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1121
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 955
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 956
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 959
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 961
    .local v0, availdeHeight:I
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mBreakPointLevel:I

    mul-int/2addr v8, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getMax()I

    move-result v9

    div-int v1, v8, v9

    .line 962
    .local v1, breakLevel:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 963
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 964
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getDrawingTime()J

    move-result-wide v5

    .line 965
    .local v5, time:J
    iget-object v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v8, :cond_0

    .line 966
    iget-object v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v9, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8, v5, v6, v9}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 967
    iget-object v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 969
    .local v4, scale:F
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mInDrawing:Z

    .line 970
    const v8, 0x461c4000

    mul-float/2addr v8, v4

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mInDrawing:Z

    .line 974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mLastDrawTime:J

    sub-long/2addr v8, v10

    iget v10, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimationResolution:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 975
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mLastDrawTime:J

    .line 976
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimationResolution:I

    int-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Lcom/android/gallery3d/seekbar/ProgressBar;->postInvalidateDelayed(J)V

    .line 979
    .end local v4           #scale:F
    :cond_0
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mBreakPointLevel:I

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getMax()I

    move-result v9

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mBreakPointLevel:I

    if-eqz v8, :cond_2

    .line 980
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getWidth()I

    move-result v10

    sub-int v11, v0, v1

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 981
    .local v7, upPartRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 982
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 983
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 985
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 986
    iget v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 987
    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    sub-int v9, v0, v1

    add-int/lit8 v9, v9, 0x5

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getWidth()I

    move-result v10

    invoke-direct {v3, v8, v9, v10, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 988
    .local v3, downPartRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 989
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 990
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 996
    .end local v3           #downPartRect:Landroid/graphics/Rect;
    .end local v7           #upPartRect:Landroid/graphics/Rect;
    :goto_0
    iget-boolean v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v8, :cond_1

    instance-of v8, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v8, :cond_1

    .line 997
    check-cast v2, Landroid/graphics/drawable/Animatable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 998
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1001
    .end local v0           #availdeHeight:I
    .end local v1           #breakLevel:I
    .end local v5           #time:J
    :cond_1
    monitor-exit p0

    return-void

    .line 972
    .restart local v0       #availdeHeight:I
    .restart local v1       #breakLevel:I
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    .restart local v5       #time:J
    :catchall_0
    move-exception v8

    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mInDrawing:Z

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 953
    .end local v0           #availdeHeight:I
    .end local v1           #breakLevel:I
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    .end local v5           #time:J
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 992
    .restart local v0       #availdeHeight:I
    .restart local v1       #breakLevel:I
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    .restart local v5       #time:J
    :cond_2
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 993
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1125
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1126
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1127
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1128
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1005
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1007
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1008
    .local v2, dw:I
    const/4 v1, 0x0

    .line 1009
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 1010
    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1011
    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->updateDrawableState()V

    .line 1014
    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1015
    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingTop:I

    iget v4, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1017
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/android/gallery3d/seekbar/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Lcom/android/gallery3d/seekbar/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/seekbar/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    monitor-exit p0

    return-void

    .line 1005
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #dh:I
    .end local v2           #dw:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->scheduleAccessibilityEventSender()V

    .line 618
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1092
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;

    .line 1093
    .local v0, ss:Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1095
    iget v1, v0, Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/seekbar/ProgressBar;->setProgress(I)V

    .line 1096
    iget v1, v0, Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/seekbar/ProgressBar;->setSecondaryProgress(I)V

    .line 1097
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1081
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1082
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1084
    .local v0, ss:Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;
    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    iput v2, v0, Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;->progress:I

    .line 1085
    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/android/gallery3d/seekbar/ProgressBar$SavedState;->secondaryProgress:I

    .line 1087
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 930
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/seekbar/ProgressBar;->updateDrawableBounds(II)V

    .line 931
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 891
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 893
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 895
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 896
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->stopAnimation()V

    .line 901
    :cond_1
    :goto_0
    return-void

    .line 898
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 562
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 564
    :cond_0
    return-void
.end method

.method public setBreakPointLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 948
    iput p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mBreakPointLevel:I

    .line 949
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 438
    iput-boolean p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    .line 440
    if-eqz p1, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 443
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 446
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 474
    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 477
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 478
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 479
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 480
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->postInvalidate()V

    .line 482
    :cond_1
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 850
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/seekbar/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 851
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 861
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 766
    monitor-enter p0

    if-gez p1, :cond_0

    .line 767
    const/4 p1, 0x0

    .line 769
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 770
    iput p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    .line 771
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->postInvalidate()V

    .line 773
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 774
    iput p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    .line 776
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/seekbar/ProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    :cond_2
    monitor-exit p0

    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 652
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/seekbar/ProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    monitor-exit p0

    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 661
    :cond_1
    if-gez p1, :cond_2

    .line 662
    const/4 p1, 0x0

    .line 665
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 666
    iget p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    .line 669
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 670
    iput p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    .line 671
    const v0, 0x102000d

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/android/gallery3d/seekbar/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "d"

    .prologue
    const/4 v4, 0x0

    .line 508
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_3

    .line 509
    iget-object v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 510
    const/4 v1, 0x1

    .line 515
    .local v1, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 519
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 520
    .local v0, drawableHeight:I
    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxHeight:I

    if-ge v2, v0, :cond_0

    .line 521
    iput v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMaxHeight:I

    .line 522
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->requestLayout()V

    .line 525
    .end local v0           #drawableHeight:I
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 526
    iget-boolean v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_1

    .line 527
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 528
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->postInvalidate()V

    .line 531
    :cond_1
    if-eqz v1, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/seekbar/ProgressBar;->updateDrawableBounds(II)V

    .line 533
    invoke-direct {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->updateDrawableState()V

    .line 534
    const v2, 0x102000d

    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/gallery3d/seekbar/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 535
    const v2, 0x102000f

    iget v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/gallery3d/seekbar/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 537
    :cond_2
    return-void

    .line 512
    .end local v1           #needUpdate:Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #needUpdate:Z
    goto :goto_0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .parameter "secondaryProgress"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 705
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 693
    :cond_1
    if-gez p1, :cond_2

    .line 694
    const/4 p1, 0x0

    .line 697
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 698
    iget p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mMax:I

    .line 701
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 702
    iput p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mSecondaryProgress:I

    .line 703
    const v0, 0x102000f

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/seekbar/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "v"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 876
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 880
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->stopAnimation()V

    .line 887
    :cond_1
    :goto_0
    return-void

    .line 883
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 3

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 826
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->postInvalidate()V

    goto :goto_0

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 815
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 818
    :cond_2
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 819
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 820
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 821
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 822
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 823
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 824
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1
.end method

.method stopAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 833
    iput-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 834
    iput-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 835
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->postInvalidate()V

    .line 840
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
