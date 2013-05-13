.class Lcom/android/camera/VideoCamera$14;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2689
    iput-object p1, p0, Lcom/android/camera/VideoCamera$14;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/camera/VideoCamera$14;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$5100(Lcom/android/camera/VideoCamera;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2693
    iget-object v0, p0, Lcom/android/camera/VideoCamera$14;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/VideoCamera;->mIsNeedRefreshStorageHint:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$5202(Lcom/android/camera/VideoCamera;Z)Z

    .line 2694
    return-void
.end method
