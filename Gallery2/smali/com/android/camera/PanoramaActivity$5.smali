.class Lcom/android/camera/PanoramaActivity$5;
.super Ljava/lang/Thread;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V
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
    .line 592
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 595
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v2, v4}, Lcom/android/camera/PanoramaActivity;->generateFinalMosaic(Z)Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    move-result-object v1

    .line 597
    .local v1, jpeg:Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->isValid:Z

    if-eqz v2, :cond_0

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->data:[B

    iget-object v3, v1, Lcom/android/camera/PanoramaActivity$MosaicJpeg;->data:[B

    array-length v3, v3

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 600
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 606
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity$5;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/PanoramaActivity;->access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
