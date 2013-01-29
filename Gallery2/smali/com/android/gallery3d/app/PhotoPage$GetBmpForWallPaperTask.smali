.class Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBmpForWallPaperTask"
.end annotation


# instance fields
.field private mResult:Landroid/graphics/Bitmap;

.field private mResultReady:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 1
    .parameter

    .prologue
    .line 2665
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->mResultReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2665
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2670
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->mResultReady:Z

    if-nez v0, :cond_0

    .line 2671
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2673
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->mResult:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 6
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2678
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/OrientationManager;->getDisplayRotation()I

    move-result v0

    .line 2680
    .local v0, displayRotation:I
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/gallery3d/ui/PhotoView;->getDrawnBmpOfCurrentItem(Lcom/android/gallery3d/ui/GLCanvas;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->mResult:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2690
    :goto_0
    monitor-enter p0

    .line 2691
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->mResultReady:Z

    .line 2692
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2693
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2694
    return v5

    .line 2681
    :catch_0
    move-exception v1

    .line 2682
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Gallery2"

    const-string v3, "getDrawnBmpOfCurrentItem out of memory"

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->mResult:Landroid/graphics/Bitmap;

    .line 2684
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0a01ef

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2685
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 2686
    .local v1, e:Ljava/lang/Exception;
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$GetBmpForWallPaperTask;->mResult:Landroid/graphics/Bitmap;

    .line 2687
    const-string v2, "Gallery2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawnBmpOfCurrentItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2693
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
