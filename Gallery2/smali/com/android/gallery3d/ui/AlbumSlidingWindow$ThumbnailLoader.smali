.class Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;
.super Lcom/android/gallery3d/ui/BitmapLoader;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private final mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)V
    .locals 0
    .parameter
    .parameter "entry"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapLoader;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 452
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 468
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 456
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 457
    return-void
.end method

.method protected submitBitmapTask(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, l:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v1, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/util/JobLimiter;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .locals 3

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 473
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 478
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, v2, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iput-object v2, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    .line 480
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget v2, v2, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->slotIndex:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 481
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, v2, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 482
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$606(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    .line 483
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$600(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #calls: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$700(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)V

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 486
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, v2, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto :goto_0
.end method
