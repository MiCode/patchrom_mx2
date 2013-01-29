.class Lcom/android/camera/PanoramaActivity$7;
.super Ljava/lang/Thread;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->reportProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 764
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$2300(Lcom/android/camera/PanoramaActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$800(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z
    invoke-static {v4}, Lcom/android/camera/PanoramaActivity;->access$2400(Lcom/android/camera/PanoramaActivity;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/MosaicFrameProcessor;->reportProgress(ZZ)I

    move-result v1

    .line 769
    .local v1, progress:I
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$2500(Lcom/android/camera/PanoramaActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$2500(Lcom/android/camera/PanoramaActivity;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 771
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    new-instance v3, Lcom/android/camera/PanoramaActivity$7$1;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/PanoramaActivity$7$1;-><init>(Lcom/android/camera/PanoramaActivity$7;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Panorama reportProgress failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 783
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #progress:I
    :cond_0
    return-void
.end method
