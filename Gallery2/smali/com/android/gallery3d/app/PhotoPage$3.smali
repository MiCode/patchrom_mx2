.class Lcom/android/gallery3d/app/PhotoPage$3;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 468
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 512
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 470
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->hideBars()V
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 514
    :goto_0
    return-void

    .line 474
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    goto :goto_0

    .line 478
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    goto :goto_0

    .line 482
    :pswitch_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/AppBridge;->onFullScreenChanged(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 486
    :pswitch_4
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1400(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 490
    :pswitch_5
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->wantBars()V
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1500(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 494
    :pswitch_6
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    goto :goto_0

    .line 498
    :pswitch_7
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->layoutSlideshowButton()V
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1600(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 499
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->layoutFilmText()V
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1700(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 503
    :pswitch_8
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->hideLightLayout()V
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1800(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 507
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 508
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 509
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
