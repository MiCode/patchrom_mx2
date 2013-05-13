.class Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;
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
    name = "EntryLabelLoader"
.end annotation


# instance fields
.field private final mInfo:Ljava/lang/String;

.field private final mSlotIndex:I

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "slotIndex"
    .parameter "title"
    .parameter "info"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapLoader;-><init>()V

    .line 497
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->mSlotIndex:I

    .line 498
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->mTitle:Ljava/lang/String;

    .line 499
    iput-object p4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->mInfo:Ljava/lang/String;

    .line 500
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 515
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$900(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->recycleLabel(Landroid/graphics/Bitmap;)V

    .line 510
    return-void
.end method

.method protected submitBitmapTask(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 4
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
    .line 504
    .local p1, l:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$900(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->mInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/util/JobLimiter;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .locals 6

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1000(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->mSlotIndex:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1000(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v1, v3, v4

    .line 523
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-eqz v1, :cond_0

    .line 525
    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 526
    .local v2, texture:Lcom/android/gallery3d/ui/BitmapTexture;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/BitmapTexture;->setOpaque(Z)V

    .line 527
    iput-object v2, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 529
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->mSlotIndex:I

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 530
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 531
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$606(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    .line 532
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$600(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #calls: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$700(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)V

    .line 533
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 535
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto :goto_0
.end method
