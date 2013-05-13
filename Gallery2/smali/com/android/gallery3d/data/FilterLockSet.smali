.class public Lcom/android/gallery3d/data/FilterLockSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "FilterLockSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# instance fields
.field private final mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private final mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mForceLockSet:I

.field private mForceReload:Z

.field private mNewAddedVisible:Z

.field private final mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mStartMilliSec:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .parameter "path"
    .parameter "dataManager"
    .parameter "baseSet"

    .prologue
    .line 41
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mPaths:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mAlbums:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mForceLockSet:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mForceReload:Z

    .line 42
    iput-object p2, p0, Lcom/android/gallery3d/data/FilterLockSet;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 43
    iput-object p3, p0, Lcom/android/gallery3d/data/FilterLockSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mStartMilliSec:J

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/FilterLockSet;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mForceLockSet:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/FilterLockSet;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mNewAddedVisible:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/FilterLockSet;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mStartMilliSec:J

    return-wide v0
.end method

.method private updateData()V
    .locals 10

    .prologue
    .line 91
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterLockSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 92
    const-string v0, "/filter/lock/"

    .line 94
    .local v0, basePath:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterLockSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    .local v5, n:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 95
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterLockSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    .line 96
    .local v6, set:Lcom/android/gallery3d/data/MediaSet;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, filteredPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterLockSet;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v8, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 98
    .local v3, filteredSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 99
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    if-gtz v8, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 101
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterLockSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v2           #filteredPath:Ljava/lang/String;
    .end local v3           #filteredSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v6           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterLockSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterLockSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    .line 108
    .local v7, total:I
    new-array v1, v7, [Lcom/android/gallery3d/data/Path;

    .line 110
    .local v1, buf:[Lcom/android/gallery3d/data/Path;
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterLockSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    new-instance v9, Lcom/android/gallery3d/data/FilterLockSet$1;

    invoke-direct {v9, p0, v7, v1}, Lcom/android/gallery3d/data/FilterLockSet$1;-><init>(Lcom/android/gallery3d/data/FilterLockSet;I[Lcom/android/gallery3d/data/Path;)V

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 137
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    .line 138
    aget-object v8, v1, v4

    if-eqz v8, :cond_3

    .line 139
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterLockSet;->mPaths:Ljava/util/ArrayList;

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 142
    :cond_4
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Lcom/android/gallery3d/data/FilterLockSet$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/FilterLockSet$2;-><init>(Lcom/android/gallery3d/data/FilterLockSet;)V

    .line 158
    .local v0, consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/android/gallery3d/data/FilterLockSet;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/android/gallery3d/data/FilterLockSet;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 159
    return-void
.end method

.method public getForceLockSet()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mForceLockSet:I

    return v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/data/FilterLockSet;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x5

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/gallery3d/data/FilterLockSet;->notifyContentChanged()V

    .line 87
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mForceReload:Z

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mForceReload:Z

    .line 78
    invoke-direct {p0}, Lcom/android/gallery3d/data/FilterLockSet;->updateData()V

    .line 79
    invoke-static {}, Lcom/android/gallery3d/data/FilterLockSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 81
    :cond_1
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public setForceLockSet(I)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 167
    iput p1, p0, Lcom/android/gallery3d/data/FilterLockSet;->mForceLockSet:I

    .line 168
    return-void
.end method

.method public setForceReload(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/gallery3d/data/FilterLockSet;->mForceReload:Z

    .line 176
    return-void
.end method

.method public setNewAddedVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/android/gallery3d/data/FilterLockSet;->mNewAddedVisible:Z

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/FilterLockSet;->mStartMilliSec:J

    .line 164
    return-void
.end method
