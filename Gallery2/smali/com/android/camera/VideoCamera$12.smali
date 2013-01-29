.class Lcom/android/camera/VideoCamera$12;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->showRotateToast(I)V
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
    .line 2524
    iput-object p1, p0, Lcom/android/camera/VideoCamera$12;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/android/camera/VideoCamera$12;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mRotateToastText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$5200(Lcom/android/camera/VideoCamera;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 2528
    return-void
.end method
