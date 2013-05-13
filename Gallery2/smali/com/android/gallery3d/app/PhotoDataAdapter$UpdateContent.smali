.class Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mUpdateInfo:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "updateInfo"

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 918
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 922
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 923
    .local v4, info:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-wide v7, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J
    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1702(Lcom/android/gallery3d/app/PhotoDataAdapter;J)J

    .line 925
    iget v6, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 926
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget v7, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1802(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 927
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1202(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 928
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1900(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    if-le v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1902(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 929
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    if-lez v6, :cond_2

    .line 930
    iget v6, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 931
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 936
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget v7, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1402(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 937
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 939
    iget-object v6, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 940
    iget v6, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 941
    .local v5, start:I
    iget v6, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v7, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 942
    .local v2, end:I
    rem-int/lit8 v1, v5, 0x20

    .line 943
    .local v1, dataIndex:I
    move v3, v5

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 944
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    iget-object v6, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget v8, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v8, v3, v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/MediaItem;

    aput-object v6, v7, v1

    .line 945
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x20

    if-ne v1, v6, :cond_3

    const/4 v1, 0x0

    .line 943
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 950
    .end local v1           #dataIndex:I
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #start:I
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    rem-int/lit8 v7, v7, 0x20

    aget-object v0, v6, v7

    .line 951
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_5

    .line 952
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1502(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 955
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2100(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 956
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 957
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 958
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2300(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 959
    const/4 v6, 0x0

    return-object v6
.end method
