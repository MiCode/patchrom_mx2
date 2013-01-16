.class Landroid/app/WallpaperManager$Globals$1;
.super Landroid/os/Handler;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/WallpaperManager$Globals;


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 249
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 254
    :pswitch_0
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$000(Landroid/app/WallpaperManager$Globals;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    #setter for: Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$100(Landroid/app/WallpaperManager$Globals;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    #setter for: Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 263
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 266
    :pswitch_1
    monitor-enter p0

    .line 267
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$200(Landroid/app/WallpaperManager$Globals;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    #setter for: Landroid/app/WallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->access$202(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 271
    :cond_2
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    const/4 v1, 0x0

    #setter for: Landroid/app/WallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/app/WallpaperManager$Globals;->access$302(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 275
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
