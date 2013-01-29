.class Lcom/android/camera/PanoramaActivity$2;
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
    .line 257
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$500(Lcom/android/camera/PanoramaActivity;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrameSync()V

    .line 266
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$500(Lcom/android/camera/PanoramaActivity;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$700(Lcom/android/camera/PanoramaActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrame()V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->alignFrame()V

    .line 272
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$2;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$800(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->processFrame()V

    goto :goto_0
.end method
