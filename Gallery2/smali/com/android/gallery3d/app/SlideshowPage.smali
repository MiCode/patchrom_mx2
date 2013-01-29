.class public Lcom/android/gallery3d/app/SlideshowPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;,
        Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;,
        Lcom/android/gallery3d/app/SlideshowPage$Slide;,
        Lcom/android/gallery3d/app/SlideshowPage$Model;
    }
.end annotation


# instance fields
.field private mDlnaClient:Landroid/media/dlna/DlnaClient;

.field private mDlnaMode:Z

.field private mDlnaReceiver:Landroid/content/BroadcastReceiver;

.field private mExiting:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

.field private mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    .line 97
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    .line 100
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaMode:Z

    .line 101
    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    .line 102
    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFilter:Landroid/content/IntentFilter;

    .line 103
    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SlideshowPage;->mExiting:Z

    .line 106
    new-instance v0, Lcom/android/gallery3d/app/SlideshowPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SlideshowPage$1;-><init>(Lcom/android/gallery3d/app/SlideshowPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 471
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SlideshowPage;)Lcom/android/gallery3d/ui/SlideshowView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->exit()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SlideshowPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->updateDLNADevicesList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnPause()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnDestroy()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/app/SlideshowPage$Slide;)Lcom/android/gallery3d/app/SlideshowPage$Slide;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/SlideshowPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/SlideshowPage;)Landroid/media/dlna/DlnaClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    return-object v0
.end method

.method private dlnaOnCreate()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    .line 191
    .local v0, app:Lcom/android/gallery3d/app/GalleryAppImpl;
    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDlnaClient()Landroid/media/dlna/DlnaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaMode:Z

    .line 196
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFilter:Landroid/content/IntentFilter;

    .line 197
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "media.dlnaservice.action.devicesChanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    new-instance v1, Lcom/android/gallery3d/app/SlideshowPage$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/SlideshowPage$3;-><init>(Lcom/android/gallery3d/app/SlideshowPage;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    :cond_0
    return-void
.end method

.method private dlnaOnDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaMode:Z

    .line 354
    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFilter:Landroid/content/IntentFilter;

    .line 356
    return-void
.end method

.method private dlnaOnPause()V
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    .line 304
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private dlnaOnResume()V
    .locals 3

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    if-eqz v1, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->updateDLNADevicesList()Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnDestroy()V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    .line 340
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private dlnaPlay(Ljava/lang/String;)V
    .locals 2
    .parameter "localPath"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    new-instance v1, Lcom/android/gallery3d/app/SlideshowPage$5;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/SlideshowPage$5;-><init>(Lcom/android/gallery3d/app/SlideshowPage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 277
    return-void
.end method

.method private exit()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mExiting:Z

    .line 526
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 527
    return-void
.end method

.method private static findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 6
    .parameter "mediaSet"
    .parameter "index"

    .prologue
    .line 394
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 395
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    .line 396
    .local v4, subset:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 397
    .local v0, count:I
    if-ge p1, v0, :cond_0

    .line 398
    invoke-static {v4, p1}, Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    .line 403
    .end local v0           #count:I
    .end local v4           #subset:Lcom/android/gallery3d/data/MediaSet;
    :goto_1
    return-object v5

    .line 400
    .restart local v0       #count:I
    .restart local v4       #subset:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    sub-int/2addr p1, v0

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v0           #count:I
    .end local v4           #subset:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 403
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_1
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 13
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 359
    const-string v8, "random-order"

    invoke-virtual {p1, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 362
    .local v5, random:Z
    const-string v8, "media-set-path"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, mediaPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    .line 364
    .local v7, set:Lcom/android/gallery3d/data/MediaSet;
    instance-of v8, v7, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v8, :cond_0

    .line 365
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/filter/lock/{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    :goto_0
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 371
    .local v3, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v5, :cond_1

    .line 372
    const-string v8, "repeat"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 373
    .local v6, repeat:Z
    new-instance v8, Lcom/android/gallery3d/app/SlideshowDataAdapter;

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    new-instance v10, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;

    invoke-direct {v10, v3, v6}, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;-><init>(Lcom/android/gallery3d/data/MediaSet;Z)V

    invoke-direct {v8, v9, v10, v11, v4}, Lcom/android/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryContext;Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/android/gallery3d/data/Path;)V

    iput-object v8, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    .line 375
    iget-object v8, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v9, "photo-index"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v12, v8}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 385
    :goto_1
    return-void

    .line 367
    .end local v3           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v6           #repeat:Z
    :cond_0
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/android/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 377
    .restart local v3       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    const-string v8, "photo-index"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 378
    .local v0, index:I
    const-string v8, "media-item-path"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, itemPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 380
    .local v4, path:Lcom/android/gallery3d/data/Path;
    :cond_2
    const-string v8, "repeat"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 381
    .restart local v6       #repeat:Z
    new-instance v8, Lcom/android/gallery3d/app/SlideshowDataAdapter;

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    new-instance v10, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;

    invoke-direct {v10, v3, v6}, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;-><init>(Lcom/android/gallery3d/data/MediaSet;Z)V

    invoke-direct {v8, v9, v10, v0, v4}, Lcom/android/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryContext;Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/android/gallery3d/data/Path;)V

    iput-object v8, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    .line 383
    iget-object v8, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v9, "photo-index"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v12, v8}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private initializeViews()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlideshowView;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    .line 389
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 390
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/SlideshowPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 391
    return-void
.end method

.method private loadNextBitmap()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    new-instance v1, Lcom/android/gallery3d/app/SlideshowPage$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/SlideshowPage$4;-><init>(Lcom/android/gallery3d/app/SlideshowPage;)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/SlideshowPage$Model;->nextSlide(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    .line 221
    return-void
.end method

.method private showPendingBitmap()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    .line 228
    .local v2, slide:Lcom/android/gallery3d/app/SlideshowPage$Slide;
    if-nez v2, :cond_1

    .line 229
    iget-boolean v3, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    if-eqz v3, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->exit()V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaMode:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    instance-of v4, v4, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v4, :cond_3

    move v0, v3

    .line 236
    .local v0, inDlnaMode:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 237
    iget-object v1, v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/android/gallery3d/data/LocalImage;

    .line 238
    .local v1, item:Lcom/android/gallery3d/data/LocalImage;
    iget-object v4, v1, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/SlideshowPage;->dlnaPlay(Ljava/lang/String;)V

    .line 241
    .end local v1           #item:Lcom/android/gallery3d/data/LocalImage;
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    iget-object v5, v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    iget-object v6, v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/ui/SlideshowView;->next(Landroid/graphics/Bitmap;I)V

    .line 243
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v6, "media-item-path"

    iget-object v7, v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "photo-index"

    iget v7, v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;->index:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 247
    if-eqz v0, :cond_4

    .line 248
    iget-object v4, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 235
    .end local v0           #inDlnaMode:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 251
    .restart local v0       #inDlnaMode:Z
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateDLNADevicesList()Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 160
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryAppImpl;

    .line 162
    .local v0, app:Lcom/android/gallery3d/app/GalleryAppImpl;
    iget-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    invoke-virtual {v7}, Landroid/media/dlna/DlnaClient;->listPlayers()Ljava/util/List;

    move-result-object v4

    .line 163
    .local v4, devices:Ljava/util/List;,"Ljava/util/List<Landroid/media/dlna/DlnaDevice;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v9, :cond_0

    .line 164
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/app/GalleryAppImpl;->setRemoteDeviceId(Ljava/lang/String;)V

    move v7, v8

    .line 186
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryAppImpl;
    .end local v4           #devices:Ljava/util/List;,"Ljava/util/List<Landroid/media/dlna/DlnaDevice;>;"
    :goto_0
    return v7

    .line 168
    .restart local v0       #app:Lcom/android/gallery3d/app/GalleryAppImpl;
    .restart local v4       #devices:Ljava/util/List;,"Ljava/util/List<Landroid/media/dlna/DlnaDevice;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, curDevId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 171
    .local v1, curDevExist:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 172
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/dlna/DlnaDevice;

    .line 173
    .local v3, device:Landroid/media/dlna/DlnaDevice;
    iget-object v7, v3, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 174
    const/4 v1, 0x1

    .line 179
    .end local v3           #device:Landroid/media/dlna/DlnaDevice;
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 180
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/app/GalleryAppImpl;->setRemoteDeviceId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v7, v9

    .line 186
    goto :goto_0

    .line 171
    .restart local v3       #device:Landroid/media/dlna/DlnaDevice;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 182
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryAppImpl;
    .end local v1           #curDevExist:Z
    .end local v2           #curDevId:Ljava/lang/String;
    .end local v3           #device:Landroid/media/dlna/DlnaDevice;
    .end local v4           #devices:Ljava/util/List;,"Ljava/util/List<Landroid/media/dlna/DlnaDevice;>;"
    .end local v6           #i:I
    :catch_0
    move-exception v5

    .line 183
    .local v5, e:Ljava/lang/Exception;
    const-string v7, "SlideshowPage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDLNADeviceChanged "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 184
    goto :goto_0
.end method


# virtual methods
.method protected onBackPressed()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->exit()V

    .line 331
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 129
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 130
    const-string v0, "dream"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 138
    :goto_0
    new-instance v0, Lcom/android/gallery3d/app/SlideshowPage$2;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SlideshowPage$2;-><init>(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->initializeViews()V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SlideshowPage;->initializeData(Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnCreate()V

    .line 156
    return-void

    .line 135
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 348
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 349
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnDestroy()V

    .line 350
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/SlideshowPage$Model;->pause()V

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlideshowView;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnPause()V

    .line 295
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mExiting:Z

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->exit()V

    .line 298
    :cond_0
    return-void

    .line 288
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/SlideshowPage$Model;->resume()V

    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    iget-object v0, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    iget-object v0, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v0

    if-gtz v0, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    .line 323
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->dlnaOnResume()V

    .line 324
    return-void

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    goto :goto_0
.end method
