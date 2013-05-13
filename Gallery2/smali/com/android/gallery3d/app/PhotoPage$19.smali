.class Lcom/android/gallery3d/app/PhotoPage$19;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput p2, p0, Lcom/android/gallery3d/app/PhotoPage$19;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x704

    .line 2495
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->getBmpForWallpaper()Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$5400(Lcom/android/gallery3d/app/PhotoPage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2496
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 2497
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 2498
    .local v2, wpm:Landroid/app/WallpaperManager;
    if-eqz v2, :cond_3

    .line 2499
    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->val$id:I

    const/16 v4, 0x702

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->val$id:I

    if-ne v3, v5, :cond_1

    .line 2500
    :cond_0
    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmapToLockWallpaper(Landroid/graphics/Bitmap;)V

    .line 2503
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->val$id:I

    const/16 v4, 0x703

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->val$id:I

    if-ne v3, v5, :cond_3

    .line 2504
    :cond_2
    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2508
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2516
    .end local v2           #wpm:Landroid/app/WallpaperManager;
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2517
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2520
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_5
    :goto_0
    return-void

    .line 2513
    :catch_0
    move-exception v1

    .line 2514
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v3, "PhotoPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2516
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2517
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 2516
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2517
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$19;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_6
    throw v3
.end method
