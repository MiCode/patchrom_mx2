.class public Lcom/android/camera/MosaicFrameProcessor;
.super Ljava/lang/Object;
.source "MosaicFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MosaicFrameProcessor$ProgressListener;
    }
.end annotation


# static fields
.field private static sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;


# instance fields
.field private mCurrProcessFrameIdx:I

.field private mDeltaTime:[F

.field private mDeltaX:[F

.field private mDeltaY:[F

.field private mFillIn:I

.field private final mFrameTimestamp:[J

.field private mIsMosaicMemoryAllocated:Z

.field private mLastProcessFrameIdx:I

.field private mLastProcessedFrameTimestamp:J

.field private mMosaicer:Lcom/android/camera/Mosaic;

.field private mOldestIdx:I

.field private mPanningRateX:F

.field private mPanningRateY:F

.field private mPreviewBufferSize:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

.field private mTotalDeltaTime:F

.field private mTotalFrameCount:I

.field private mTotalTranslationX:F

.field private mTotalTranslationY:F

.field private mTranslationLastX:F

.field private mTranslationLastY:F


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFrameTimestamp:[J

    .line 41
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    .line 42
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 44
    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 45
    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 52
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    .line 53
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    .line 54
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    .line 55
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    .line 56
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 57
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 58
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 81
    new-instance v0, Lcom/android/camera/Mosaic;

    invoke-direct {v0}, Lcom/android/camera/Mosaic;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    .line 82
    return-void
.end method

.method public static getInstance()Lcom/android/camera/MosaicFrameProcessor;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/camera/MosaicFrameProcessor;

    invoke-direct {v0}, Lcom/android/camera/MosaicFrameProcessor;-><init>()V

    sput-object v0, Lcom/android/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 77
    :cond_0
    sget-object v0, Lcom/android/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method private setupMosaicer(III)V
    .locals 4
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    const/16 v3, 0x2c

    .line 120
    const-string v0, "MosaicFrameProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMosaicer w, h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MosaicFrameProcessor in use!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 124
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/Mosaic;->allocateMosaicMemory(II)V

    .line 125
    return-void
.end method


# virtual methods
.method public calculateTranslationRate(J)V
    .locals 8
    .parameter "now"

    .prologue
    .line 206
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v5}, Lcom/android/camera/Mosaic;->setSourceImageFromGPU()[F

    move-result-object v0

    .line 207
    .local v0, frameData:[F
    const/16 v5, 0xa

    aget v5, v0, v5

    float-to-int v2, v5

    .line 208
    .local v2, ret_code:I
    const/16 v5, 0x9

    aget v5, v0, v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 209
    const/4 v5, 0x2

    aget v3, v0, v5

    .line 210
    .local v3, translationCurrX:F
    const/4 v5, 0x5

    aget v4, v0, v5

    .line 212
    .local v4, translationCurrY:F
    iget-wide v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    long-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 214
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 215
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 216
    iput-wide p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 248
    :goto_0
    return-void

    .line 222
    :cond_0
    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    .line 223
    .local v1, idx:I
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 224
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 225
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 226
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 227
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 228
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    iget-wide v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    sub-long v6, p1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    aput v6, v5, v1

    .line 229
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 230
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 231
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 239
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    .line 241
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    .line 244
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 245
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 246
    iput-wide p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 247
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0}, Lcom/android/camera/Mosaic;->freeMosaicMemory()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 106
    :cond_0
    monitor-enter p0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 108
    monitor-exit p0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createMosaic(Z)I
    .locals 1
    .parameter "highRes"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/camera/Mosaic;->createMosaic(Z)I

    move-result v0

    return v0
.end method

.method public getFinalMosaicNV21()[B
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0}, Lcom/android/camera/Mosaic;->getFinalMosaicNV21()[B

    move-result-object v0

    return-object v0
.end method

.method public initialize(III)V
    .locals 3
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    .line 94
    iput p2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    .line 95
    iput p3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewBufferSize:I

    .line 96
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    iget v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewBufferSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/MosaicFrameProcessor;->setupMosaicer(III)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/MosaicFrameProcessor;->setStripType(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 99
    return-void
.end method

.method public isMosaicMemoryAllocated()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    return v0
.end method

.method public processFrame()V
    .locals 11

    .prologue
    const/high16 v10, 0x4080

    .line 162
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 169
    .local v6, t1:J
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFrameTimestamp:[J

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    aput-wide v6, v0, v1

    .line 171
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 172
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    .line 176
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    if-eq v0, v1, :cond_0

    .line 177
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 180
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFrameTimestamp:[J

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    aget-wide v8, v0, v1

    .line 184
    .local v8, timestamp:J
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 187
    invoke-virtual {p0, v8, v9}, Lcom/android/camera/MosaicFrameProcessor;->calculateTranslationRate(J)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v10

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v10

    iget v10, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v10

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v10

    iget v10, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0
.end method

.method public reportProgress(ZZ)I
    .locals 1
    .parameter "hires"
    .parameter "cancel"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/Mosaic;->reportProgress(ZZ)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 130
    iput v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 131
    iput v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    .line 132
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 133
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 134
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 135
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 136
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 137
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 138
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    .line 139
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    .line 140
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 141
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    aput v3, v1, v0

    .line 144
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    aput v3, v1, v0

    .line 145
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    aput v3, v1, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v1}, Lcom/android/camera/Mosaic;->reset()V

    .line 148
    return-void
.end method

.method public setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    .line 86
    return-void
.end method

.method public setStripType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/camera/Mosaic;->setStripType(I)V

    .line 117
    return-void
.end method
