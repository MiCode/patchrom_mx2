.class Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;
.super Lcom/android/gallery3d/ui/BitmapLoader;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCoverLoader"
.end annotation


# instance fields
.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private final mSlotIndex:I

.field private final mVersion:J

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILcom/android/gallery3d/data/MediaItem;J)V
    .locals 0
    .parameter
    .parameter "slotIndex"
    .parameter "item"
    .parameter "version"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapLoader;-><init>()V

    .line 608
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    .line 609
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 610
    iput-wide p4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mVersion:J

    .line 611
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 627
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 615
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 616
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
    .line 620
    .local p1, l:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .locals 10

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 632
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    iget-object v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v8

    array-length v8, v8

    rem-int/2addr v7, v8

    aget-object v2, v6, v7

    .line 635
    .local v2, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 637
    new-instance v5, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v5, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 639
    .local v5, texture:Lcom/android/gallery3d/ui/BitmapTexture;
    iget-object v6, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    instance-of v6, v6, Lcom/android/gallery3d/data/FolderIconAlbum;

    if-eqz v6, :cond_2

    .line 640
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/BitmapTexture;->setOpaque(Z)V

    .line 643
    :cond_2
    const/4 v3, 0x0

    .line 644
    .local v3, found:Z
    iget-object v6, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 645
    .local v1, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-wide v6, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverDataVersion:J

    iget-wide v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mVersion:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 646
    iput-object v5, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 647
    iput-object v5, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->content:Lcom/android/gallery3d/ui/Texture;

    .line 648
    const/4 v3, 0x1

    .line 649
    iget-object v6, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->isSizeInvalid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 650
    iget-object v6, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    iget-object v7, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverWidth:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/data/MediaItem;->calcItemRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v6

    iput-object v6, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    .line 651
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$700(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverWidth:I
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v7

    iget-object v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mCoverMargin:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v8

    #calls: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->layout(III)V
    invoke-static {v2, v6, v7, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)V

    goto :goto_1

    .line 656
    .end local v1           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 657
    if-eqz v3, :cond_5

    .line 658
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$900(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 660
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1006(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    .line 661
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #calls: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)V

    .line 662
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto/16 :goto_0

    .line 663
    :cond_7
    if-eqz v3, :cond_0

    .line 664
    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$900(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto/16 :goto_0
.end method
