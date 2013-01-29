.class Lcom/android/gallery3d/app/AlbumPage$5;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 573
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 625
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 575
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$1300(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 579
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-result-object v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$1500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-result-object v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$1500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingStarted()V

    goto :goto_0

    .line 587
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-result-object v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$1500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSmartLayout:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-result-object v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$1500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingFinished()V

    goto :goto_0

    .line 595
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 599
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->updateCount()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1600(Lcom/android/gallery3d/app/AlbumPage;)V

    goto :goto_0

    .line 603
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 604
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 605
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 606
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 607
    const-string v3, "media-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 615
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 616
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "no-open-center"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 618
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 622
    :pswitch_7
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->checkSlideshowMenuItem()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1800(Lcom/android/gallery3d/app/AlbumPage;)V

    goto/16 :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
