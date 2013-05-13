.class Lcom/android/camera/VideoCamera$16;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V
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
    .line 3295
    iput-object p1, p0, Lcom/android/camera/VideoCamera$16;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/android/camera/VideoCamera$16;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->stopPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$5400(Lcom/android/camera/VideoCamera;)V

    .line 3299
    iget-object v0, p0, Lcom/android/camera/VideoCamera$16;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$5500(Lcom/android/camera/VideoCamera;)V

    .line 3300
    iget-object v0, p0, Lcom/android/camera/VideoCamera$16;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1100(Lcom/android/camera/VideoCamera;)V

    .line 3301
    return-void
.end method
