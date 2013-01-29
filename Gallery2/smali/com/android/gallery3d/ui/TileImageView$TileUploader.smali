.class Lcom/android/gallery3d/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/TileImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/android/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 6
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 552
    if-eqz p2, :cond_0

    .line 567
    :goto_0
    return v4

    .line 553
    :cond_0
    const/4 v0, 0x1

    .line 556
    .local v0, quota:I
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    monitor-enter v5

    .line 557
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    #getter for: Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;
    invoke-static {v2}, Lcom/android/gallery3d/ui/TileImageView;->access$300(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v1

    .line 558
    .local v1, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    if-eqz v1, :cond_2

    if-gtz v0, :cond_3

    .line 566
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 567
    if-eqz v1, :cond_6

    :goto_3
    move v4, v3

    goto :goto_0

    .line 558
    .end local v1           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 560
    .restart local v1       #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_3
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 561
    iget v2, v1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_4

    move v2, v3

    :goto_4
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 562
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 563
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v2, v4

    .line 561
    goto :goto_4

    :cond_5
    move v2, v4

    .line 566
    goto :goto_2

    :cond_6
    move v3, v4

    .line 567
    goto :goto_3
.end method
