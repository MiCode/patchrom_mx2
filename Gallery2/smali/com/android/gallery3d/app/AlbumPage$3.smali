.class Lcom/android/gallery3d/app/AlbumPage$3;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onGetContent(Lcom/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dlg:Landroid/app/ProgressDialog;

.field final synthetic val$item:Lcom/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaItem;Landroid/app/Activity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$item:Lcom/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$item:Lcom/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_0

    .line 439
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$item:Lcom/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/android/gallery3d/data/LocalImage;

    invoke-static {v2, v1}, Lcom/android/gallery3d/util/GalleryUtils;->getRotatedUri(Landroid/content/Context;Lcom/android/gallery3d/data/LocalImage;)Landroid/net/Uri;

    move-result-object v0

    .line 441
    :cond_0
    if-nez v0, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$activity:Landroid/app/Activity;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 445
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$dlg:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 451
    :cond_2
    return-void

    .line 447
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$dlg:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_3

    .line 448
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$3;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 447
    :cond_3
    throw v1
.end method
