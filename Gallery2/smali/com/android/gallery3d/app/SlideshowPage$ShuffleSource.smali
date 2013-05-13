.class Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShuffleSource"
.end annotation


# instance fields
.field private mLastIndex:I

.field private final mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mOrder:[I

.field private final mRandom:Ljava/util/Random;

.field private final mRepeat:Z

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;Z)V
    .locals 2
    .parameter "mediaSet"
    .parameter "repeat"

    .prologue
    .line 419
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    .line 414
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    .line 416
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    .line 417
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 420
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 421
    iput-boolean p2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRepeat:Z

    .line 422
    return-void
.end method

.method private generateOrderArray(I)V
    .locals 5
    .parameter "totalCount"

    .prologue
    const/4 v4, 0x0

    .line 452
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v1, v1

    if-eq v1, p1, :cond_0

    .line 453
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    .line 454
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    aput v0, v1, v0

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v0           #i:I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .restart local v0       #i:I
    :goto_1
    if-lez v0, :cond_1

    .line 459
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/gallery3d/common/Utils;->swap([III)V

    .line 458
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    aget v1, v1, v4

    iget v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v4, v2}, Lcom/android/gallery3d/common/Utils;->swap([III)V

    .line 464
    :cond_2
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 468
    return-void
.end method

.method public findItemIndex(Lcom/android/gallery3d/data/Path;I)I
    .locals 0
    .parameter "path"
    .parameter "hint"

    .prologue
    .line 425
    return p2
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-boolean v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRepeat:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 438
    :cond_0
    return-object v1

    .line 430
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v3, v3

    rem-int v3, p1, v3

    aget v2, v2, v3

    iput v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 432
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    #calls: Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/SlideshowPage;->access$1000(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 433
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 434
    const-string v2, "SlideshowPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to find image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 436
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    #calls: Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/SlideshowPage;->access$1000(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reload()J
    .locals 5

    .prologue
    .line 442
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v1

    .line 443
    .local v1, version:J
    iget-wide v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 444
    iput-wide v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    .line 445
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 446
    .local v0, count:I
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v3, v3

    if-eq v0, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->generateOrderArray(I)V

    .line 448
    .end local v0           #count:I
    :cond_0
    return-wide v1
.end method

.method public removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 472
    return-void
.end method
