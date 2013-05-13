.class Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketEntry"
.end annotation


# instance fields
.field public mBucketId:I

.field public mBucketName:Ljava/lang/String;

.field public mChild:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mDirectory:Ljava/lang/String;

.field public mId:J

.field public mIsCustomFolder:Z

.field public mItemCount:I

.field public mNoChildEntry:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "dir"

    .prologue
    const/4 v1, 0x0

    .line 784
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mChild:Ljava/util/ArrayList;

    .line 785
    iput-wide p1, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mId:J

    .line 786
    iput v1, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mItemCount:I

    .line 787
    iput-object p3, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mDirectory:Ljava/lang/String;

    .line 788
    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mIsCustomFolder:Z

    .line 789
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 824
    instance-of v2, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    if-nez v2, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 825
    check-cast v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .line 826
    .local v0, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketId:I

    iget v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public findEntryById(J)Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .locals 5
    .parameter "id"

    .prologue
    .line 805
    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 814
    .end local p0
    :goto_0
    return-object p0

    .line 808
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .line 809
    .local v1, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->findEntryById(J)Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    .line 810
    .local v0, child:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 811
    goto :goto_0

    .line 814
    .end local v0           #child:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .end local v1           #entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getTotalItemCount()I
    .locals 4

    .prologue
    .line 792
    const/4 v2, 0x0

    .line 793
    .local v2, total:I
    iget v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mItemCount:I

    add-int/2addr v2, v3

    .line 794
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .line 795
    .local v0, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->getTotalItemCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 797
    .end local v0           #entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    :cond_0
    return v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketId:I

    return v0
.end method
