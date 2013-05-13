.class Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/LocalAlbumSet;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/data/LocalAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/LocalAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/LocalAlbumSet;Lcom/android/gallery3d/data/LocalAlbumSet$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/android/gallery3d/data/LocalAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 23
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/LocalAlbumSet;

    move-object/from16 v0, p1

    #calls: Lcom/android/gallery3d/data/LocalAlbumSet;->loadBucketEntries(Lcom/android/gallery3d/util/ThreadPool$JobContext;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    invoke-static {v2, v0}, Lcom/android/gallery3d/data/LocalAlbumSet;->access$200(Lcom/android/gallery3d/data/LocalAlbumSet;Lcom/android/gallery3d/util/ThreadPool$JobContext;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    move-result-object v15

    .line 611
    .local v15, entries:[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v13, 0x0

    .line 633
    :cond_0
    return-object v13

    .line 613
    :cond_1
    const/16 v21, 0x0

    .line 616
    .local v21, offset:I
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->access$300()[I

    move-result-object v14

    .local v14, arr$:[I
    array-length v0, v14

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    move/from16 v22, v21

    .end local v21           #offset:I
    .local v22, offset:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget v17, v14, v18

    .line 617
    .local v17, i:I
    move/from16 v0, v17

    #calls: Lcom/android/gallery3d/data/LocalAlbumSet;->findBucket([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I
    invoke-static {v15, v0}, Lcom/android/gallery3d/data/LocalAlbumSet;->access$400([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I

    move-result v19

    .line 618
    .local v19, index:I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_4

    .line 619
    add-int/lit8 v21, v22, 0x1

    .end local v22           #offset:I
    .restart local v21       #offset:I
    move/from16 v0, v22

    move/from16 v1, v19

    #calls: Lcom/android/gallery3d/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V
    invoke-static {v15, v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet;->access$500([Ljava/lang/Object;II)V

    .line 616
    :goto_1
    add-int/lit8 v18, v18, 0x1

    move/from16 v22, v21

    .end local v21           #offset:I
    .restart local v22       #offset:I
    goto :goto_0

    .line 623
    .end local v17           #i:I
    .end local v19           #index:I
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v13, albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/LocalAlbumSet;

    #getter for: Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v2}, Lcom/android/gallery3d/data/LocalAlbumSet;->access$600(Lcom/android/gallery3d/data/LocalAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 625
    .local v3, dataManager:Lcom/android/gallery3d/data/DataManager;
    move-object v14, v15

    .local v14, arr$:[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    array-length v0, v14

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v16, v14, v18

    .line 626
    .local v16, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/LocalAlbumSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/LocalAlbumSet;

    #getter for: Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I
    invoke-static {v4}, Lcom/android/gallery3d/data/LocalAlbumSet;->access$700(Lcom/android/gallery3d/data/LocalAlbumSet;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/android/gallery3d/data/LocalAlbumSet;

    iget-object v5, v5, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketId:I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mDirectory:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-boolean v9, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mNoChildEntry:Z

    move-object/from16 v0, v16

    iget-boolean v10, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mIsCustomFolder:Z

    move-object/from16 v0, v16

    iget-boolean v11, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mNoChildEntry:Z

    if-eqz v11, :cond_3

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mItemCount:I

    :goto_3
    #calls: Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;ZZI)Lcom/android/gallery3d/data/MediaSet;
    invoke-static/range {v2 .. v11}, Lcom/android/gallery3d/data/LocalAlbumSet;->access$800(Lcom/android/gallery3d/data/LocalAlbumSet;Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;ZZI)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v12

    .line 630
    .local v12, album:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 626
    .end local v12           #album:Lcom/android/gallery3d/data/MediaSet;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->getTotalItemCount()I

    move-result v11

    goto :goto_3

    .end local v3           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v13           #albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    .end local v16           #entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .local v14, arr$:[I
    .restart local v17       #i:I
    .restart local v19       #index:I
    :cond_4
    move/from16 v21, v22

    .end local v22           #offset:I
    .restart local v21       #offset:I
    goto :goto_1
.end method
