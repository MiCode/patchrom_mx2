.class public Lcom/android/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MenuExecutor$ShareItem;,
        Lcom/android/gallery3d/ui/MenuExecutor$ShareAdapter;,
        Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;,
        Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;,
        Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mConfirmWhat:I

.field private mDialog:Landroid/app/ProgressDialog;

.field private mDstDirPath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mRequestArgFetcher:Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShareAdapter:Lcom/android/gallery3d/ui/MenuExecutor$ShareAdapter;

.field private mSrcRootDirPath:Ljava/lang/String;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mShareAdapter:Lcom/android/gallery3d/ui/MenuExecutor$ShareAdapter;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmWhat:I

    .line 138
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 139
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 140
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$1;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/gallery3d/ui/MenuExecutor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmWhat:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/gallery3d/ui/MenuExecutor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSrcRootDirPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/gallery3d/ui/MenuExecutor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDstDirPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 115
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 118
    if-le p2, v2, :cond_0

    .line 119
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 121
    :cond_0
    return-object v0
.end method

.method private execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 13
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 398
    const/4 v5, 0x1

    .line 399
    .local v5, result:Z
    const-string v8, "MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execute cmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 402
    .local v6, startTime:J
    sparse-switch p3, :sswitch_data_0

    .line 452
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 404
    :sswitch_0
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->delete(Lcom/android/gallery3d/data/Path;)V

    .line 454
    :cond_0
    :goto_0
    const-string v8, "MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "It takes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms to execute cmd for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return v5

    .line 407
    :sswitch_1
    const/16 v8, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 410
    :sswitch_2
    const/16 v8, -0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 413
    :sswitch_3
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 414
    .local v4, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v1

    .line 415
    .local v1, cacheFlag:I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    .line 416
    const/4 v1, 0x1

    .line 420
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 418
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 424
    .end local v1           #cacheFlag:I
    .end local v4           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_4
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 425
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v8, 0x2

    new-array v3, v8, [D

    .line 426
    .local v3, latlng:[D
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 427
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    const/4 v10, 0x1

    aget-wide v10, v3, v10

    invoke-static {v8, v9, v10, v11}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 428
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v8, Landroid/content/Context;

    const/4 v9, 0x0

    aget-wide v9, v3, v9

    const/4 v11, 0x1

    aget-wide v11, v3, v11

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto :goto_0

    .line 433
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #latlng:[D
    :sswitch_5
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 434
    .restart local v4       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->Import()Z

    move-result v5

    .line 435
    goto :goto_0

    .line 438
    .end local v4           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_6
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 439
    .restart local v4       #obj:Lcom/android/gallery3d/data/MediaObject;
    iget v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmWhat:I

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    .line 443
    :pswitch_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSrcRootDirPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDstDirPath:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01d5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/android/gallery3d/data/MediaObject;->copyTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 446
    :pswitch_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSrcRootDirPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDstDirPath:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01d5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/android/gallery3d/data/MediaObject;->moveTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_3
        0x7f0d0192 -> :sswitch_0
        0x7f0d0197 -> :sswitch_6
        0x7f0d01a4 -> :sswitch_5
        0x7f0d01a6 -> :sswitch_2
        0x7f0d01a7 -> :sswitch_1
        0x7f0d01ab -> :sswitch_4
    .end sparse-switch

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "action"

    .prologue
    .line 233
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 234
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 235
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, mimeType:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 387
    packed-switch p0, :pswitch_data_0

    .line 392
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 389
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 391
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSingleSelectedPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 227
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 229
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 228
    goto :goto_0
.end method

.method private onActionShare(I)V
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    .line 532
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 533
    .local v0, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 534
    .local v7, selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v4, 0x0

    .line 535
    .local v4, needThread:Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 536
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 537
    .local v6, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    .line 538
    .local v5, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v5, :cond_0

    instance-of v8, v5, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v8, :cond_0

    move-object v3, v5

    .line 539
    check-cast v3, Lcom/android/gallery3d/data/LocalImage;

    .line 540
    .local v3, localImage:Lcom/android/gallery3d/data/LocalImage;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/LocalImage;->getRotation()I

    move-result v8

    if-eqz v8, :cond_0

    .line 541
    const/4 v4, 0x1

    .line 546
    .end local v3           #localImage:Lcom/android/gallery3d/data/LocalImage;
    .end local v5           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :cond_0
    if-eqz v4, :cond_1

    .line 547
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 548
    .local v1, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 549
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/gallery3d/ui/MenuExecutor$2;

    invoke-direct {v9, p0, v0, v7, v1}, Lcom/android/gallery3d/ui/MenuExecutor$2;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/ProgressDialog;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 568
    .end local v1           #dlg:Landroid/app/ProgressDialog;
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-static {v0, v7}, Lcom/android/gallery3d/util/GalleryUtils;->getShareIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 565
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "com.android.email"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addExcludeName(Ljava/lang/String;)V

    .line 566
    const v8, 0x7f0a0149

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 2
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 240
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 241
    return-void
.end method

.method private onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "result"
    .parameter "listener"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    return-void
.end method

.method private onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    return-void
.end method

.method private sharedByEmail()Z
    .locals 14

    .prologue
    .line 499
    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 500
    .local v0, context:Landroid/content/Context;
    const/4 v9, 0x0

    .line 501
    .local v9, totalSize:I
    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 509
    .local v8, selectedSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 510
    .local v7, selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 511
    .local v6, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    .line 512
    .local v5, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v5, :cond_0

    move-object v4, v5

    .line 513
    check-cast v4, Lcom/android/gallery3d/data/MediaItem;

    .line 514
    .local v4, item:Lcom/android/gallery3d/data/MediaItem;
    int-to-long v10, v9

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v9, v10

    .line 515
    const/high16 v10, 0x320

    if-le v9, v10, :cond_0

    .line 516
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v1, dlg:Landroid/app/AlertDialog$Builder;
    const v10, 0x1080041

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 518
    const v10, 0x7f0a01c6

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "50M"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 519
    const v10, 0x104000a

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 521
    const/4 v10, 0x1

    .line 529
    .end local v1           #dlg:Landroid/app/AlertDialog$Builder;
    .end local v4           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :goto_0
    return v10

    .line 524
    :cond_1
    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->getShareIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    .line 525
    .local v3, intent:Landroid/content/Intent;
    const-string v10, "com.android.email"

    const-string v11, "com.android.email.activity.MessageCompose"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const/high16 v10, 0x400

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 527
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 529
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 175
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 178
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 179
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 181
    :cond_1
    return-void
.end method


# virtual methods
.method public onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 8
    .parameter "action"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    const v4, 0x7f0d0197

    const/4 v3, 0x1

    .line 246
    sparse-switch p1, :sswitch_data_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 248
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_0

    .line 255
    :sswitch_1
    const-string v0, "com.android.camera.action.CROP"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 256
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_2
    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 262
    .restart local v7       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v7, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_3
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 268
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v0, "mimeType"

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v6, Landroid/app/Activity;

    .line 270
    .local v6, activity:Landroid/app/Activity;
    const v0, 0x7f0a015b

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 275
    .end local v6           #activity:Landroid/app/Activity;
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_4
    const v2, 0x7f0a0147

    .local v2, title:I
    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 315
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto :goto_0

    .line 278
    .end local v2           #title:I
    :sswitch_5
    const v2, 0x7f0a0155

    .line 279
    .restart local v2       #title:I
    goto :goto_1

    .line 281
    .end local v2           #title:I
    :sswitch_6
    const v2, 0x7f0a0154

    .line 282
    .restart local v2       #title:I
    goto :goto_1

    .line 284
    .end local v2           #title:I
    :sswitch_7
    const v2, 0x7f0a0153

    .line 285
    .restart local v2       #title:I
    goto :goto_1

    .line 287
    .end local v2           #title:I
    :sswitch_8
    const v2, 0x7f0a0195

    .line 288
    .restart local v2       #title:I
    goto :goto_1

    .line 290
    .end local v2           #title:I
    :sswitch_9
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->sharedByEmail()Z

    goto :goto_0

    .line 293
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->onActionShare(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_b
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mRequestArgFetcher:Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mRequestArgFetcher:Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;->requestArg(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmWhat:I

    .line 300
    iget v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmWhat:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 305
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mRequestArgFetcher:Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;

    invoke-interface {v0, v4, v3}, Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;->requestArg(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSrcRootDirPath:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mRequestArgFetcher:Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;

    const/4 v1, 0x2

    invoke-interface {v0, v4, v1}, Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;->requestArg(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDstDirPath:Ljava/lang/String;

    .line 307
    iget v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmWhat:I

    if-nez v0, :cond_2

    const v2, 0x7f0a01d6

    .line 308
    .restart local v2       #title:I
    :goto_2
    goto :goto_1

    .line 307
    .end local v2           #title:I
    :cond_2
    const v2, 0x7f0a01d7

    goto :goto_2

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0190 -> :sswitch_a
        0x7f0d0191 -> :sswitch_9
        0x7f0d0192 -> :sswitch_4
        0x7f0d0197 -> :sswitch_b
        0x7f0d01a4 -> :sswitch_8
        0x7f0d01a5 -> :sswitch_2
        0x7f0d01a6 -> :sswitch_6
        0x7f0d01a7 -> :sswitch_5
        0x7f0d01a8 -> :sswitch_1
        0x7f0d01a9 -> :sswitch_3
        0x7f0d01ab -> :sswitch_7
        0x7f0d01b1 -> :sswitch_0
    .end sparse-switch

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 5
    .parameter "menuItem"
    .parameter "confirmMsg"
    .parameter "listener"

    .prologue
    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 353
    .local v0, action:I
    if-eqz p2, :cond_1

    .line 354
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 355
    :cond_0
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 356
    .local v1, cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1030317

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a013a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0148

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 365
    .end local v1           #cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 185
    return-void
.end method

.method public setRequestArgFetcher(Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;)V
    .locals 0
    .parameter "fetcher"

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mRequestArgFetcher:Lcom/android/gallery3d/ui/MenuExecutor$RequestArgFetcher;

    .line 769
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 6
    .parameter "action"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 368
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 369
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 5
    .parameter "action"
    .parameter "title"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 373
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 374
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 377
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 378
    if-eqz p5, :cond_0

    .line 379
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 381
    :cond_0
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 382
    .local v2, operation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 383
    iput-boolean p4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 384
    return-void
.end method
