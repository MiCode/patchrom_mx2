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
    .line 325
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 329
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 334
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    const v2, 0x102026f

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/VideoGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    .local v0, title:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #getter for: Lcom/android/gallery3d/app/VideoGallery;->mActionBarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/gallery3d/app/VideoGallery;->access$500(Lcom/android/gallery3d/app/VideoGallery;)Landroid/widget/TextView;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #setter for: Lcom/android/gallery3d/app/VideoGallery;->mActionBarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/VideoGallery;->access$502(Lcom/android/gallery3d/app/VideoGallery;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 342
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGallery$2;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #setter for: Lcom/android/gallery3d/app/VideoGallery;->mUpdateActionBarTitleAfterChanged:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/VideoGallery;->access$202(Lcom/android/gallery3d/app/VideoGallery;Z)Z

    goto :goto_0

    .line 339
    :cond_1
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/gallery3d/app/VideoGallery$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
