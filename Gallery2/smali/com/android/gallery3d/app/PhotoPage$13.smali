.class Lcom/android/gallery3d/app/PhotoPage$13;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$current:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic val$path:Lcom/android/gallery3d/data/Path;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$13;->val$path:Lcom/android/gallery3d/data/Path;

    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPage$13;->val$current:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    .line 1541
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1542
    packed-switch v0, :pswitch_data_0

    .line 1588
    :goto_0
    return v4

    .line 1546
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resetToFullView()V

    .line 1547
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v1, 0x4

    #calls: Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1900(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto :goto_0

    .line 1550
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$13;->val$path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 1552
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1553
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1558
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$13;->val$path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 1560
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1562
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1563
    const-string v0, "marked_mode"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1564
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1565
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1571
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.android.camera.action.CROP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1572
    const-string v0, "confirm-overwrite"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1573
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const-class v3, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1574
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$13;->val$path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1575
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$13;->val$current:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1576
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v1, 0x0

    #calls: Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1900(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto/16 :goto_0

    .line 1575
    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    .line 1579
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto/16 :goto_0

    .line 1582
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2000(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 1585
    :pswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$13;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1900(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto/16 :goto_0

    .line 1542
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
