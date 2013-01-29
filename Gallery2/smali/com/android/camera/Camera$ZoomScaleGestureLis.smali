.class Lcom/android/camera/Camera$ZoomScaleGestureLis;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomScaleGestureLis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1095
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ZoomScaleGestureLis;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, zoomValue:I
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41a0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1117
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    .line 1138
    .end local v0           #zoomValue:I
    :goto_0
    return v1

    .line 1119
    .restart local v0       #zoomValue:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1120
    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBeginScaleValue:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6300(Lcom/android/camera/Camera;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1128
    :goto_1
    if-gez v0, :cond_5

    .line 1129
    const/4 v0, 0x0

    .line 1133
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomValue:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5900(Lcom/android/camera/Camera;)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1134
    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    .line 1135
    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mZoomValue:I
    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$5902(Lcom/android/camera/Camera;I)I

    .line 1138
    .end local v0           #zoomValue:I
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    goto :goto_0

    .line 1122
    .restart local v0       #zoomValue:I
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBeginScaleValue:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6300(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    .line 1123
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_1

    .line 1125
    :cond_4
    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mBeginScaleValue:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$6300(Lcom/android/camera/Camera;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_1

    .line 1130
    :cond_5
    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomMax:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1131
    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomMax:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5800(Lcom/android/camera/Camera;)I

    move-result v0

    goto :goto_2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomValue:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5900(Lcom/android/camera/Camera;)I

    move-result v1

    #setter for: Lcom/android/camera/Camera;->mBeginScaleValue:I
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$6302(Lcom/android/camera/Camera;I)I

    .line 1100
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/Camera;->mIsScaleGesture:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$6402(Lcom/android/camera/Camera;Z)Z

    .line 1101
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->hideZoomSeekBar()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)V

    .line 1103
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIsShowCameraAppView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomScaleGestureLis;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/Camera;->mIsScaleGesture:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$6402(Lcom/android/camera/Camera;Z)Z

    .line 1110
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 1111
    return-void
.end method
