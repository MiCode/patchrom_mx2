.class Lcom/android/gallery3d/data/FilterLockSet$1;
.super Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
.source "FilterLockSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/FilterLockSet;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/FilterLockSet;

.field final synthetic val$buf:[Lcom/android/gallery3d/data/Path;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/FilterLockSet;I[Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->this$0:Lcom/android/gallery3d/data/FilterLockSet;

    iput p2, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->val$total:I

    iput-object p3, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->val$buf:[Lcom/android/gallery3d/data/Path;

    invoke-direct {p0}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 8
    .parameter "index"
    .parameter "item"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, locked:Z
    iget-object v4, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->this$0:Lcom/android/gallery3d/data/FilterLockSet;

    #getter for: Lcom/android/gallery3d/data/FilterLockSet;->mForceLockSet:I
    invoke-static {v4}, Lcom/android/gallery3d/data/FilterLockSet;->access$000(Lcom/android/gallery3d/data/FilterLockSet;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->this$0:Lcom/android/gallery3d/data/FilterLockSet;

    #getter for: Lcom/android/gallery3d/data/FilterLockSet;->mForceLockSet:I
    invoke-static {v4}, Lcom/android/gallery3d/data/FilterLockSet;->access$000(Lcom/android/gallery3d/data/FilterLockSet;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v4

    if-lez v4, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 115
    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->this$0:Lcom/android/gallery3d/data/FilterLockSet;

    #getter for: Lcom/android/gallery3d/data/FilterLockSet;->mNewAddedVisible:Z
    invoke-static {v4}, Lcom/android/gallery3d/data/FilterLockSet;->access$100(Lcom/android/gallery3d/data/FilterLockSet;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    instance-of v4, p2, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v4, :cond_4

    move-object v4, p2

    .line 117
    check-cast v4, Lcom/android/gallery3d/data/LocalImage;

    iget-wide v4, v4, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    mul-long v0, v4, v6

    .line 118
    .local v0, dateAdded:J
    iget-object v4, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->this$0:Lcom/android/gallery3d/data/FilterLockSet;

    #getter for: Lcom/android/gallery3d/data/FilterLockSet;->mStartMilliSec:J
    invoke-static {v4}, Lcom/android/gallery3d/data/FilterLockSet;->access$200(Lcom/android/gallery3d/data/FilterLockSet;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 119
    const/4 v2, 0x0

    .line 129
    .end local v0           #dateAdded:J
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 130
    if-ltz p1, :cond_2

    iget v4, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->val$total:I

    if-lt p1, v4, :cond_5

    .line 134
    :cond_2
    :goto_2
    return-void

    .line 114
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 121
    :cond_4
    instance-of v4, p2, Lcom/android/gallery3d/data/LocalVideo;

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 122
    check-cast v4, Lcom/android/gallery3d/data/LocalVideo;

    iget-wide v4, v4, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    mul-long v0, v4, v6

    .line 123
    .restart local v0       #dateAdded:J
    iget-object v4, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->this$0:Lcom/android/gallery3d/data/FilterLockSet;

    #getter for: Lcom/android/gallery3d/data/FilterLockSet;->mStartMilliSec:J
    invoke-static {v4}, Lcom/android/gallery3d/data/FilterLockSet;->access$200(Lcom/android/gallery3d/data/FilterLockSet;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 124
    const/4 v2, 0x0

    goto :goto_1

    .line 131
    .end local v0           #dateAdded:J
    :cond_5
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 132
    .local v3, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/data/FilterLockSet$1;->val$buf:[Lcom/android/gallery3d/data/Path;

    aput-object v3, v4, p1

    goto :goto_2
.end method
