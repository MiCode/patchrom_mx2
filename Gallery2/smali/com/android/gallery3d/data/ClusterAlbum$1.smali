.class final Lcom/android/gallery3d/data/ClusterAlbum$1;
.super Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
.source "ClusterAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buf:[Lcom/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>([Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbum$1;->val$buf:[Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {p0}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum$1;->val$buf:[Lcom/android/gallery3d/data/MediaItem;

    aput-object p2, v0, p1

    .line 85
    return-void
.end method
