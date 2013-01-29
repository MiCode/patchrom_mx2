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
    .line 3083
    iput-object p1, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3083
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ShutterBtnLongClick;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 3086
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isCaptrueModeNormal(Z)Z
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$12100(Lcom/android/camera/Camera;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    iget v0, v0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isLandscape()Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$12200(Lcom/android/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3087
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/Camera;->mIsShutterBtnLongPressed:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;Z)Z

    .line 3088
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mIsShutterLongPressedFocusFinished:Z
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$9302(Lcom/android/camera/Camera;Z)Z

    .line 3089
    iget-object v0, p0, Lcom/android/camera/Camera$ShutterBtnLongClick;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->lockFocus()V

    .line 3091
    :cond_0
    return v2
.end method
