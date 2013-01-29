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

    .line 2106
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2107
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    .line 2108
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    .line 2109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mIsLoading:Z

    .line 2117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateIndex:I

    .line 2118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;

    .line 2229
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$1;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateItemCallable:Ljava/util/concurrent/Callable;

    .line 2237
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    .line 2239
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$2;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mItemComsumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;

    .line 2263
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mGetUpdateInfoCallable:Ljava/util/concurrent/Callable;

    .line 2277
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
    .line 2106
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateIndex:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2106
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateIndex:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;ILjava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateItems(ILjava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/concurrent/Callable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateItemCallable:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2106
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    return p1
.end method

.method static synthetic access$7000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I

    return v0
.end method

.method static synthetic access$7202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2106
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I

    return p1
.end method

.method static synthetic access$7400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I

    return v0
.end method

.method static synthetic access$7402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2106
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I

    return p1
.end method

.method static synthetic access$7500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private enumerateMediaItems()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2346
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    .line 2347
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2348
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mItemComsumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 2349
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mAllLocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$6900(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mAllItemLocked:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$6902(Lcom/android/gallery3d/app/AlbumPage;Z)Z

    .line 2351
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2353
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
    .line 2121
    .local p2, updatedItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v4, 0x0

    .line 2122
    .local v4, needLayout:Z
    const/4 v7, 0x0

    .line 2123
    .local v7, visibilityChanged:Z
    const/4 v0, 0x0

    .line 2124
    .local v0, countChanged:Z
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2126
    .local v6, slotCountBefore:I
    if-ge p1, v6, :cond_0

    .line 2127
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    const/4 v9, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Z)Z

    .line 2130
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2131
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

    .line 2132
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-virtual {v8, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addItem(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 2134
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr p1, v8

    .line 2135
    const/4 v7, 0x1

    .line 2186
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v8

    if-lt p1, v8, :cond_3

    .line 2187
    if-eqz v4, :cond_f

    .line 2188
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlots()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2189
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->clear()V

    .line 2193
    :goto_1
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    const/4 v9, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Z)Z

    .line 2196
    :cond_3
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-virtual {v8, v4, v7, v0, v6}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->updateIfNeeded(ZZZI)V

    .line 2197
    return-void

    .line 2138
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlotCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 2139
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->getRowSlots()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2140
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mRow:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->clear()V

    .line 2141
    const/4 v4, 0x1

    .line 2144
    :cond_5
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, p3, :cond_7

    .line 2145
    :goto_2
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, p3, :cond_6

    .line 2146
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2148
    :cond_6
    const/4 v4, 0x1

    .line 2151
    :cond_7
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v8

    if-eq p3, v8, :cond_8

    .line 2152
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I
    invoke-static {v8, p3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5102(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 2153
    const/4 v0, 0x1

    .line 2154
    const/4 v7, 0x1

    .line 2157
    :cond_8
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2159
    .local v5, slotCount:I
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2160
    .local v1, endIndex:I
    if-lez v1, :cond_c

    .line 2161
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v8

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget v8, v8, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I
    invoke-static {v9, v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 2166
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

    .line 2167
    .restart local v3       #item:Lcom/android/gallery3d/data/MediaItem;
    if-lt p1, v5, :cond_e

    .line 2168
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v8

    if-nez v8, :cond_9

    if-eqz v4, :cond_a

    .line 2169
    :cond_9
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    const/4 v9, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5502(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Z)Z

    .line 2170
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->layout()V
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V

    .line 2171
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    const/4 v9, 0x1

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Z)Z

    .line 2172
    const/4 v4, 0x0

    .line 2173
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mAllItemLoaded:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    :goto_5
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 2175
    :cond_a
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-virtual {v8, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->addItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 2176
    const/4 v7, 0x1

    .line 2182
    :cond_b
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2163
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_c
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v9, v9, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSetBucketId:I
    invoke-static {v9}, Lcom/android/gallery3d/app/AlbumPage;->access$4500(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v9

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    goto :goto_3

    .line 2173
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 2178
    :cond_e
    invoke-direct {p0, v3, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateSlot(Lcom/android/gallery3d/data/MediaItem;I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2179
    const/4 v4, 0x1

    goto :goto_6

    .line 2191
    .end local v1           #endIndex:I
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #slotCount:I
    :cond_f
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v8, v8, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->flushRow()V
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V

    goto/16 :goto_1
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 2286
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 2289
    :goto_0
    return-void

    .line 2287
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mIsLoading:Z

    .line 2288
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

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
    .line 2200
    const/4 v0, 0x0

    .line 2201
    .local v0, needLayout:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 2202
    .local v2, oldSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mVersion:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 2203
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v4, v4, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mTmpSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    move-result-object v4

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->makeAlbumSlot(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    invoke-static {v3, p1, v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    move-result-object v1

    .line 2204
    .local v1, newSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2205
    iget-object v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 2206
    :cond_0
    iget-object v3, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2207
    const/4 v0, 0x1

    .line 2210
    :cond_1
    iget-object v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iput-object v3, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 2211
    iget-wide v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mVersion:J

    iput-wide v3, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mVersion:J

    .line 2213
    iget v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    iget v4, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    if-eq v3, v4, :cond_2

    .line 2214
    iget v3, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    iput v3, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    .line 2215
    const/4 v0, 0x1

    .line 2218
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2219
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$6000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)I

    move-result v3

    if-lt p2, v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveEnd:I
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$6100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)I

    move-result v3

    if-ge p2, v3, :cond_3

    .line 2220
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;->onContentChanged(I)V

    .line 2224
    .end local v1           #newSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget v4, v2, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastBucketId:I
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 2226
    return v0
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 2

    .prologue
    .line 2356
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    .line 2357
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Z)Z

    .line 2358
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2359
    monitor-exit p0

    return-void

    .line 2356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2293
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2295
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    if-eqz v3, :cond_6

    .line 2296
    monitor-enter p0

    .line 2297
    :try_start_0
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    if-nez v3, :cond_1

    .line 2298
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateLoading(Z)V

    .line 2299
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 2300
    monitor-exit p0

    goto :goto_0

    .line 2302
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

    .line 2303
    iput-boolean v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mDirty:Z

    .line 2304
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateLoading(Z)V

    .line 2306
    sget-object v4, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 2307
    :try_start_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v1

    .line 2308
    .local v1, version:J
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2309
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mSetVersion:J
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$7600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 2310
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mSetVersion:J
    invoke-static {v3, v1, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$7602(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;J)J

    .line 2312
    sget-object v4, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 2313
    :try_start_3
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    .line 2314
    .local v0, oldCount:I
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    .line 2315
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    if-eq v0, v3, :cond_2

    .line 2316
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2318
    :cond_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2320
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$5200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2321
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->enumerateMediaItems()V

    goto :goto_0

    .line 2308
    .end local v0           #oldCount:I
    .end local v1           #version:J
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 2318
    .restart local v1       #version:J
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 2323
    .restart local v0       #oldCount:I
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mGetUpdateInfoCallable:Ljava/util/concurrent/Callable;

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$6700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2324
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I

    iget v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I

    if-eqz v3, :cond_4

    .line 2327
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->enumerateMediaItems()V

    goto/16 :goto_0

    .line 2329
    :cond_4
    sget-object v4, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 2330
    :try_start_6
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I

    iget v6, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I

    invoke-virtual {v3, v5, v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    .line 2331
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2332
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleCallable:Ljava/util/concurrent/Callable;

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$6700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2333
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 2334
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2335
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;

    .line 2337
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->enumerateMediaItems()V

    goto/16 :goto_0

    .line 2331
    :catchall_3
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    .line 2342
    .end local v0           #oldCount:I
    .end local v1           #version:J
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateLoading(Z)V

    .line 2343
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 2362
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mActive:Z

    .line 2363
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2364
    monitor-exit p0

    return-void

    .line 2362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
