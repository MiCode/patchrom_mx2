.class Lcom/android/gallery3d/app/PhotoPage$14;
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
    .line 1632
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$path:Lcom/android/gallery3d/data/Path;

    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$current:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1636
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1637
    packed-switch v0, :pswitch_data_0

    .line 1669
    :goto_0
    return v4

    .line 1641
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resetToFullView()V

    .line 1642
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v1, 0x4

    #calls: Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2200(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto :goto_0

    .line 1645
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v5, v1}, Lcom/android/gallery3d/app/PhotoPage;->startPhotoEditor(ZLcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 1648
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v4, v1}, Lcom/android/gallery3d/app/PhotoPage;->startPhotoEditor(ZLcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 1652
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.android.camera.action.CROP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1653
    const-string v0, "confirm-overwrite"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1654
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const-class v3, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1655
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1656
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$current:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1657
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V
    invoke-static {v0, v5}, Lcom/android/gallery3d/app/PhotoPage;->access$2200(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto :goto_0

    .line 1656
    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    .line 1660
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$5200(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto :goto_0

    .line 1663
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2300(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 1666
    :pswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2200(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto :goto_0

    .line 1637
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
