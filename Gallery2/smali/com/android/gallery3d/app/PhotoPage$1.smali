.class Lcom/android/gallery3d/app/PhotoPage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
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
    .line 287
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 297
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->layout(IIII)V

    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$300(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/util/GalleryUtils;->INFOBAR_HEIGHT:I

    invoke-virtual {v0, p2, v1, p4, p5}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 291
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 292
    return-void
.end method
