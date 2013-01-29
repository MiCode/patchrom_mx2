.class Lcom/android/gallery3d/app/VideoGallery$2;
.super Landroid/os/Handler;
.source "VideoGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/VideoGallery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoGallery;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 320
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 336
    :goto_0
    return-void

    .line 324
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$200()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #getter for: Lcom/android/gallery3d/app/VideoGallery;->actionbarType:I
    invoke-static {v3}, Lcom/android/gallery3d/app/VideoGallery;->access$500(Lcom/android/gallery3d/app/VideoGallery;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->setActionbarStyle(Landroid/app/Activity;Landroid/app/ActionBar;I)V

    .line 325
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    const v2, 0x102026f

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/VideoGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    .local v0, title:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #getter for: Lcom/android/gallery3d/app/VideoGallery;->mActionBarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/gallery3d/app/VideoGallery;->access$600(Lcom/android/gallery3d/app/VideoGallery;)Landroid/widget/TextView;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #setter for: Lcom/android/gallery3d/app/VideoGallery;->mActionBarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/VideoGallery;->access$602(Lcom/android/gallery3d/app/VideoGallery;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 333
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #setter for: Lcom/android/gallery3d/app/VideoGallery;->mUpdateActionBarTitleAfterChanged:Z
    invoke-static {v1, v4}, Lcom/android/gallery3d/app/VideoGallery;->access$302(Lcom/android/gallery3d/app/VideoGallery;Z)Z

    goto :goto_0

    .line 330
    :cond_1
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/gallery3d/app/VideoGallery$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
