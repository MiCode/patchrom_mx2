.class Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private mAllLocked:Z

.field private volatile mDirty:Z

.field private mGetUpdateInfoCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mItemComsumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;

.field private mUpdateCount:I

.field private mUpdateIndex:I

.field private mUpdateItemCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateVisibleCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateVisibleStart:I

.field private mUpdatedItemCount:I

.field private mUpdatedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2306
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2307
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    .line 2308
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    .line 2309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mIsLoading:Z

    .line 2317
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateIndex:I

    .line 2318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;

    .line 2429
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$1;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateItemCallable:Ljava/util/concurrent/Callable;

    .line 2437
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    .line 2439
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mItemComsumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;

    .line 2463
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mGetUpdateInfoCallable:Ljava/util/concurrent/Callable;

    .line 2477
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$4;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleCallable:Ljava/util/concurrent/Callable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Lcom/android/gallery3d/app/AlbumPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2306
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateIndex:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2306
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateIndex:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;ILjava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2306
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateItems(ILjava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/concurrent/Callable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateItemCallable:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2306
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    return v0
.end method

.method static synthetic access$7300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I

    return v0
.end method

.method static synthetic access$7402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2306
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I

    return p1
.end method

.method static synthetic access$7600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I

    return v0
.end method

.method static synthetic access$7602(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2306
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I

    return p1
.end method

.method static synthetic access$7700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private enumerateMediaItems()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2546
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    .line 2547
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2548
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mItemComsumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 2549
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$7100(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2550
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$7102(Lcom/android/gallery3d/app/AlbumPage;Z)Z

    .line 2551
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2553
    :cond_0
    return-void
.end method

.method private updateItems(ILjava/util/ArrayList;I)V
    .locals 11
    .parameter "index"
    .parameter
    .parameter "totalItemCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2321
    .local p2, updatedItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v4, 0x0

    .line 2322
    .local v4, needLayout:Z
    const/4 v7, 0x0

    .line 2323
    .local v7, visibilityChanged:Z
    const/4 v0, 0x0

    .line 2324
    .local v0, countChanged:Z
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2326
    .local v6, slotCountBefore:I
    if-ge p1, v6, :cond_0

    .line 2327
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    const/4 v9, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Z)Z

    .line 2330
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2331
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    .line 2332
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-virtual {v8, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addItem(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 2334
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr p1, v8

    .line 2335
    const/4 v7, 0x1

    .line 2386
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v8

    if-lt p1, v8, :cond_3

    .line 2387
    if-eqz v4, :cond_f

    .line 2388
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlots()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2389
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->clear()V

    .line 2393
    :goto_1
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    const/4 v9, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Z)Z

    .line 2396
    :cond_3
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-virtual {v8, v4, v7, v0, v6}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->updateIfNeeded(ZZZI)V

    .line 2397
    return-void

    .line 2338
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 2339
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlots()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2340
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->clear()V

    .line 2341
    const/4 v4, 0x1

    .line 2344
    :cond_5
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, p3, :cond_7

    .line 2345
    :goto_2
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, p3, :cond_6

    .line 2346
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2348
    :cond_6
    const/4 v4, 0x1

    .line 2351
    :cond_7
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v8

    if-eq p3, v8, :cond_8

    .line 2352
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I
    invoke-static {v8, p3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5302(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 2353
    const/4 v0, 0x1

    .line 2354
    const/4 v7, 0x1

    .line 2357
    :cond_8
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2359
    .local v5, slotCount:I
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2360
    .local v1, endIndex:I
    if-lez v1, :cond_c

    .line 2361
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget v8, v8, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I
    invoke-static {v9, v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5602(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 2366
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    .line 2367
    .restart local v3       #item:Lcom/android/gallery3d/data/MediaItem;
    if-lt p1, v5, :cond_e

    .line 2368
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v8

    if-nez v8, :cond_9

    if-eqz v4, :cond_a

    .line 2369
    :cond_9
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    const/4 v9, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5702(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Z)Z

    .line 2370
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->layout()V
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V

    .line 2371
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    const/4 v9, 0x1

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Z)Z

    .line 2372
    const/4 v4, 0x0

    .line 2373
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    :goto_5
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 2375
    :cond_a
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-virtual {v8, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 2376
    const/4 v7, 0x1

    .line 2382
    :cond_b
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2363
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_c
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSetBucketId:I
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumPage;->access$4700(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v9

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5602(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    goto :goto_3

    .line 2373
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 2378
    :cond_e
    invoke-direct {p0, v3, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateSlot(Lcom/android/gallery3d/data/MediaItem;I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2379
    const/4 v4, 0x1

    goto :goto_6

    .line 2391
    .end local v1           #endIndex:I
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #slotCount:I
    :cond_f
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->flushRow()V
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V

    goto/16 :goto_1
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 2486
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 2489
    :goto_0
    return-void

    .line 2487
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mIsLoading:Z

    .line 2488
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private updateSlot(Lcom/android/gallery3d/data/MediaItem;I)Z
    .locals 7
    .parameter "item"
    .parameter "index"

    .prologue
    .line 2400
    const/4 v0, 0x0

    .line 2401
    .local v0, needLayout:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 2402
    .local v2, oldSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mVersion:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 2403
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v4, v4, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$6000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    move-result-object v4

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->makeAlbumSlot(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    invoke-static {v3, p1, v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$6100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    move-result-object v1

    .line 2404
    .local v1, newSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2405
    iget v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    iget v4, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    if-eq v3, v4, :cond_0

    .line 2406
    iget v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    iput v3, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    .line 2407
    const/4 v0, 0x1

    .line 2410
    :cond_0
    iget-object v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iput-object v3, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 2411
    iget-wide v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mVersion:J

    iput-wide v3, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mVersion:J

    .line 2413
    iget v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    iget v4, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    if-eq v3, v4, :cond_1

    .line 2414
    iget v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    iput v3, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    .line 2415
    const/4 v0, 0x1

    .line 2418
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2419
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$6200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)I

    move-result v3

    if-lt p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveEnd:I
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$6300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 2420
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;->onContentChanged(I)V

    .line 2424
    .end local v1           #newSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget v4, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5602(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 2426
    return v0
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 2

    .prologue
    .line 2556
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    .line 2557
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Z)Z

    .line 2558
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2559
    monitor-exit p0

    return-void

    .line 2556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2493
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2495
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    if-eqz v3, :cond_6

    .line 2496
    monitor-enter p0

    .line 2497
    :try_start_0
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    if-nez v3, :cond_1

    .line 2498
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateLoading(Z)V

    .line 2499
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 2500
    monitor-exit p0

    goto :goto_0

    .line 2502
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2503
    iput-boolean v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    .line 2504
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateLoading(Z)V

    .line 2506
    sget-object v4, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 2507
    :try_start_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v1

    .line 2508
    .local v1, version:J
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2509
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mSetVersion:J
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$7800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 2510
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mSetVersion:J
    invoke-static {v3, v1, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$7802(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;J)J

    .line 2512
    sget-object v4, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 2513
    :try_start_3
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    .line 2514
    .local v0, oldCount:I
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    .line 2515
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    if-eq v0, v3, :cond_2

    .line 2516
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2518
    :cond_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2520
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2521
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->enumerateMediaItems()V

    goto :goto_0

    .line 2508
    .end local v0           #oldCount:I
    .end local v1           #version:J
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 2518
    .restart local v1       #version:J
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 2523
    .restart local v0       #oldCount:I
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mGetUpdateInfoCallable:Ljava/util/concurrent/Callable;

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$6900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2524
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    if-eqz v3, :cond_4

    .line 2527
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->enumerateMediaItems()V

    goto/16 :goto_0

    .line 2529
    :cond_4
    sget-object v4, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 2530
    :try_start_6
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I

    iget v6, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I

    invoke-virtual {v3, v5, v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    .line 2531
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2532
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleCallable:Ljava/util/concurrent/Callable;

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$6900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2533
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 2534
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2535
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    .line 2537
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->enumerateMediaItems()V

    goto/16 :goto_0

    .line 2531
    :catchall_3
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    .line 2542
    .end local v0           #oldCount:I
    .end local v1           #version:J
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateLoading(Z)V

    .line 2543
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 2562
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    .line 2563
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2564
    monitor-exit p0

    return-void

    .line 2562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
