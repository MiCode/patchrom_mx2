.class Lcom/android/camera/PanoramaActivity$3;
.super Landroid/os/Handler;
.source "PanoramaActivity.java"


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
    .line 302
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 305
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$900(Lcom/android/camera/PanoramaActivity;)V

    .line 308
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/camera/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/camera/PanoramaActivity;->access$1000(Lcom/android/camera/PanoramaActivity;Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity;->saveHighResMosaic()V

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$900(Lcom/android/camera/PanoramaActivity;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity;->saveThumbnailToFile()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MaskedRotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1100(Lcom/android/camera/PanoramaActivity;)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1200(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 324
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$900(Lcom/android/camera/PanoramaActivity;)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1100(Lcom/android/camera/PanoramaActivity;)V

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1200(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$1300(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$1400(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PanoramaActivity;->access$1500(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/camera/PanoramaActivity$3$1;

    invoke-direct {v4, p0}, Lcom/android/camera/PanoramaActivity$3$1;-><init>(Lcom/android/camera/PanoramaActivity$3;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 340
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$900(Lcom/android/camera/PanoramaActivity;)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1100(Lcom/android/camera/PanoramaActivity;)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1200(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0

    .line 345
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
