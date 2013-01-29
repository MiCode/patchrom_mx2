.class Lcom/android/gallery3d/data/TimeClustering$1;
.super Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
.source "TimeClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/TimeClustering;->run(Lcom/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/TimeClustering;

.field final synthetic val$buf:[Lcom/android/gallery3d/data/SmallItem;

.field final synthetic val$latLng:[D

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/TimeClustering;I[D[Lcom/android/gallery3d/data/SmallItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/gallery3d/data/TimeClustering$1;->this$0:Lcom/android/gallery3d/data/TimeClustering;

    iput p2, p0, Lcom/android/gallery3d/data/TimeClustering$1;->val$total:I

    iput-object p3, p0, Lcom/android/gallery3d/data/TimeClustering$1;->val$latLng:[D

    iput-object p4, p0, Lcom/android/gallery3d/data/TimeClustering$1;->val$buf:[Lcom/android/gallery3d/data/SmallItem;

    invoke-direct {p0}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 3
    .parameter "index"
    .parameter "item"

    .prologue
    .line 105
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/data/TimeClustering$1;->val$total:I

    if-lt p1, v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v0, Lcom/android/gallery3d/data/SmallItem;

    invoke-direct {v0}, Lcom/android/gallery3d/data/SmallItem;-><init>()V

    .line 107
    .local v0, s:Lcom/android/gallery3d/data/SmallItem;
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/data/SmallItem;->path:Lcom/android/gallery3d/data/Path;

    .line 108
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    .line 109
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClustering$1;->val$latLng:[D

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 110
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClustering$1;->val$latLng:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/android/gallery3d/data/SmallItem;->lat:D

    .line 111
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClustering$1;->val$latLng:[D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/android/gallery3d/data/SmallItem;->lng:D

    .line 112
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClustering$1;->val$buf:[Lcom/android/gallery3d/data/SmallItem;

    aput-object v0, v1, p1

    goto :goto_0
.end method
