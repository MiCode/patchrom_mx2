.class Lcom/android/gallery3d/data/LocalAlbumSet$BucketComparator;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/LocalAlbumSet$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)I
    .locals 3
    .parameter "entry1"
    .parameter "entry2"

    .prologue
    .line 363
    iget-object v1, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketName:Ljava/lang/String;

    #calls: Lcom/android/gallery3d/data/LocalAlbumSet;->betterCompare(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/LocalAlbumSet;->access$100(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 365
    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mDirectory:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mDirectory:Ljava/lang/String;

    #calls: Lcom/android/gallery3d/data/LocalAlbumSet;->betterCompare(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/LocalAlbumSet;->access$100(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 361
    check-cast p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketComparator;->compare(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)I

    move-result v0

    return v0
.end method
