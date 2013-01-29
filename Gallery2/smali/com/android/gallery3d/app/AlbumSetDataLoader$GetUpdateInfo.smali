.class Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-wide p2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    .line 258
    return-void
.end method

.method private getInvalidIndex(J)I
    .locals 8
    .parameter "version"

    .prologue
    .line 261
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v3

    .line 262
    .local v3, setVersion:[J
    array-length v1, v3

    .line 264
    .local v1, length:I
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$500(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mVisibleStart:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 265
    .local v5, visibleStart:I
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mVisibleEnd:I
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 266
    .local v4, visibleEnd:I
    move v0, v5

    .local v0, i:I
    move v2, v4

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 267
    rem-int v6, v0, v1

    aget-wide v6, v3, v6

    cmp-long v6, v6, p1

    if-eqz v6, :cond_0

    move v6, v0

    .line 273
    :goto_1
    return v6

    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$500(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v0

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_3

    .line 271
    rem-int v6, v0, v1

    aget-wide v6, v3, v6

    cmp-long v6, v6, p1

    if-eqz v6, :cond_2

    move v6, v0

    goto :goto_1

    .line 270
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 273
    :cond_3
    const/4 v6, -0x1

    goto :goto_1
.end method


# virtual methods
.method public call()Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-wide v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->getInvalidIndex(J)I

    move-result v0

    .line 279
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v1, v2

    .line 284
    :goto_0
    return-object v1

    .line 280
    :cond_0
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V

    .line 281
    .local v1, info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 282
    iput v0, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 283
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->call()Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
