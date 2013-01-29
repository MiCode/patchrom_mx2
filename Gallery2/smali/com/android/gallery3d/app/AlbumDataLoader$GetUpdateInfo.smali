.class Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumDataLoader;
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
        "Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-wide p2, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    .line 247
    return-void
.end method


# virtual methods
.method public call()Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 250
    new-instance v2, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    invoke-direct {v2, v7}, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader$1;)V

    .line 251
    .local v2, info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    iget-wide v5, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    .line 252
    .local v5, version:J
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    .line 253
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$600(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v8

    iput v8, v2, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    .line 254
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$700(Lcom/android/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v4

    .line 255
    .local v4, setVersion:[J
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$800(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v0

    .local v0, i:I
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumDataLoader;)I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 256
    rem-int/lit16 v1, v0, 0x3e8

    .line 257
    .local v1, index:I
    aget-wide v8, v4, v1

    cmp-long v8, v8, v5

    if-eqz v8, :cond_1

    .line 258
    iput v0, v2, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    .line 259
    const/16 v7, 0x40

    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v2, Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    .line 263
    .end local v1           #index:I
    .end local v2           #info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    :cond_0
    :goto_1
    return-object v2

    .line 255
    .restart local v1       #index:I
    .restart local v2       #info:Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v1           #index:I
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    move-object v2, v7

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;->call()Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
