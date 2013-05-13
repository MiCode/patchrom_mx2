.class Lcom/android/camera/Camera$ShutterBtnLongClick;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterBtnLongClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3321
    iput-object p1, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3321
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ShutterBtnLongClick;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3324
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$12600(Lcom/android/camera/Camera;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    iget v0, v0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isLandscape()Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$12700(Lcom/android/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3325
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$5302(Lcom/android/camera/Camera;Z)Z

    .line 3326
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsShutterLongPressedFocusFinished:Z
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$9702(Lcom/android/camera/Camera;Z)Z

    .line 3327
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraState:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsLastTouchFocus:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$7800(Lcom/android/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3328
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->cancelFocus()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$12800(Lcom/android/camera/Camera;)V

    .line 3329
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsShutterLongPressedCancelFocus:Z
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$9602(Lcom/android/camera/Camera;Z)Z

    .line 3334
    :cond_0
    :goto_0
    return v2

    .line 3331
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->lockFocus()V

    goto :goto_0
.end method
