.class Lcom/android/camera/PanoramaActivity$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 246
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$300(Lcom/android/camera/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 252
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$300(Lcom/android/camera/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$1;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$400(Lcom/android/camera/PanoramaActivity;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_0
.end method
