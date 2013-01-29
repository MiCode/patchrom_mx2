.class public Lcom/android/gallery3d/app/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GifDecoder$GifFrame;
    }
.end annotation


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frameindex:I

.field protected frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field protected mBlock:[B

.field protected mBlockSize:I

.field private mCurrentReadFrameIndex:I

.field private mDone:Z

.field protected mImage:Landroid/graphics/Bitmap;

.field private mInterrupted:Z

.field protected mIs:Ljava/io/InputStream;

.field private mKeepFrameEnd:I

.field private mKeepFrameStart:I

.field protected mLastImage:Landroid/graphics/Bitmap;

.field private mMaxKeepFrameNum:I

.field protected mStatus:I

.field private mTotalBitmapSize:J

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/GifDecoder;->loopCount:I

    .line 48
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->frameindex:I

    .line 51
    iput-boolean v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mInterrupted:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mDone:Z

    .line 70
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlock:[B

    .line 71
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlockSize:I

    .line 74
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->dispose:I

    .line 76
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->lastDispose:I

    .line 77
    iput-boolean v1, p0, Lcom/android/gallery3d/app/GifDecoder;->transparency:Z

    .line 78
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->delay:I

    .line 94
    return-void
.end method

.method private computeKeepFrameNum()V
    .locals 3

    .prologue
    .line 711
    iget v1, p0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x2

    .line 712
    .local v0, sizePerFrame:I
    const/high16 v1, 0x180

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mMaxKeepFrameNum:I

    .line 713
    return-void
.end method


# virtual methods
.method protected decodeImageData()V
    .locals 25

    .prologue
    .line 297
    const/4 v2, -0x1

    .line 298
    .local v2, NullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 301
    .local v17, npix:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 302
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/GifDecoder;->pixels:[B

    .line 304
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 305
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/GifDecoder;->prefix:[S

    .line 307
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 308
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/GifDecoder;->suffix:[B

    .line 310
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 311
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/GifDecoder;->pixelStack:[B

    .line 314
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v11

    .line 315
    .local v11, data_size:I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 316
    .local v6, clear:I
    add-int/lit8 v13, v6, 0x1

    .line 317
    .local v13, end_of_information:I
    add-int/lit8 v3, v6, 0x2

    .line 318
    .local v3, available:I
    move/from16 v18, v2

    .line 319
    .local v18, old_code:I
    add-int/lit8 v9, v11, 0x1

    .line 320
    .local v9, code_size:I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 321
    .local v8, code_mask:I
    const/4 v7, 0x0

    .local v7, code:I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 321
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 327
    :cond_5
    const/4 v4, 0x0

    .local v4, bi:I
    move/from16 v19, v4

    .local v19, pi:I
    move/from16 v21, v4

    .local v21, top:I
    move v14, v4

    .local v14, first:I
    move v10, v4

    .local v10, count:I
    move v5, v4

    .local v5, bits:I
    move v12, v4

    .line 328
    .local v12, datum:I
    const/4 v15, 0x0

    .local v15, i:I
    move/from16 v20, v19

    .end local v19           #pi:I
    .local v20, pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .local v22, top:I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_11

    .line 329
    if-nez v22, :cond_12

    .line 330
    if-ge v5, v9, :cond_8

    .line 332
    if-nez v10, :cond_7

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/GifDecoder;->readBlock()I

    move-result v10

    .line 335
    if-gtz v10, :cond_6

    move/from16 v21, v22

    .line 399
    .end local v22           #top:I
    .restart local v21       #top:I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 399
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 338
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_6
    const/4 v4, 0x0

    .line 340
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->mBlock:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 341
    add-int/lit8 v5, v5, 0x8

    .line 342
    add-int/lit8 v4, v4, 0x1

    .line 343
    add-int/lit8 v10, v10, -0x1

    .line 344
    goto :goto_1

    .line 347
    :cond_8
    and-int v7, v12, v8

    .line 348
    shr-int/2addr v12, v9

    .line 349
    sub-int/2addr v5, v9

    .line 352
    if-gt v7, v3, :cond_11

    if-ne v7, v13, :cond_9

    move/from16 v21, v22

    .line 353
    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_2

    .line 355
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_9
    if-ne v7, v6, :cond_a

    .line 357
    add-int/lit8 v9, v11, 0x1

    .line 358
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 359
    add-int/lit8 v3, v6, 0x2

    .line 360
    move/from16 v18, v2

    .line 361
    goto :goto_1

    .line 363
    :cond_a
    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 365
    move/from16 v18, v7

    .line 366
    move v14, v7

    move/from16 v22, v21

    .line 367
    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_1

    .line 369
    :cond_b
    move/from16 v16, v7

    .line 370
    .local v16, in_code:I
    if-ne v7, v3, :cond_c

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 372
    move/from16 v7, v18

    move/from16 v22, v21

    .line 374
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_c
    :goto_4
    if-le v7, v6, :cond_d

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_4

    .line 378
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 380
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    move/from16 v21, v22

    .line 381
    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .line 383
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 386
    add-int/lit8 v3, v3, 0x1

    .line 387
    and-int v23, v3, v8

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_f

    .line 388
    add-int/lit8 v9, v9, 0x1

    .line 389
    add-int/2addr v8, v3

    .line 391
    :cond_f
    move/from16 v18, v16

    .line 395
    .end local v16           #in_code:I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #pi:I
    .restart local v19       #pi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 397
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19           #pi:I
    .restart local v20       #pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_1

    .line 402
    .end local v22           #top:I
    .restart local v21       #top:I
    :cond_10
    return-void

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_11
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_12
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFrame(I)Lcom/android/gallery3d/app/GifDecoder$GifFrame;
    .locals 2
    .parameter "n"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, gf:Lcom/android/gallery3d/app/GifDecoder$GifFrame;
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/gallery3d/app/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #gf:Lcom/android/gallery3d/app/GifDecoder$GifFrame;
    check-cast v0, Lcom/android/gallery3d/app/GifDecoder$GifFrame;

    .line 249
    .restart local v0       #gf:Lcom/android/gallery3d/app/GifDecoder$GifFrame;
    :cond_0
    return-object v0
.end method

.method public getFrames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/GifDecoder;->frames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    return v0
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 409
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    .line 410
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GifDecoder;->frames:Ljava/util/ArrayList;

    .line 412
    iput-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->gct:[I

    .line 413
    iput-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->lct:[I

    .line 414
    iput-boolean v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mInterrupted:Z

    .line 415
    return-void
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 3
    .parameter "is"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->init()V

    .line 267
    if-eqz p1, :cond_2

    .line 268
    iput-object p1, p0, Lcom/android/gallery3d/app/GifDecoder;->mIs:Ljava/io/InputStream;

    .line 269
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readHeader()V

    .line 270
    invoke-direct {p0}, Lcom/android/gallery3d/app/GifDecoder;->computeKeepFrameNum()V

    .line 271
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mKeepFrameStart:I

    .line 272
    iget v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mMaxKeepFrameNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mKeepFrameEnd:I

    .line 273
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readContents()V

    .line 275
    iget v1, p0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    if-gez v1, :cond_0

    .line 276
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    .line 279
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mMaxKeepFrameNum:I

    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    if-le v1, v2, :cond_1

    .line 280
    iget v1, p0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mMaxKeepFrameNum:I

    .line 281
    iget v1, p0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mKeepFrameEnd:I

    .line 288
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    iget v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    return v1

    .line 285
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readBlock()I
    .locals 6

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlockSize:I

    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, n:I
    iget v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlockSize:I

    if-lez v3, :cond_1

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, count:I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlockSize:I

    if-ge v2, v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mIs:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlock:[B

    iget v5, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 437
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 445
    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlockSize:I

    if-ge v2, v3, :cond_1

    .line 446
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    .line 449
    .end local v0           #count:I
    :cond_1
    return v2

    .line 440
    .restart local v0       #count:I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readByte()I
    .locals 3

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, curByte:I
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mIs:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 424
    :goto_0
    return v0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    goto :goto_0
.end method

.method protected readColorTable(I)[I
    .locals 14
    .parameter "ncolors"

    .prologue
    .line 453
    mul-int/lit8 v9, p1, 0x3

    .line 454
    .local v9, nbytes:I
    const/4 v11, 0x0

    .line 455
    .local v11, tab:[I
    new-array v1, v9, [B

    .line 456
    .local v1, c:[B
    const/4 v8, 0x0

    .line 458
    .local v8, n:I
    :try_start_0
    iget-object v12, p0, Lcom/android/gallery3d/app/GifDecoder;->mIs:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 462
    :goto_0
    if-ge v8, v9, :cond_1

    .line 463
    const/4 v12, 0x1

    iput v12, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    .line 475
    :cond_0
    return-object v11

    .line 459
    :catch_0
    move-exception v2

    .line 460
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 466
    const/4 v4, 0x0

    .line 467
    .local v4, i:I
    const/4 v6, 0x0

    .local v6, j:I
    move v7, v6

    .end local v6           #j:I
    .local v7, j:I
    move v5, v4

    .line 468
    .end local v4           #i:I
    .local v5, i:I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 469
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 470
    .local v10, r:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .restart local v7       #j:I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 471
    .local v3, g:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 472
    .local v0, b:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/high16 v12, -0x100

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6           #j:I
    .restart local v7       #j:I
    move v5, v4

    .line 473
    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_1
.end method

.method protected readContents()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 487
    iput-boolean v5, p0, Lcom/android/gallery3d/app/GifDecoder;->mDone:Z

    .line 488
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mTotalBitmapSize:J

    .line 489
    iput v5, p0, Lcom/android/gallery3d/app/GifDecoder;->mCurrentReadFrameIndex:I

    .line 490
    iget-object v3, p0, Lcom/android/gallery3d/app/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 491
    iput v5, p0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    .line 492
    iget-object v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mIs:Ljava/io/InputStream;

    invoke-virtual {v3, v5}, Ljava/io/InputStream;->mark(I)V

    .line 494
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mIs:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    :sswitch_0
    iget-boolean v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mDone:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->err()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mInterrupted:Z

    if-nez v3, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v1

    .line 499
    .local v1, code:I
    sparse-switch v1, :sswitch_data_0

    .line 533
    iput v6, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    goto :goto_0

    .line 501
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readOneFrame()V

    .line 502
    iget v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mCurrentReadFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mCurrentReadFrameIndex:I

    goto :goto_0

    .line 505
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v1

    .line 506
    sparse-switch v1, :sswitch_data_1

    .line 524
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->skip()V

    goto :goto_0

    .line 508
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 511
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readBlock()I

    .line 513
    const-string v0, ""

    .line 514
    .local v0, app:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlock:[B

    aget-byte v4, v4, v2

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 517
    :cond_0
    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->skip()V

    goto :goto_0

    .line 528
    .end local v0           #app:Ljava/lang/String;
    .end local v2           #i:I
    :sswitch_5
    iput-boolean v6, p0, Lcom/android/gallery3d/app/GifDecoder;->mDone:Z

    goto :goto_0

    .line 536
    .end local v1           #code:I
    :cond_2
    return-void

    .line 495
    :catch_0
    move-exception v3

    goto :goto_0

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 506
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 539
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    .line 540
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v0

    .line 541
    .local v0, packed:I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->dispose:I

    .line 542
    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 543
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->dispose:I

    .line 545
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/GifDecoder;->transparency:Z

    .line 546
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->delay:I

    .line 547
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->transIndex:I

    .line 548
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    .line 549
    return-void

    .line 545
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 552
    const-string v1, ""

    .line 553
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 557
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    .line 565
    :cond_1
    :goto_1
    return-void

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readLSD()V

    .line 561
    iget-boolean v2, p0, Lcom/android/gallery3d/app/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 562
    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->gct:[I

    .line 563
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->gct:[I

    iget v3, p0, Lcom/android/gallery3d/app/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    .line 631
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->height:I

    .line 633
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v0

    .line 634
    .local v0, packed:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/GifDecoder;->gctFlag:Z

    .line 637
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->gctSize:I

    .line 638
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->bgIndex:I

    .line 639
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->pixelAspect:I

    .line 640
    return-void

    .line 634
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readBlock()I

    .line 645
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlock:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 647
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlock:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 648
    .local v0, b1:I
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlock:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 649
    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->loopCount:I

    .line 651
    .end local v0           #b1:I
    .end local v1           #b2:I
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    :cond_2
    return-void
.end method

.method protected readOneFrame()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->ix:I

    .line 569
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->iy:I

    .line 570
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->iw:I

    .line 571
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->ih:I

    .line 572
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v0

    .line 573
    .local v0, packed:I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/GifDecoder;->lctFlag:Z

    .line 574
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/GifDecoder;->interlace:Z

    .line 577
    const/4 v2, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v2, v5

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->lctSize:I

    .line 578
    iget-boolean v2, p0, Lcom/android/gallery3d/app/GifDecoder;->lctFlag:Z

    if-eqz v2, :cond_6

    .line 579
    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->lctSize:I

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->lct:[I

    .line 580
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->lct:[I

    iput-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->act:[I

    .line 587
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 588
    .local v1, save:I
    iget-boolean v2, p0, Lcom/android/gallery3d/app/GifDecoder;->transparency:Z

    if-eqz v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->act:[I

    iget v5, p0, Lcom/android/gallery3d/app/GifDecoder;->transIndex:I

    aget v1, v2, v5

    .line 590
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->act:[I

    iget v5, p0, Lcom/android/gallery3d/app/GifDecoder;->transIndex:I

    aput v4, v2, v5

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->act:[I

    if-nez v2, :cond_2

    .line 593
    iput v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mStatus:I

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 626
    :cond_3
    :goto_3
    return-void

    .end local v1           #save:I
    :cond_4
    move v2, v4

    .line 573
    goto :goto_0

    :cond_5
    move v2, v4

    .line 574
    goto :goto_1

    .line 582
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->gct:[I

    iput-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->act:[I

    .line 583
    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->bgIndex:I

    iget v5, p0, Lcom/android/gallery3d/app/GifDecoder;->transIndex:I

    if-ne v2, v5, :cond_0

    .line 584
    iput v4, p0, Lcom/android/gallery3d/app/GifDecoder;->bgColor:I

    goto :goto_2

    .line 599
    .restart local v1       #save:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->decodeImageData()V

    .line 601
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->skip()V

    .line 602
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_3

    .line 606
    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    .line 612
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->setPixels()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mImage:Landroid/graphics/Bitmap;

    .line 613
    iget-wide v4, p0, Lcom/android/gallery3d/app/GifDecoder;->mTotalBitmapSize:J

    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v6, p0, Lcom/android/gallery3d/app/GifDecoder;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/gallery3d/app/GifDecoder;->mTotalBitmapSize:J

    .line 614
    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mCurrentReadFrameIndex:I

    iget v4, p0, Lcom/android/gallery3d/app/GifDecoder;->mKeepFrameEnd:I

    if-gt v2, v4, :cond_8

    iget v2, p0, Lcom/android/gallery3d/app/GifDecoder;->mCurrentReadFrameIndex:I

    iget v4, p0, Lcom/android/gallery3d/app/GifDecoder;->mKeepFrameStart:I

    if-lt v2, v4, :cond_8

    .line 615
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->frames:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/gallery3d/app/GifDecoder$GifFrame;

    iget-object v5, p0, Lcom/android/gallery3d/app/GifDecoder;->mImage:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/gallery3d/app/GifDecoder;->delay:I

    invoke-direct {v4, v5, v6}, Lcom/android/gallery3d/app/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_8
    iget-wide v4, p0, Lcom/android/gallery3d/app/GifDecoder;->mTotalBitmapSize:J

    const-wide/32 v6, 0x1800000

    cmp-long v2, v4, v6

    if-lez v2, :cond_9

    .line 618
    iput-boolean v3, p0, Lcom/android/gallery3d/app/GifDecoder;->mDone:Z

    .line 622
    :cond_9
    iget-boolean v2, p0, Lcom/android/gallery3d/app/GifDecoder;->transparency:Z

    if-eqz v2, :cond_a

    .line 623
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->act:[I

    iget v3, p0, Lcom/android/gallery3d/app/GifDecoder;->transIndex:I

    aput v1, v2, v3

    .line 625
    :cond_a
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->resetFrame()V

    goto :goto_3
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 695
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GifDecoder$GifFrame;

    .line 696
    .local v0, frame:Lcom/android/gallery3d/app/GifDecoder$GifFrame;
    iget-object v2, v0, Lcom/android/gallery3d/app/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 698
    .end local v0           #frame:Lcom/android/gallery3d/app/GifDecoder$GifFrame;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 699
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/GifDecoder;->frames:Ljava/util/ArrayList;

    .line 700
    return-void
.end method

.method protected resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 660
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->dispose:I

    iput v0, p0, Lcom/android/gallery3d/app/GifDecoder;->lastDispose:I

    .line 661
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->ix:I

    iput v0, p0, Lcom/android/gallery3d/app/GifDecoder;->lrx:I

    .line 662
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->iy:I

    iput v0, p0, Lcom/android/gallery3d/app/GifDecoder;->lry:I

    .line 663
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->iw:I

    iput v0, p0, Lcom/android/gallery3d/app/GifDecoder;->lrw:I

    .line 664
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->ih:I

    iput v0, p0, Lcom/android/gallery3d/app/GifDecoder;->lrh:I

    .line 665
    iget-object v0, p0, Lcom/android/gallery3d/app/GifDecoder;->mImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/app/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    .line 666
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/android/gallery3d/app/GifDecoder;->lastBgColor:I

    .line 667
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->dispose:I

    .line 668
    iput-boolean v1, p0, Lcom/android/gallery3d/app/GifDecoder;->transparency:Z

    .line 669
    iput v1, p0, Lcom/android/gallery3d/app/GifDecoder;->delay:I

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GifDecoder;->lct:[I

    .line 671
    return-void
.end method

.method protected setPixels()Landroid/graphics/Bitmap;
    .locals 26

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/app/GifDecoder;->height:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 134
    .local v3, dest:[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->lastDispose:I

    if-lez v2, :cond_4

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->lastDispose:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 137
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->frameCount:I

    add-int/lit8 v20, v2, -0x2

    .line 138
    .local v20, n:I
    if-lez v20, :cond_2

    .line 139
    add-int/lit8 v2, v20, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/GifDecoder;->getFrame(I)Lcom/android/gallery3d/app/GifDecoder$GifFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/android/gallery3d/app/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    .line 144
    .end local v20           #n:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/gallery3d/app/GifDecoder;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->lastDispose:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 149
    const/4 v11, 0x0

    .line 150
    .local v11, c:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/GifDecoder;->transparency:Z

    if-nez v2, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/gallery3d/app/GifDecoder;->lastBgColor:I

    .line 153
    :cond_1
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->lrh:I

    if-ge v14, v2, :cond_4

    .line 154
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->lry:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/app/GifDecoder;->lrx:I

    add-int v21, v2, v4

    .line 155
    .local v21, n1:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->lrw:I

    add-int v22, v21, v2

    .line 156
    .local v22, n2:I
    move/from16 v18, v21

    .local v18, k:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 157
    aput v11, v3, v18

    .line 156
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 141
    .end local v11           #c:I
    .end local v14           #i:I
    .end local v18           #k:I
    .end local v21           #n1:I
    .end local v22           #n2:I
    .restart local v20       #n:I
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/GifDecoder;->mLastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 153
    .end local v20           #n:I
    .restart local v11       #c:I
    .restart local v14       #i:I
    .restart local v18       #k:I
    .restart local v21       #n1:I
    .restart local v22       #n2:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 165
    .end local v11           #c:I
    .end local v14           #i:I
    .end local v18           #k:I
    .end local v21           #n1:I
    .end local v22           #n2:I
    :cond_4
    const/16 v23, 0x1

    .line 166
    .local v23, pass:I
    const/16 v16, 0x8

    .line 167
    .local v16, inc:I
    const/4 v15, 0x0

    .line 168
    .local v15, iline:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->ih:I

    if-ge v14, v2, :cond_a

    .line 169
    move/from16 v19, v14

    .line 170
    .local v19, line:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/GifDecoder;->interlace:Z

    if-eqz v2, :cond_6

    .line 171
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->ih:I

    if-lt v15, v2, :cond_5

    .line 172
    add-int/lit8 v23, v23, 0x1

    .line 173
    packed-switch v23, :pswitch_data_0

    .line 186
    :cond_5
    :goto_4
    move/from16 v19, v15

    .line 187
    add-int v15, v15, v16

    .line 189
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->iy:I

    add-int v19, v19, v2

    .line 190
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->height:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    .line 191
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    mul-int v18, v19, v2

    .line 192
    .restart local v18       #k:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->ix:I

    add-int v13, v18, v2

    .line 193
    .local v13, dx:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->iw:I

    add-int v12, v13, v2

    .line 194
    .local v12, dlim:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    add-int v2, v2, v18

    if-ge v2, v12, :cond_7

    .line 195
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    add-int v12, v18, v2

    .line 197
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->iw:I

    mul-int v24, v14, v2

    .local v24, sx:I
    move/from16 v25, v24

    .line 198
    .end local v24           #sx:I
    .local v25, sx:I
    :goto_5
    if-ge v13, v12, :cond_9

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/GifDecoder;->pixels:[B

    add-int/lit8 v24, v25, 0x1

    .end local v25           #sx:I
    .restart local v24       #sx:I
    aget-byte v2, v2, v25

    and-int/lit16 v0, v2, 0xff

    move/from16 v17, v0

    .line 201
    .local v17, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/GifDecoder;->act:[I

    aget v11, v2, v17

    .line 202
    .restart local v11       #c:I
    if-eqz v11, :cond_8

    .line 203
    aput v11, v3, v13

    .line 205
    :cond_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v25, v24

    .line 206
    .end local v24           #sx:I
    .restart local v25       #sx:I
    goto :goto_5

    .line 175
    .end local v11           #c:I
    .end local v12           #dlim:I
    .end local v13           #dx:I
    .end local v17           #index:I
    .end local v18           #k:I
    .end local v25           #sx:I
    :pswitch_0
    const/4 v15, 0x4

    .line 176
    goto :goto_4

    .line 178
    :pswitch_1
    const/4 v15, 0x2

    .line 179
    const/16 v16, 0x4

    .line 180
    goto :goto_4

    .line 182
    :pswitch_2
    const/4 v15, 0x1

    .line 183
    const/16 v16, 0x2

    goto :goto_4

    .line 168
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 228
    .end local v19           #line:I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/app/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/app/GifDecoder;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 229
    .local v10, bmp:Landroid/graphics/Bitmap;
    return-object v10

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->readBlock()I

    .line 679
    iget v0, p0, Lcom/android/gallery3d/app/GifDecoder;->mBlockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    :cond_1
    return-void
.end method
