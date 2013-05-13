.class Lcom/android/gallery3d/app/PhotoPage$5;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 584
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 585
    .local v0, path:Lcom/android/gallery3d/data/Path;
    const/4 v1, 0x0

    .line 586
    .local v1, rotation:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 609
    :goto_0
    if-eqz v1, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    .line 612
    :cond_0
    return-void

    .line 590
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->enterState(I)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$2200(Lcom/android/gallery3d/app/PhotoPage;I)V

    goto :goto_0

    .line 593
    :pswitch_1
    const/16 v1, 0x5a

    .line 594
    goto :goto_0

    .line 596
    :pswitch_2
    const/16 v1, -0x5a

    .line 597
    goto :goto_0

    .line 599
    :pswitch_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->startSlideShow()V
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2300(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 602
    :pswitch_4
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSlideshowShuffle:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$2500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShuffle:Z
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoPage;->access$2400(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mShuffle:Z
    invoke-static {v5, v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2402(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 605
    :pswitch_5
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSlideshowRepeat:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$2700(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mRepeat:Z
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoPage;->access$2600(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mRepeat:Z
    invoke-static {v5, v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2602(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 586
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
