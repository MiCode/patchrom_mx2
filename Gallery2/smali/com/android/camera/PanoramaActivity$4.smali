.class Lcom/android/camera/PanoramaActivity$4;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/camera/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->startCapture()V
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
    .line 547
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$4;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 6
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    const/high16 v5, 0x4320

    .line 551
    iget-object v4, p0, Lcom/android/camera/PanoramaActivity$4;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/android/camera/PanoramaActivity;->access$1700(Lcom/android/camera/PanoramaActivity;)F

    move-result v4

    mul-float v0, p4, v4

    .line 552
    .local v0, accumulatedHorizontalAngle:F
    iget-object v4, p0, Lcom/android/camera/PanoramaActivity$4;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/android/camera/PanoramaActivity;->access$1800(Lcom/android/camera/PanoramaActivity;)F

    move-result v4

    mul-float v1, p5, v4

    .line 553
    .local v1, accumulatedVerticalAngle:F
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 556
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PanoramaActivity$4;->this$0:Lcom/android/camera/PanoramaActivity;

    const/4 v5, 0x0

    #calls: Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V
    invoke-static {v4, v5}, Lcom/android/camera/PanoramaActivity;->access$1900(Lcom/android/camera/PanoramaActivity;Z)V

    .line 563
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PanoramaActivity$4;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/android/camera/PanoramaActivity;->access$1700(Lcom/android/camera/PanoramaActivity;)F

    move-result v4

    mul-float v2, p2, v4

    .line 559
    .local v2, panningRateXInDegree:F
    iget-object v4, p0, Lcom/android/camera/PanoramaActivity$4;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/android/camera/PanoramaActivity;->access$1800(Lcom/android/camera/PanoramaActivity;)F

    move-result v4

    mul-float v3, p3, v4

    .line 560
    .local v3, panningRateYInDegree:F
    iget-object v4, p0, Lcom/android/camera/PanoramaActivity$4;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->updateProgress(FFFF)V
    invoke-static {v4, v2, v3, v0, v1}, Lcom/android/camera/PanoramaActivity;->access$2000(Lcom/android/camera/PanoramaActivity;FFFF)V

    goto :goto_0
.end method
