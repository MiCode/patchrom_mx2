.class Lcom/android/gallery3d/app/PhotoPage$19;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onHudViewClicked(ILjava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2463
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$19;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "menuItem"

    .prologue
    const/4 v6, 0x1

    .line 2467
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2468
    .local v1, which:I
    packed-switch v1, :pswitch_data_0

    .line 2493
    :goto_0
    return v6

    .line 2472
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v3, 0x4

    #calls: Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$1900(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto :goto_0

    .line 2475
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 2477
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$19;->val$activity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2478
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2484
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v3

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto :goto_0

    .line 2487
    :pswitch_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2000(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 2490
    :pswitch_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v3, 0x3

    #calls: Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$1900(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto :goto_0

    .line 2468
    :pswitch_data_0
    .packed-switch 0x60c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
