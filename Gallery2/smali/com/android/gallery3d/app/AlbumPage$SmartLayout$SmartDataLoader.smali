.class public Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartDataLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentListener:Lcom/android/gallery3d/data/ContentListener;

.field private mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

.field private mFirstLoad:Z

.field private mReloadTask:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

.field private mSetVersion:J

.field final synthetic this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1975
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z

    .line 1981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    .line 1983
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I

    .line 1984
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveEnd:I

    .line 1988
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$1;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    .line 2106
    return-void
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1975
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1975
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1975
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1975
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1975
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1975
    iget-wide v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mSetVersion:J

    return-wide v0
.end method

.method static synthetic access$7602(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1975
    iput-wide p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mSetVersion:J

    return-wide p1
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2095
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2096
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v2, v2, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2098
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2100
    :goto_0
    return-object v2

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 2101
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 2102
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 2024
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 2025
    :cond_0
    const/4 v0, 0x0

    .line 2027
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mItem:Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 2052
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I

    return v0
.end method

.method public getHeader(I)Ljava/lang/String;
    .locals 6
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 2032
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->isActive(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2033
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "%s not in (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2036
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 2046
    :cond_1
    :goto_0
    return-object v1

    .line 2039
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 2040
    .local v0, slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    iget-boolean v2, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHasHeader:Z

    if-eqz v2, :cond_1

    .line 2041
    iget-object v1, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHeader:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 2042
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget v2, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mBucketId:I

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->getHeaderByBucketId(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHeader:Ljava/lang/String;

    .line 2044
    :cond_3
    iget-object v1, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 2012
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 2013
    :cond_0
    const/4 v0, 0x0

    .line 2015
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mItem:Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 2057
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyChangeIfNeeded(I)V
    .locals 4
    .parameter "slotCountBefore"

    .prologue
    .line 2082
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    if-eqz v3, :cond_0

    .line 2083
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlots:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2084
    .local v2, slotCountAfter:I
    if-le v2, p1, :cond_0

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I

    if-lt v2, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveEnd:I

    if-ge p1, v3, :cond_0

    .line 2086
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2087
    .local v0, i:I
    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveEnd:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, j:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2088
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    invoke-interface {v3, v0}, Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;->onContentChanged(I)V

    .line 2087
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2092
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #slotCountAfter:I
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 2005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mFirstLoad:Z

    .line 2006
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->terminate()V

    .line 2007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    .line 2008
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 2009
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 1997
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mSetVersion:J

    .line 1998
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 1999
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;Lcom/android/gallery3d/app/AlbumPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    .line 2000
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->start()V

    .line 2001
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2067
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveStart:I

    .line 2068
    iput p2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mActiveEnd:I

    .line 2069
    return-void
.end method

.method public setDataListener(Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2073
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    .line 2074
    return-void
.end method

.method public setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$1502(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;Lcom/android/gallery3d/app/LoadingListener;)Lcom/android/gallery3d/app/LoadingListener;

    .line 2079
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotCount:I
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$5100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v0

    return v0
.end method
